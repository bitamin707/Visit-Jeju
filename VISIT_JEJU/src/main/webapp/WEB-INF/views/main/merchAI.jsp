<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <!-- 버전에 따라서 예제가 동작하지 않는 경우가 있습니다. 아래 버전을 권장합니다. -->
    <script src="https://cdn.jsdelivr.net/npm/danfojs@0.1.2/dist/index.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@2.4.0/dist/tf.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs-vis"></script>
</head>
<body>
<script>
//dfd는 danfojs의 모듈의 이름이다. read_csv를 이용하여 해당 링크의 데이터를 읽어온다.
  //웹에서 제공하는 분꽃 데이터를 읽어오는 부분이다.  
dfd.read_csv('/ex/resources/csv/th04.csv').then(function(data){
        console.log(data);
        data.print(); //읽어온 데이터를 표형태로 출력한다.
	//종속변수 컬럼 선정
        독립변수 = data.loc({columns:['봄','여름','가을','겨울','성별','나이']});
        독립변수.print(); //선정한 독립변수 출력
//하나의 종속변수를 여러개로 분리 0과 1의 데이터를 넣는다.
        var encoder = new dfd.OneHotEncoder();
        종속변수 = encoder.fit(data['상품']);
        data['상품'].print();// 종속변인 품종 1개의 컬럼 출력
        종속변수.print();// 하나의 칼럼을 여러 개의 컬럼으로 01의 값을 넣어 분리한 컬럼 출력 
//입력층 4개의 컬럼 설정
var X = tf.input({ shape: [6]});
        	//딥러닝을 위한 히든 레이어
        var H = tf.layers.dense({ units: 4, activation:'relu'}).apply(X);

      	//출력층 3개의 컬럼 설정
        var Y = tf.layers.dense({ units: 4, activation:'softmax'}).apply(H);   

	//모델 생성
        model = tf.model({ inputs: X, outputs: Y });
        var compileParam = { optimizer: tf.train.adam(), loss: 'categoricalCrossentropy', metrics:['accuracy'] }
        model.compile(compileParam);   
//결과 출력    
       // tfvis.show.modelSummary({name:'요약', tab:'모델'}, model);
  // 3. 데이터로 모델을 학습시킵니다. 
  _history = [];
        var fitParam = { 
          epochs: 1000, //몇번 학습할 것인가
          callbacks:{
            onEpochEnd:
              function(epoch, logs){
                console.log('epoch', epoch, logs, 'RMSE=>', Math.sqrt(logs.loss));
                // _history.push(logs);
                // tfvis.show.history({name:'loss', tab:'역사'}, _history, ['loss']);
                // tfvis.show.history({name:'accuracy', tab:'역사'}, _history, ['acc']);
              }
          }
        }        
	//학습결과 확인
        model.fit(독립변수.tensor, 종속변수.tensor, fitParam).then(function (result) {
            // 4. 모델을 이용합니다. 
            // 4.1 기존의 데이터를 이용
            종속변수.print();
            var New상품 = [
              [1,0,0,0,1,25],
              [1,0,0,0,1,40],
              [1,0,0,0,0,25],
              [1,0,0,0,1,64],

              [0,1,0,0,0,36],
              [0,1,0,0,1,25],
              [0,1,0,0,1,40],
              [0,1,0,0,0,25],

              [0,0,1,0,1,64],
              [0,0,1,0,0,36],
              [0,0,1,0,1,25],
              [0,0,1,0,1,40],

              [0,0,0,1,0,25],
              [0,0,0,1,1,64],
              [0,0,0,1,0,36],
              [0,0,0,1,1,25]
              ]
            var New상품 = tf.tensor(New상품);
            var 예측한결과 = new dfd.DataFrame(model.predict(New상품));
            예측한결과.print();
        //     예측한결과 = new dfd.DataFrame(model.predict(독립변수.tensor));
        //     예측한결과.print();
            var result = 예측한결과.data;
            document.write("<table style='border:1px solid; width:1000px; height:1000px;'>");
            document.write("<tr><th>1번 상품</th><th>2번 상품</th><th>3번 상품</th><th>4번 상품</th></tr>")
            var max;

            for(i=0; i<result.length; i++){
              document.write("<tr>");
              for(j=0; j<result[0].length; j++){
                document.write("<td>"+result[i][j]+"</td>");
                if(result[i][1] > result[i][0]){
                  max = 1;
                }else {
                  max = 0;
                }
                if(result[i][max] > result[i][2]){
                  max = max;
                }else {
                  max = 2;
                }
                if(result[i][max] > result[i][3]){
                  max = max;
                }else {
                  max = 3;
                }
                
              }
              document.write("<td>");
              document.write(max+1+"번 상품을 추천합니다.");
              document.write("</td>");
              document.write("</tr>");
              document.write("\n")
            }
            document.write("</table>");
        });  
    })
</script>
</body>
</html>


