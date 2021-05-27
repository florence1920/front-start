'Use strict';
//class: template
//object: instance of a class
//JavaScript classes
//-introduced in ES6
//-syntactical sugar over prototype-based inheritance

//1.Class declarations
class Person{
    //constructor
    constructor(name, age){
        //fields
        this.name = name;
        this.age = age; 
    }
    //methods
    speak(){
        console.log(`${this.name}:hello!`);
    }
}

const sh = new Person('sh',30);
console.log(sh.name);
console.log(sh.age);
sh.speak();
console.log('2222222222222222222222');

 //2. Getter and Setters

class User{
    constructor(firstName, lastName, age){
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
    }

    get age(){
        return this._age;
    }

    set age(value){
        this._age = value < 0 ? 0 : value;
    }
}

const user = new User('l','sh',-1);
console.log(user.age);

//3.Fields(public, private)
//Too soon!  