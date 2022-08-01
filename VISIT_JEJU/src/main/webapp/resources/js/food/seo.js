
const seolfood = [
    {id: 1,
        name: '최고집',
        type: '서귀포시',
        value:"애월 에서 유명한 최고집은 1등급 이상의 제주 백돼지를 맛볼 수 있는 곳으로, 항정살과 오겹살에만 집중하여 최고의 맛을 선보인다. 오후 6시경부터는 대기자가 발생할 수 있으니 그 전에 방문하거나 예약하는 것이 좋은데, 예약은 7시까지만 받는다. (8시 방문건은 예약 불가)",
        url: '/ex/resources/img/food/최고집.jpg',
        address:'제주특별자치도 서귀포시 김정문화로 71'
    },
    {id: 2,
        name: '테라로사',
        type: '서귀포시',
        value:"품격있는 커피와 빵으로 유명한 테라로사의 서귀포 지점.유명한 관광지인 쇠소깍 바로 옆에 위치하고 있다.카페가 있을 것 같지 않은 곳에 자리하고 있다는 점도 신선하지만,채광이 좋고 탁 트인 공간의 인테리어가 주는 여유로움과 편안함에 많은 여행객들이 찾는다",
        url: '/ex/resources/img/food/서귀)테라로사.jpg',
        address:'제주특별자치도 서귀포시 칠십리로658번길 27-16'
    },
    {id: 3,
        name: '국수바다',
        type: '서귀포시',
        value:"볼거리가 많은 서귀포 중문에는 고기국수로 유명한 국수바다가 있다. 유명 맛집 프로그램에 나온 후 많은 사람들이 찾는 곳으로 넓은 주차장과 테이블이 있어 대기시간이 그리 길지 않다. 이곳의 고기국수는 직접 반죽하고 뽑아낸 생면과 12시간 이상 푹 고아 낸 육수, 제주산 최고급 오겹살이 푸짐하게 들어가 있어 대식가도 배불리 먹을 수 있다. 또한 매콤하고 새콤한 소스가 일품인 비빔국수도 인기있는 메뉴로, 고기국수의 국물과 같이 먹으면 더욱 감칠맛이 난다. ",
        url: '/ex/resources/img/food/서귀)국수바다.jpg',
        address:'제주특별자치도 서귀포시 일주서로 982'
    },
    
    
];
const seobtn=document.querySelector(".seobtn");
function showImage(){
    list.innerHTML='';
    const res = seolfood.forEach(seolfood =>{
        const li=document.createElement('li');  
        li.innerHTML=`
        <img src='${seolfood.url}' alt=${seolfood.value}>
        <p>가게이름: ${seolfood.name}</p>
        <p>지역: ${seolfood.type}</p>
        <p>설명: ${seolfood.value}</p>
        <p>주소: ${seolfood.address}</p>

        `
        list.appendChild(li);
         
    })
}
seobtn.addEventListener('click',showImage);

