const userNameInput = document.getElementsByClassName("review_id")[0];
const reviewInput = document.getElementsByClassName("review_text")[0];
const submitBtn = document.getElementsByClassName("review_btn")[0];

function submit() {
    if(userNameInput.value == '' || reviewInput.value == '')
        alert("아이디 또는 내용을 입력해주세요.")
    else
        createText();
    
}

function createText() {
    const box = document.getElementsByClassName("review_div")[0];

    const comments = document.createElement("div");
    const userName = document.createElement("span");
    const comment = document.createElement("p");

    comments.classList.add("review_comments");
    userName.classList.add("review_userName");
    comment.classList.add("review_comment");

    userName.innerText = userNameInput.value;
    comment.innerText = reviewInput.value;

    comments.appendChild(userName);
    comments.appendChild(comment);

    box.appendChild(comments);
}