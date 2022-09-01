<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script
	src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.0.0/dist/tf.min.js"></script>
<script>
	var grade = ""
	var rate = "";
	var thisGrade = []
	var thisRate = []
	var thisFor = 0

	var when_grade = [ [ 5 ], [ 5 ], [ 5 ], [ 5 ], [ 5 ], [ 4 ], [ 4 ], [ 4 ],
			[ 4 ], [ 4 ], [ 3 ], [ 3 ], [ 3 ], [ 3 ], [ 3 ], [ 2 ], [ 2 ],
			[ 2 ], [ 2 ], [ 2 ], [ 1 ], [ 1 ], [ 1 ], [ 1 ], [ 1 ] ]

	var when_rate = [ [ 5 ], [ 5 ], [ 5 ], [ 5 ], [ 5 ], [ 4 ], [ 4 ], [ 4 ],
			[ 4 ], [ 4 ], [ 3 ], [ 3 ], [ 3 ], [ 3 ], [ 3 ], [ 2 ], [ 2 ],
			[ 2 ], [ 2 ], [ 2 ], [ 1 ], [ 1 ], [ 1 ], [ 1 ], [ 1 ] ]

	window.onload = function() {

		let RateLength = document.getElementsByClassName('rate')
		console.log(RateLength)

		for (let j = 0; j < RateLength.length; j++) {
			thisGrade[j] = parseInt(document.getElementsByClassName('grade')[j].value);
			thisRate[j] = parseInt(document.getElementsByClassName('rate')[j].value);
		}

		for (let i = 0; i < RateLength.length; i++) {
			when_grade[i][0] = thisGrade[i]
			when_rate[i][0] = thisRate[i]
		}

		console.log(when_grade)
		console.log(when_rate)

	}

	function LetIt() {
		// 1. 과거의 데이터를 준비합니다. 
		var tf_grade = tf.tensor(when_grade);
		var tf_rate = tf.tensor(when_rate);

		// 2. 모델의 모양을 만듭니다. 
		var X = tf.input({
			shape : [ 1 ]
		});
		var Y = tf.layers.dense({
			units : 1
		}).apply(X);
		var model = tf.model({
			inputs : X,
			outputs : Y
		});
		var compileParam = {
			optimizer : tf.train.adam(),
			loss : tf.losses.meanSquaredError
		}
		model.compile(compileParam);

		// 3. 데이터로 모델을 학습시킵니다. 
		//var fitParam = {epochs: 1500}	
		var fitParam = {
			epochs : 2000,
			callbacks : {
				onEpochEnd : function(epoch, logs) {
					console.log('epoch', epoch, logs);
				}
			}
		}

		model
				.fit(tf_grade, tf_rate, fitParam)
				.then(
						function(result) {

							// 4. 모델을 이용합니다. 
							// 4.1 기존의 데이터를 이용
							var 예측한결과 = model.predict(tf_rate);
							예측한결과.print();

							console.log("사용자입력원인값 시작")

							//document.getElementsByClassName('what_product')[0].value
							// 4.2 새로운 데이터를 이용
							console.log(when_grade)
							var 사용자입력값 = document
									.getElementById('what_product').value;
							사용자입력값 = parseInt(사용자입력값);
							var 다음주온도 = new Array();

							var tmpArr = new Array();
							console.log("사용자입력값:" + 사용자입력값)
							tmpArr.push(사용자입력값);
							console.log(tmpArr)
							다음주온도.push(tmpArr);

							var 다음주원인 = tf.tensor(다음주온도);
							var 다음주결과 = model.predict(다음주원인);
							다음주결과.print();

							document.getElementsByClassName('this_product')[0].value = Math
									.round(다음주결과.arraySync()[0][0] * 10);

						});
	}
</script>


<style>
td {
	text-align: center;
}
</style>


</head>
<body>

	<table border=1>
		<tr>
			<th>상품의 평점</th>
			<th>한달 평균 판매량</th>
		</tr>

		<c:forEach items="${list }" var="boardDto">
			<input type=text class=grade value="${boardDto.grade }" />
			<input type=text class=rate value="${boardDto.avg_sold_out }" />
			</tr>
		</c:forEach>
		<tr>
			<td>
				<p>평점 5점:</p>
				<p>평점 4점:</p>
				<p>평점 3점:</p>
				<p>평점 2점:</p>
				<p>평점 1점:</p>
			</td>
			<td>
				<p>50개</p>
				<p>40개</p>
				<p>30개</p>
				<p>20개</p>
				<p>10개</p>
			</td>
		</tr>

		<tr>
			<th>예상해 볼 제품 평점</th>
			<th>예상 판매량</th>
		</tr>

		<tr>
			<td><input type=text id=what_product value="" placeholder="작성"
				style="width: 100px;">
				<button onclick="LetIt()">클릭</button></td>
			<td>수량 <input type=text class=this_product value="" readonly
				style="width: 80px;"> 개
			</td>
		</tr>

	</table>

</body>
</html>