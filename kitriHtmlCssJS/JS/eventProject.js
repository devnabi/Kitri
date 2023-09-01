 /* 요구사항 :
 “간단한 숫자 추측 게임을 만들어 보시기 바랍니다.
 1에서 100 사이의 임의의 숫자를 선택한 다음 플레이어에게 10턴 안에 숫자를 추측하도록 요청해야 합니다.
 각 턴이 끝나면 플레이어에게 자신이 옳은지 그른지, 틀리면 추측이 너무 낮은지 너무 높은지 알려주어야 합니다.
 또한 플레이어에게 이전에 추측한 숫자를 알려주어야 합니다. 플레이어가 올바르게 추측하거나 차례가 끝나면 게임이 종료됩니다.
 게임이 끝나면 플레이어에게 다시 플레이를 시작할 수 있는 옵션이 제공되어야 합니다.”*/

/*내가 생각한 것 :
입력값이 더 작거나 크면 각각 메시지 띄어주기
몇을 썼는지 누적해서 보여주기 Previous guesses: 50 60 57 ...
틀리면 "Wrong!" / 맞으면 "Congratulations! You got it right!"
작으면 "Last guess was too low!" / 크면 "Last guess was too high!
10턴을 초과하면 실패 메시지를 띄어주기 "!!!GAME OVER!!!" >> 빨강색 배경
추측이 틀렸으면 빨강색으로 표시, 맞히면 초록색으로 표시
초록색 표시와 함께 버튼을 비활성화
게임이 끝났다면 start new game버튼 생성하여 게임을 시작하는 이벤트 만들기*/

// 랜덤숫자
let randomNum = Math.floor(Math.random() * 100) + 1;

let number = document.querySelector(".guessField"); // 입력 숫자
let submit = document.querySelector(".guessSubmit"); // 추측 버튼

// 아래 문구자리
let guesses = document.querySelector(".guesses"); // Previous guesses:
let lastResult = document.querySelector(".lastResult"); // 참인지 거짓인지 / 색깔로도 표현
let lowOrHi = document.querySelector(".lowOrHi"); // 정답이 큰 숫자인지 작은 숫자인지

// 스타일 추가
lastResult.classList.add("style");

// submit을 클릭했을 때 이벤트 발생
submit.addEventListener( "click", (event) => { guessNum() } ); // 이벤트

let turn = 0;

function guessNum(){

    if (turn++ <= 10) {
        guessList(number.value);

        // 정답인지 아닌지
        if (number.value != randomNum) {
            lastResult.style.display = 'block'
            lastResult.innerText = "Wrong!";
            lastResult.style.background = "red";
        } else {
            lastResult.innerText = "Congratulations! You got it right!";
            lastResult.style.background = "green";
            newGame();
            disabled();
            return;
        }

    // 숫자 추측이 어떤지
    if (number.value > randomNum) {
        lowOrHi.innerText = "Last guess was too high!";
    } else if (number.value < randomNum) {
        lowOrHi.innerText = "Last guess was too low!";
    }
} // if의 끝

    if(turn > 10){
        gameOver();
        disabled();
        newGame();
    }
}
            

// 입력값을 보여주기
// 새로운 추측을 할 때마다 배열에 저장하기
let arr = [];
function guessList(num){
// 기본 값이 0이 되도록
if(num == ""){
    num = 0;
}
arr.push(num);
guesses.innerHTML = `Previous guesses: ${arr.join(" ")}`;
}


// 기회 10번을 초과하거나 게임을 성공해서 끝났다면
function gameOver(){
    lastResult.innerText = "!!!GAME OVER!!!";
    lastResult.style.background = "red";
}


// 게임이 끝나면 버튼 비활성화
function disabled(){
    number.disabled = true;
    submit.disabled = true;
}


// 게임이 끝이라면 새로운 시작 버튼
function newGame(){
    lowOrHi.innerHTML = `<input type="button" value="start new game">`;
}
        

// 새로운 게임 이벤트
lowOrHi.addEventListener('click', (event) => {
    if (event.target.type == 'button') {
        // 초기화
        randomNum = Math.floor(Math.random() * 100) + 1;
        turn = 0;
        arr = [];

        number.value = null;
        number.disabled = false;

        guesses.innerHTML = "";
        lastResult.innerHTML = "";
        lastResult.style.display = 'none';
        lowOrHi.innerHTML = "";

        // 버튼 활성화
        submit.disabled = false;

        // 빠른 방법
        // location.reload();
    }
});
