//1.String concatenation
console.log(`string literals:1+2=${1+2}`);


//Conditional operator
const name = 'h';
if(name === 'sh'){
    alert('yes');
}else{
    alert('no');
}

//Ternary oprator
console.log(name==='hs'?'y':'n');

//Switch
const browser ='chg';
switch(browser){
    case 'IE':
        console.log('LIE');
        break;
    case 'ch':
    case 'fi':
        console.log('ch');
        break;
    default:
        console.log('de')
        break;

}

//11.Loops
for(let i=0; i<11; i++){
    if(i%2===0){
        console.log(i);
    }
}

for(let i=0; i<11; i++){
    if(i>=8){
        break;
    }
    console.log(`q2.${i}`);
}