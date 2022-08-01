
const food = [

    {id: 1,
        name: '하하호호집',
        type: '우도',
        value:"하하호호는 하우목동항 북측에 위치한 간이음식점이다.두툼한 흑돼지 패티위에 우도 땅콩이나 마늘칩이 뿌린 수제버거가 대표적인 메뉴로 성인남자가 배부를 정도인 1.5인분의 양이다. 야채 등의 재료를 아낌없이 넣어 양이 푸짐하여 많은 여행객의 호감을 얻고 있다.",
        url: '/ex/resources/img/food/우도)하하호호.jpg',
        address: '제주특별자치도 제주시 우도면 우도해안길 532'
    },
    {id: 2,
        name: '섬소나이',
        type: '우도',
        value:"우도에 위치한 섬소나이는 짬뽕과 피자를 즐길 수 있는 작고 예쁜 식당이다. 메뉴는 간단하다. 짬뽕 세 종류와 피자 두 종류 총 다섯가지다. 이 집 짬뽕 맛의 비결은 한약재 등 10가지 이상의 재료를 사용하여 12시간 동안 푹 끓여낸 육수에서 나온다. 톳을 사용해 면을 만들고 모자반(몸)을 넣어 우도의 맛을 살렸다. 면은 매일 직접 뽑아내고 당일생산 당일소모를 원칙으로 삼는다. 신선하게 내기 위해 주문을 받은 후 한 그릇씩 조리하니 정성이 이만저만이 아니다. 주문 즉시 한 그릇씩 조리를 하기 때문에 대기시간이 좀 있을 수도 있다.",
        url: '/ex/resources/img/food/우도)섬소나이.jpg',
        address: '제주특별자치도 제주시 우도면 우도해안길 814'
    },
    {id: 3,
        name: '블랑로쉐',
        type: '우도',
        value:"우도 하고수동 해변가에 위치한 카페다. 안에서 파랗게 빛나는 하고수동 해변을 볼 수 있다.날이 좋으면 전면이 창으로된 한쪽 벽을 오픈해 시원한 바닷바람을 만끽하며 휴식을 취할 수 있다.상큼한 에이드와 여러 음료를 파는데 그중에서도 우도땅콩으로 만든 빙수와 크림라떼가 대표메뉴다.땅콩치즈케이크와 제주말차티라미슈 등 지역의 특산품을 녹여낸 다양한 메뉴도 만나볼 수 있다.화이트 톤의 실내와 테라스 등의 전경이 예뻐 사진찍기 좋은 곳으로도 알려졌다.",
        url: '/ex/resources/img/food/우도)블랑로쉐.jpg',
        address: '제주특별자치도 제주시 우도면 우도해안길 783'
    }
];


const wodobtn=document.querySelector(".wodobtn");
const list=document.querySelector('.container .list');


function showImage(){
    list.innerHTML='';
    const res = food.forEach(food =>{
        const li=document.createElement('li'); 
        li.innerHTML=`
        <img src='${food.url}' alt=${food.value}>
        <p>가게이름: ${food.name}</p>
        <p>지역: ${food.type}</p>
        <p>설명: ${food.value}</p>
        <p>주소: ${food.address}</p>
        `
        list.appendChild(li);
       
         
    })
}
wodobtn.addEventListener('click',showImage);


const mango=document.querySelector(".mango");
let countMango=0;
function Count1(){
    ++countMango;
    mango.innerText=countMango;
}



