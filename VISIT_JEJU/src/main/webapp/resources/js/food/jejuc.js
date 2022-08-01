const jejucfood = [
    {id: 1,
        name: '제주 김만복(김밥집)',
        type: '제주시내',
        value:"제주공항과 가까운 전복김밥이 유명한 분식집이다. 본점은 포장만 가능하며 본점에서 멀지 않은 곳에 앉아서 즐길 수 있는 라운지점이 있다. 강정동에 오픈하여 서귀포에서도 방문할 수 있다. 전복김밥은 전복내장을 잘 섞은 밥과 계란지단이 만나 고소하고 달콤한 맛이 특징이다. 전복김밥 이외에도 전복이 통째로 올라간 통전복주먹밥과 미역국 등이 있으며 새콤달콤하게 무쳐낸 오징어 무침과 함께 먹으면 잘 어울린다. 비교적 착한 가격으로 전복김밥을 먹을 수 있다는 점과 전복내장이 주는 고소한 맛의 조화로 많은 관광객의 사랑을 받고 있다.",
        url: '/ex/resources/img/food/제주시내)제주김만복.jpg',
        address:'제주특별자치도 제주시 오라로 41'
    },
    {id: 2,
        name: '올래국수 ',
        type: '제주시내',
        value:"이 집의 메뉴는 단 하나. 두툼한 고기와 도톰한 중면이 구수한 사골국물과 어우러져 고소하고 구수한 맛을 자랑하는 고기 국수다. 맛은 한국의 설렁탕보다는 진하고 일본의 돈코츠 라멘보다는담백하다. 고소하고 깊은 맛이 입소문을 타서 tvN 수요미식회 등 각종 방송에 출연하기도 하였다. (21회 2015.06.17) ",
        url: '/ex/resources/img/food/제주시내)올래국수.jpg',
        address:'제주특별자치도 제주시 귀아랑길 24 (연동)'
    },
    {id: 2,
        name: '명당약과  ',
        type: '제주시내',
        value:"명당양과는 1980년부터 시작한 제주 토종 브랜드이며 2대째 대를 이어 운영을 하고 있다.유기농 밀가루와 천연발효종을 이용한 빵과 국내산 쌀가루로 만든 쌀빵부터 직접 끓인 팥을 사용하여 팥빵과빙수에 사용하고 있으며,그 외에 제주산 마늘을 사용한 마늘 바게트 등 오래된 빵부터 트랜디한 빵과 디저트까지 다양한 제품이 준비되어 있다. ",
        url: '/ex/resources/img/food/제주도시)명당약과.jpg',
        address:'제주시 원노형로 83'
    },


];
const jejucbtn=document.querySelector(".jejucbtn");
function showImage(){
    list.innerHTML='';
    const res = jejucfood.forEach(jejucfood =>{
        const li=document.createElement('li');  
        li.innerHTML=`
        <img src='${jejucfood.url}' alt=${jejucfood.value}>
        <p>가게이름: ${jejucfood.name}</p>
        <p>지역: ${jejucfood.type}</p>
        <p>설명: ${jejucfood.value}</p>
        <p>주소: ${jejucfood.address}</p>
        `
        list.appendChild(li);
         
    })
}
jejucbtn.addEventListener('click',showImage);

