
const awolfood = [
    {id: 1,
        name: '리치망고',
        type: '애월',
        value:"제주에서 런칭한 리치망고는 프렌차이즈로 현재 우도, 모슬포 성산 등 제주전역으로 확장하였다.",
        url: '/ex/resources/img/food/리치망고.jpg',
        address:'제주특별자치도 제주시 애월읍 애월해안로 272'
    },
    {id: 2,
        name: '봄날카페',
        type: '애월',
        value:"드라마의 주인공이 일하던 카페라서 유명해졌다.해변을 바라보며 차 한잔의 여유를 즐기기에 좋으며 제주 돌담의 정취를 느낄 수 있다.",
        url: '/ex/resources/img/food/애월)봄날.jpg',
        address:'제주특별자치도 제주시 애월읍 애월로1길 25'
    },
    {id: 3,
        name: '바다속 고등어쌈밥',
        type: '애월',
        value:"공항에서 애월 해안도로로 15분쯤 달리다 보면 도로변에 위치한 바다속고등어쌈밥을 발견할 수 있다.이곳은 고등어 요리 전문점이지만 갈치조림이나 옥돔구이, 해물뚝배기, 한치물회 등 여러 해산물 요리를 같이 판매하고 있다.대표 메뉴 쌈밥은 묵은지를 넣은 고등어조림으로, 고등어와 묵은지를 채소에 싸먹는 요리이다.",
        url: '/ex/resources/img/food/바다속 고등어쌈밥.jpg',
        address:'제주특별자치도 제주시 애월읍 애월해안로 7089'
    }
    
];



const awolbtn=document.querySelector(".awolbtn");
function showImage(){
    list.innerHTML='';
    const res = awolfood.forEach(awolfood =>{
        const li=document.createElement('li');  
        li.innerHTML=`
        <img src='${awolfood.url}' alt=${awolfood.value}>
        <p>가게이름: ${awolfood.name}</p>
        <p>지역: ${awolfood.type}</p>
        <p>설명: ${awolfood.value}</p>
        <p>주소: ${awolfood.address}</p>
        `
        list.appendChild(li);
         
    })
}
awolbtn.addEventListener('click',showImage);

