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
		// 1. ������ �����͸� �غ��մϴ�. 
		var tf_grade = tf.tensor(when_grade);
		var tf_rate = tf.tensor(when_rate);

		// 2. ���� ����� ����ϴ�. 
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

		// 3. �����ͷ� ���� �н���ŵ�ϴ�. 
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

							// 4. ���� �̿��մϴ�. 
							// 4.1 ������ �����͸� �̿�
							var �����Ѱ�� = model.predict(tf_rate);
							�����Ѱ��.print();

							console.log("������Է¿��ΰ� ����")

							//document.getElementsByClassName('what_product')[0].value
							// 4.2 ���ο� �����͸� �̿�
							console.log(when_grade)
							var ������Է°� = document
									.getElementById('what_product').value;
							������Է°� = parseInt(������Է°�);
							var �����ֿµ� = new Array();

							var tmpArr = new Array();
							console.log("������Է°�:" + ������Է°�)
							tmpArr.push(������Է°�);
							console.log(tmpArr)
							�����ֿµ�.push(tmpArr);

							var �����ֿ��� = tf.tensor(�����ֿµ�);
							var �����ְ�� = model.predict(�����ֿ���);
							�����ְ��.print();

							document.getElementsByClassName('this_product')[0].value = Math
									.round(�����ְ��.arraySync()[0][0] * 10);

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
			<th>��ǰ�� ����</th>
			<th>�Ѵ� ��� �Ǹŷ�</th>
		</tr>

		<c:forEach items="${list }" var="boardDto">
			<input type=text class=grade value="${boardDto.grade }" />
			<input type=text class=rate value="${boardDto.avg_sold_out }" />
			</tr>
		</c:forEach>
		<tr>
			<td>
				<p>���� 5��:</p>
				<p>���� 4��:</p>
				<p>���� 3��:</p>
				<p>���� 2��:</p>
				<p>���� 1��:</p>
			</td>
			<td>
				<p>50��</p>
				<p>40��</p>
				<p>30��</p>
				<p>20��</p>
				<p>10��</p>
			</td>
		</tr>

		<tr>
			<th>������ �� ��ǰ ����</th>
			<th>���� �Ǹŷ�</th>
		</tr>

		<tr>
			<td><input type=text id=what_product value="" placeholder="�ۼ�"
				style="width: 100px;">
				<button onclick="LetIt()">Ŭ��</button></td>
			<td>���� <input type=text class=this_product value="" readonly
				style="width: 80px;"> ��
			</td>
		</tr>

	</table>

</body>
</html>