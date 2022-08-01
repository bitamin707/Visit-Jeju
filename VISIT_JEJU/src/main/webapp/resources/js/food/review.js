const todoForm=document.getElementById("todo-form");
const todoInput=document.querySelector("#todo-form input")
const todoList=document.getElementById("todo-list");
let todos=[];
const todosKey="todos"

function todoSave(){
    localStorage.setItem(todosKey,JSON.stringify(todos));//JSON.stringify는 문자로 바꿔준다
}1
function todoDelete(event){
    const li= event.target.parentElement;
    todos=todos.filter((toDo) => toDo.id !== parseInt(li.id));
    li.remove();
    todoSave();
}

function todoPrint(newToDo){
    const li=document.createElement('li');
    li.id = newToDo.id;
    const span= document.createElement('span');
    span.innerText=newToDo.text;
    const button=document.createElement("button");
    button.innerText="❌";
    li.appendChild(span); 
    li.appendChild(button);
    todoList.appendChild(li);
    button.addEventListener('click',todoDelete);
}
function hadnleToDoSubmt(event){
    event.preventDefault();
    const newToDo= todoInput.value;
    todoInput.value="";
    const newTodoObject={
        text:newToDo,
        id:Date.now(),
    };
    todos.push(newTodoObject);
    todoPrint(newTodoObject);
    todoSave();
}
todoForm.addEventListener("submit",hadnleToDoSubmt);

const svaedTodos= localStorage.getItem(todosKey); 
if(svaedTodos !== null){
    const parseToDos=JSON.parse(svaedTodos);//배열로 가져온다
    todos=parseToDos;
    parseToDos.forEach(todoPrint);
    // parseToDos.array.forEach(itme) => {
    //     console.log("sayhello",item);
    // });
}

