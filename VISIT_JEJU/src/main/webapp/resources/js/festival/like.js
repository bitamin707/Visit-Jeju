let state = 0;
const like_default = document.getElementById('icon_like');
const like_click = document.getElementById('icon_like_click');

function ClickLike() {
    if(state == 0) {
        like_default.style.display = 'none';
        like_click.style.display = 'block';
        state = 1;
    }
    else {
        like_default.style.display = 'block';
        like_click.style.display = 'none';
        state = 0;
    }
}