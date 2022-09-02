<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="/ex/resources/css/main/mainStyle.css">
<title>Insert title here</title>

</head>
<body>

<div style=" width:1300px; height:200px;"></div>
<div style=" width:1300px; height:500px; margin: 0 auto;">
	<div class="mainContainer">
    	<img src="/ex/resources/img/main/best.png" class="bestLogo">
    </div>
    <div class="mainContainerin1">
    	<a href="#">
    		<div style="width:512px;" class="mainContainerin1_1">
    			<img id="testPost1" src="">
    		</div>
    		<div class="mainContainerin1_2">
    			<h2><br></h2>
    		</div>
    	</a>   
    </div>
    
    <div class="mainContainerin2">
    	<div class="gallerylist1">
    		<a href="#" class="in2_a1">
    			<div class="screen">
    				<img id="testPost2" src="">
    			</div>
   			</a>
   		</div>
    	<div class="gallerylist2">
    		<a href="#" class="in2_a1">
                <div class="screen">
                    <img id="testPost3" src="">
                </div>
            </a>
        </div>
   </div>
</div>     

<script type="text/javascript">
	var i1 = i2 = i3 = 0;
	var springSum1 = summerSum1 = autumnSum1 = winterSum1 = maleSum1 = femaleSum1 = 0;
	var springSum2 = summerSum2 = autumnSum2 = winterSum2 = maleSum2 = femaleSum2 = 0;
	var springSum3 = summerSum3 = autumnSum3 = winterSum3 = maleSum3 = femaleSum3 = 0;
	var listTest
	var oneList = new Array();
	listTest = "<c:out value='${listTest}'/>";
	listTest = listTest.replace("[","");
	listTest = listTest.replace("]","");
	allList = listTest.split(',');
	
	for(var j=0; j<allList.length; j++){
		oneList[j] = allList[j].split('+')
		if(oneList[j][0] == 'test1' || oneList[j][0] == ' test1'){
			springSum1 = springSum1 + Number(oneList[j][1]);
			summerSum1 = summerSum1 + Number(oneList[j][2]);
			autumnSum1 = autumnSum1 + Number(oneList[j][3]);
			winterSum1 = winterSum1 + Number(oneList[j][4]);
			maleSum1 = maleSum1 + Number(oneList[j][5]);
			femaleSum1 = femaleSum1 + Number(oneList[j][6]);
			i1++;
		}else if(oneList[j][0] == 'test2' || oneList[j][0] == ' test2'){
			springSum2 = springSum2 + Number(oneList[j][1]);
			summerSum2 = summerSum2 + Number(oneList[j][2]);
			autumnSum2 = autumnSum2 + Number(oneList[j][3]);
			winterSum2 = winterSum2 + Number(oneList[j][4]);
			maleSum2 = maleSum2 + Number(oneList[j][5]);
			femaleSum2 = femaleSum2 + Number(oneList[j][6]);
			i2++;
		}else if(oneList[j][0] == 'test3' || oneList[j][0] == ' test3'){
			springSum3 = springSum3 + Number(oneList[j][1]);
			summerSum3 = summerSum3 + Number(oneList[j][2]);
			autumnSum3 = autumnSum3 + Number(oneList[j][3]);
			winterSum3 = winterSum3 + Number(oneList[j][4]);
			maleSum3 = maleSum3 + Number(oneList[j][5]);
			femaleSum3 = femaleSum3 + Number(oneList[j][6]);
			i3++;
		}
	}
	springSum1 = springSum1 / i1;
	summerSum1 = summerSum1 / i1;
	autumnSum1 = autumnSum1 / i1;
	winterSum1 = winterSum1 / i1;
	maleSum1 = maleSum1 / i1;
	femaleSum1 = femaleSum1 / i1;
	
	springSum2 = springSum2 / i2;
	summerSum2 = summerSum2 / i2;
	autumnSum2 = autumnSum2 / i2;
	winterSum2 = winterSum2 / i2;
	maleSum2 = maleSum2 / i2;
	femaleSum2 = femaleSum2 / i2;
	
	springSum3 = springSum3 / i3;
	summerSum3 = summerSum3 / i3;
	autumnSum3 = autumnSum3 / i3;
	winterSum3 = winterSum3 / i3;
	maleSum3 = maleSum3 / i3;
	femaleSum3 = femaleSum3 / i3;
	
	var springList = new Array();
	var summerList = new Array();
	var autumnList = new Array();
	var winterList = new Array();
	var maleList = new Array();
	var femaleList = new Array();

	springList.push(springSum1); springList.push(springSum2); springList.push(springSum3);
	summerList.push(summerSum1); summerList.push(summerSum2); summerList.push(summerSum3);
	autumnList.push(autumnSum1); autumnList.push(autumnSum2); autumnList.push(autumnSum3);
	winterList.push(winterSum1); winterList.push(winterSum2); winterList.push(winterSum3);
	maleList.push(maleSum1); maleList.push(maleSum2); maleList.push(maleSum2);
	femaleList.push(femaleSum1); femaleList.push(femaleSum2); femaleList.push(femaleSum3);

	springList.sort(); summerList.sort(); autumnList.sort(); 
	winterList.sort(); maleList.sort(); femaleList.sort();
	
	var date = 1;
	var sex = 1;
	
	var recommend1 = 100;
	var recommend2 = 100;
	var recommend3 = 100;
	var test1Score = test2Score = test3Score = 0;
	test1Score = test1Score + recommend1;
	test2Score = test2Score + recommend2;
	test3Score = test3Score + recommend3;
	
	var lastScore = 0;
	if(date = 1){
		if(springList[2]==springSum1){
			test1Score = test1Score + 50;
			test1Score = test1Score + springSum1;
			if(springList[1]==springSum2){
				test2Score = test2Score + 20;
				test2Score = test2Score + springSum2;
			}
			if(springList[1]==springSum3){
				test3Score = test3Score + 20;
				test3Score = test3Score + springSum3;
			}
		}
		if(springList[2]==springSum2){
			test2Score = test2Score + 50;
			test2Score = test2Score + springSum2;
			if(springList[1]==springSum1){
				test1Score = test1Score + 20;
				test1Score = test1Score + springSum1;
			}
			if(springList[1]==springSum3){
				test3Score = test3Score + 20;
				test3Score = test3Score + springSum3;
			}
		}
		if(springList[2]==springSum3){
			test3Score = test3Score + 50;
			test3Score = test3Score + springSum3;
			if(springList[1]==springSum1){
				test1Score = test1Score + 20;
				test1Score = test1Score + springSum1;
			}
			if(springList[1]==springSum2){
				test2Score = test2Score + 20;
				test2Score = test2Score + springSum2;
			}
		}
	}
	
	if(sex = 1){
		if(maleSum1 > femaleSum1){
			test1Score = test1Score + 100;
			test1Score = test1Score + (maleSum1 * 30);
			test1Score = test1Score + (femaleSum1 * 20);
		}else if(maleSum1 == femaleSum1){
			test1Score = test1Score + 20;
			test1Score = test1Score + (maleSum1 * 20);
			test1Score = test1Score + (femaleSum1 * 20);
		}
		if(maleSum2 > femaleSum2){
			test2Score = test2Score + 100;
			test2Score = test2Score + (maleSum2 * 30);
			test2Score = test2Score + (femaleSum2 * 20);
		}else if(maleSum1 == femaleSum1){
			test2Score = test2Score + 20;
			test2Score = test2Score + (maleSum2 * 20);
			test2Score = test2Score + (femaleSum2 * 20);
		}
		if(maleSum3 > femaleSum3){
			test3Score = test3Score + 100;
			test3Score = test3Score + (maleSum3 * 30);
			test3Score = test3Score + (femaleSum3 * 20);
		}else if(maleSum3 == femaleSum3){
			test3Score = test3Score + 20;
			test3Score = test3Score + (maleSum3 * 20);
			test3Score = test3Score + (femaleSum3 * 20);
		}
	}
	
	console.log(test1Score);
	console.log(test2Score);
	console.log(test3Score);
	
	var merch = new Array();
	merch.push(test2Score); merch.push(test1Score); merch.push(test3Score);
	merch.sort();
	
	var a,apic;
	var b,bpic;
	var c,cpic;
	
	if(merch[2] == test1Score){
		a = "상품1";
		apic = "/ex/resources/img/main/돈가스.jpg";
		if(merch[1] == test2Score){
			b = "상품2";
			bpic = "/ex/resources/img/main/삼겹살.jpg";
			c = "상품3";
			cpic = "/ex/resources/img/main/연어회.jpg";
		}else if(merch[1] == test3Score){
			c = "상품2";
			cpic = "/ex/resources/img/main/삼겹살.jpg";
			b = "상품3";
			bpic = "/ex/resources/img/main/연어회.jpg";
		}
	}else if(merch[2] == test2Score){
		a = "상품2";
		apic = "/ex/resources/img/main/삼겹살.jpg";
		if(merch[1] == test1Score){
			b = "상품1";
			bpic = "/ex/resources/img/main/돈가스.jpg";
			c = "상품3";
			cpic = "/ex/resources/img/main/연어회.jpg";
		}else if(merch[1] == test3Score){
			c = "상품1";
			cpic = "/ex/resources/img/main/돈가스.jpg";
			b = "상품3";
			bpic = "/ex/resources/img/main/연어회.jpg";
		}
	}else if(merch[2] == test3Score){
		a = "상품3";
		apic ="/ex/resources/img/main/연어회.jpg";
		if(merch[1] == test1Score){
			b = "상품1";
			bpic = "/ex/resources/img/main/돈가스.jpg";
			c = "상품2";
			cpic = "/ex/resources/img/main/삼겹살.jpg";
		}else if(merch[1] == test2Score){
			c = "상품1";
			cpic = "/ex/resources/img/main/돈가스.jpg";
			b = "상품2";
			bpic = "/ex/resources/img/main/삼겹살.jpg";
		}
	}
	var bestPost = a;
	var anotherPost1 = b;
	var anotherPost2 = c;
	
	document.getElementById("testPost1").src=apic;
	document.getElementById("testPost2").src=bpic;
	document.getElementById("testPost3").src=cpic;
	alert("현재 계절은 '봄', 성별은 '남성'이며 \n상품1의 평점은 "+recommend1+" 점\n"+
			"상품2의 평점은 "+recommend2+" 점\n"+"상품3의 평점은 "+recommend3+" 점입니다\n" + 
			"추천하는 상품은 "+a+"입니다");
	console.log(merch);
</script>

</body>
</html>