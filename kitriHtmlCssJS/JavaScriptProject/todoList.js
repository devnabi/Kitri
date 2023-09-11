// ➕✔️❌📌
// 추가버튼 +, 할일을 끝냈다면 체크(체크박스?), 삭제하려면 X, 위로 고정시키는 기능 압정
// 날짜 도장찍는 기능...

let input = document.querySelector("input");
let button = document.querySelector("button");
let article = document.querySelector("article");

// +버튼을 누르거나 Enter를 누르면 리스트 셍성
function addList(){
    button.addEventListener('click', (e) => {
        addTask();
    });
    
    input.addEventListener('keypress', (e) => {
        if (e.key === 'Enter') {
            addTask();
            changeButtonColor();
            resetButtonColor();
        }
    });
}

// 할 일 목록 추가
let newUl, newLi, newContent;
function addTask() {
    if (input.value) {
        newUl = document.createElement("ul");
        newLi = document.createElement("li");
        newLi.innerHTML = `${input.value} <button class="remove">❌</button>`;
        document.body.append(newLi);
        listStyle();
        input.value = ""; // 입력 필드 초기화
    } else {
        // 아무것도 입력하지 않으면 alert()
        alert("빈 목록은 추가할 수 없습니다.");
    }
}

// 버튼 밑으로 요소 옮기기, 스타일 적용
function listStyle(){
    article.append(newUl);
    newUl.append(newLi);
    newLi.style.backgroundColor = "pink";
    newLi.style.fontFamily = "'Diphylleia', serif";;
}

// Enter가 눌릴 때는 버튼 변경
function changeButtonColor() {
    button.style.backgroundColor = "black";
}

// Enter에서 손을 떼면 버튼 색 돌아오기 >> 정확히는 0.1초 뒤 초기화
function resetButtonColor(){
    setTimeout(() => {
        button.style.backgroundColor = "";
    }, 100);
}

// X버튼 누르면 요소 지우기 - 버블링
function removeList(){
    document.addEventListener('click', (e) => {
        if ( e.target.className == "remove" ) {
            let rLi = e.target.closest('li');
            rLi.remove();
        }
    });
}

/*
// 할 일을 끝냈다면 체크표시
function check(){
    document.addEventListener('dblclick', (e) => {
        if ( e.target.tagName == "LI" ) {
            e.target.style.textDecoration = "line-through";
        }
    });
}

// 체크된 것을 다시 더블클릭하면 밑줄사라지기
function removeCheck(){
    // 체크이벤트가 true라면 더블클릭했을 때 textDecoration을 초기화
    document.addEventListener('dblclick', (e) => {
        if( e.target.tagName == "LI" && e.target.style.textDecoration == "line-through" ){
            e.target.style.textDecoration = "";
        }
    });
}
*/

// 체크표시 답안
document.addEventListener('dblclick', (e) => {
    if (e.target.tagName === "LI") {
        if (e.target.style.textDecoration === "line-through") {
            e.target.style.textDecoration = "";
        } else {
            e.target.style.textDecoration = "line-through";
        }
    }
});

// 호출
addList();
removeList();
// check();
// removeCheck();
