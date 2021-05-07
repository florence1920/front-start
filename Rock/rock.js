const game = ()=>{
    let pScore = 0;
    let cScore = 0;

    //start the game
    const startGame = () =>{
        const playBtn = document.querySelector('.intro button');
        const introScreen = document.querySelector('.intro');
        const match = document.querySelector('.match');
        const hands = document.querySelectorAll('.hands img');

        hands.forEach(hand =>{
            hand.addEventListener('animationend', function(){
                this.style.animation='';
            });
        })

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
        const computerOptions = ['rock','rock','paper','scissors','scissors','scissors'];
        options.forEach(option=>{
            option.addEventListener("click",function(){
                //computer choice
                const computerNumber = Math.floor(Math.random() * 6);
                const computerChoice = computerOptions[computerNumber];
                console.log(computerChoice);

                setTimeout(()=>{
                    //compareHands 소환
                    compareHands(this.textContent, computerChoice);
                    //update Images
                    playerHand.src=`${this.textContent}.png`;
                    computerHand.src=`${computerChoice}.png`;
                },900);

                //Animation
                playerHand.style.animation="shakePlayer 1s ease";
                computerHand.style.animation="shakeComputer 1s ease";
            });
        });
    };

    const updateScore = () => {
        const playerScore = document.querySelector('.playerScore p');
        const computerScore = document.querySelector('.computerScore p');
        playerScore.textContent = pScore;
        computerScore.textContent = cScore;
        //캐릭터 움직이기
        const updateChar = (pScore,cScore) => {
            //player Char
            if(pScore>=7){
                pScore=7;
            }else if(pScore==null){
                pScore=0;
            }
            let pNow = document.querySelector(`.c${pScore} .playerChar`);
            let pRest = document.querySelector('.pNow');
            let pBRest = document.querySelector('.pColor');
            let pBlock = document.querySelector(`.b${pScore}`);
            pRest.classList.remove('pNow');
            pNow.classList.add('pNow');
            pBRest.classList.remove('pColor');
            pBlock.classList.add('pColor');
            
            //Computer Char
            if(cScore>=7){
                cScore=7;
            }else if(cScore==null){
                cScore=0;
            }
            let cNow = document.querySelector(`.c${cScore} .computerChar`);
            let cRest = document.querySelector('.cNow');
            let cBlock = document.querySelector(`.b${cScore}`);
            let cBRest = document.querySelector('.cColor');
            cRest.classList.remove('cNow');
            cNow.classList.add('cNow');
            cBRest.classList.remove('cColor');
            cBlock.classList.add('cColor');
            if(pScore===cScore){
                let nColor = document.querySelector(`.b${cScore}`);
                nColor.classList.add('nColor');
            }
            if(pScore>=7||cScore>=7){
                console.log('end');
            }
        }
        updateChar(pScore,cScore);
    }

    const compareHands = (playerChoice, computerChoice) => {
        const winner = document.querySelector('.winner');
        //Checking for a tie
        if(playerChoice === computerChoice){
            winner.textContent = 'Tie';
            return;
        }
        //Checking for a Rock
        if(playerChoice === 'rock'){
            if(computerChoice ==='scissors'){
                winner.textContent = 'Player wins'
                pScore++;
                updateScore();
                return;
            }else{
                winner.textContent = 'Computer wins'
                cScore++;
                cScore++;
                cScore++;
                updateScore();
                return;
            }
        }
        updateScore
        //checking for a paper
        if(playerChoice === 'paper'){
            if(computerChoice ==='scissors'){
                winner.textContent = 'Computer wins'
                cScore++;
                cScore++;
                updateScore();
                return;
            }else{
                winner.textContent = 'Player wins'
                pScore++;
                pScore++;
                pScore++;
                updateScore();
                return;
            }
        }
        //checking for a paper
        if(playerChoice === 'scissors'){
            if(computerChoice ==='rock'){
                winner.textContent = 'Computer wins'
                cScore++;
                updateScore();
                return;
            }else{
                winner.textContent = 'Player wins'
                pScore++;
                pScore++;
                updateScore();
                return;
            }
        }
    }

    //함수 호출
    startGame();
    playMatch();
};

//게임 시작
game();