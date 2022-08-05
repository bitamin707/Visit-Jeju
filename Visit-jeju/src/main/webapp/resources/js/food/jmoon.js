
const jmmonfood = [
    {id: 1,
        name: '고집돌우럭',
        type: '중문',
        value:"고집돌우럭은 제주공항점과 중문점이 있는데 중문점은 더욱 깔끔하고 세련된 인테리어로 손님을 맞으며 중문관광단지 입구에 위치하여 가까운 관광지 방문시 이동이 편리하다. 고집돌우럭은 주낙배를 직접 운영하여 싱싱한 돌우럭을 공급하며 위미리 어촌계와 독점계약을 맺어 가장 신선한 해산물을 공급 받고 있다.아침식사가 가능해서 숙소가 근처라면 여행길에 오르기 전 이곳에서 든든하게 속부터 채우는 것도 나쁘지 않다.",
        url: '/ex/resources/img/food/중문)고집돌우럭.jpg',
        address:'제주특별자치도 서귀포시 일주서로 879'
    },
    {id: 2,
        name: '수두리보말칼국수',
        type: '중문',
        value:"직접 반죽한 톳면에 매일 아침마다 준비하는 자연산 보말이 100% 들어간 육수만 사용한다. 반찬 또한 직접 손질하고 만들어 제공받을 수 있다. 톳으로 만든 쫄깃쫄깃한 면과 담백하지만 시원한 국물맛이 일품인 수두리보말칼국수(톳보말칼국수), 톳성게칼국수, 성게전복죽이 대표메뉴이다.  8시부터 영업을 하기 때문에 아침식사하기 좋다.",
        url: '/ex/resources/img/food/중문)수두리보말칼국수.jpg',
        address:'제주특별자치도 서귀포시 천제연로 192'
    },
    {id: 3,
        name: '옐로우카페',
        type: '중문',
        value:"장수 제품의 이미지를 벗고 새로운 변신으로 우리 곁에 친근하게 다가온 옐로우카페.입구에 도착하면 바나나맛우유의 대형 조형물이 우리를 반겨주고 있으며카페에 들어서면 온통 노란색으로 꾸며져 있는 인테리어가 눈길을 끈다.               2030 세대는 물론 어린아이들의 시선까지 한 몸에 받고 있는 옐로우카페.",
        url: '/ex/resources/img/food/중문)옐로우카페.jpg',
        address:'제주 서귀포시 중문관광로 90'
    },
    
];
const jmoonbtn=document.querySelector(".jmoonbtn");
function showImage(){
    list.innerHTML='';
    const res = jmmonfood.forEach(jmmonfood =>{
        const li=document.createElement('li');  
        li.innerHTML=`
        <img src='${jmmonfood.url}' alt=${jmmonfood.value}>
        <p>가게이름: ${jmmonfood.name}</p>
        <p>지역: ${jmmonfood.type}</p>
        <p>설명: ${jmmonfood.value}</p>
        <p>주소: ${jmmonfood.address}</p>
        `
        list.appendChild(li);
         
    })
}
jmoonbtn.addEventListener('click',showImage);

