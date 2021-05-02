const game = ()=>{
    let pScore = 0;
    let cScore = 0;

    //start the game
    const startGame = () =>{
        const playBtn = document.querySelector('.intro button');
        const introScreen = document.querySelector('.intro');
        const match = document.querySelector('.match');

        playBtn.addEventListener('click', () => {
            introScreen.classList.add('fadeOut');
            match.classList.add('fadeIn');
        });
    };

    //play Match
    const playMatch = () =>{
        const options = document.querySelectorAll('.options button');
        const playerHand = document.querySelector('.playerHand');
        const computerHand = document.querySelector('.computerHand');
        //computer options
        const computerOptions = ['rock', 'paper', 'scissors'];
        options.forEach(option=>{
            option.addEventListener("click",function(){
            //computer choice
                const computerNumber = Math.floor(Math.random() * 3);
                const computerChoise = computerOptions[computerNumber];
                
            });
        });
    };

    //함수 호출
    startGame();
    playMatch();
};

//게임 시작
game();