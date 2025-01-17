// // // function greet(firstName : string, lastName : string, age : number) {   

// // //     console.log("Hello " + firstName + " " + lastName + " " + age);
// // // }

// // // greet("John" , "Doe" , 25);
// // // //Expected 3 arguments, but got 1.ts(2554)


// // // let m: any = 12;
// // // m =" John";

// // // //when you dont give any type in ts its says 
// // // // Parameter 'firstName' implicitly has an 'any' type.
// // // // any -- means it can be any type of data type
// // // // say it explicitly that it is any but you can't say implicitly


// // // function sum(a : number, b : number) {
// // //     return a + b;
// // // }
// // // above is the example of type inference 
// // // type inference means it will automatically infer the type of the variable


// // // function sum(a : number, b : number) : number {
// // //     return a + b;
// // // }
// // // // we can even give expicit return type

// // // let result = sum(10, 20);
// // // console.log(result);

// // // function isLegal(age : number) {
// // //     return age >= 18;
// // // }

// // // // string, number , boolean 


// // // create a function that take abother function as input and runs after one sec 


// // // function run1(fn : () => void) {
// // //     setTimeout(()=>{
// // //         fn();
// // //     }, 1000);
// // // } // as function expect no argument and return nothing()

// // // run1(function(){
// // //     console.log("Hello");
// // // }); 


// // // ##################


// // function run1(fn : (a : number) => void) {

// //     a = a + 10;

// //     setTimeout(()=>{
// //         fn(a);
// //     }, 1000);
// // }

// // let a = 10;
// // run1(function(a){
// //     // console.log("Hello " + a);
// //     return a+10;
// // }); 

// // // read the above example its very interesting
// // /* 
// // n TypeScript, a void return type means the caller ignores any return value. 
// // Functions with a void type can still return a value, but it will be ignored, and no error occurs. 
// // This is intentional for JavaScript compatibility. If stricter behavior is desired, enable TypeScript options like strict or noImplicitReturns.
// // */


// // function isLegal(user : {
// //     name : string,
// //     lastname : string,
// //     age : number
// // }){

// //     return user.age > 18;

// // }

// // // problem here is if i use this user as argument anywhere then i have to redefine it again, just like i make greet function with user 

// // isLegal({
// //     name : "John",
// //     lastname : "Doe",
// //     age : 25
// // })


// interface User {
//     name : string,
//     lastname? : string,
//     age : number
// }


// function isLegal(user : User){

//     return user.age > 18;

// }


// isLegal({
//     name : "John",
//     lastname : "Doe",
//     age : 25
// })

// function greet(user : User){

//     console.log(`hello ${user.name} ${user.lastname} ${user.age}`);
    
// }

// // when benefit of using interface


// interface Person {
//     name: string;
//     age: number;
//     greet(phrase: string): void;
// }

// class Employee implements Person {
//     name: string;
//     age: number;

//     constructor(n: string, a: number) {
//         this.name = n;
//         this.age = a;
//     }

//     greet(phrase: string) {
//         console.log(`${phrase} ${this.name}`);
//     }
// }


// what is difference between interface and types 
// interfaces can be implemented as classes but types can't be implemented as classes
// interfaces can be extended but types can't be extended
// types let you do or and ands  but interfaces can't do that


//types
// Very similar to interfaces , types let you aggregate data together.

// type User = {
// 	firstName: string;
// 	lastName: string;
// 	age: number
// }

//But they let you do a few other things.
// Let’s say you want to print the id of a user, which can be a number or a string.
//You can not do this using interfaces

// type StringOrNumber = string | number;

// function printId(id: StringOrNumber) {
//   console.log(`ID: ${id}`);
// }

// printId(101); // ID: 101
// printId("202"); // ID: 202

// What if you want to create a type that has every property of multiple types/ interfaces
//You can not do this using interfaces

// type Employee = {
//     name: string;
//     startDate: Date;
//   };
  
//   type Manager = {
//     name: string;
//     department: string;
//   };
  
//   type TeamLead = Employee & Manager;
  
//   const teamLead: TeamLead = {
//     name: "harkirat",
//     startDate: new Date(),
//     department: "Software developer"
//   };
  


//array

//  you want to access arrays in typescript, it’s as simple as adding a [] annotation next to the type

// type array = number[];  // you can't do this in interface 


// function maxValue(arr: array ){
// function maxValue(arr: number[]) {

// function maxValue(arr: number[] ){
//     let max = 0;
//     for (let i = 0; i < arr.length; i++) {
//         if (arr[i] > max) {
//             max = arr[i]
//         }
//     }
//     return max;
// }

// console.log(maxValue([1, 2, 3]));


// Given a list of users, filter out the users that are legal (greater than 18 years of age)
// interface User {
// 	firstName: string;
// 	lastName: string;
// 	age: number;
// }

// function filteredUsers(users: User[]) {
//     return users.filter(x => x.age >= 18);
// }

// console.log(filteredUsers([{
//     firstName: "harkirat",
//     lastName: "Singh",
//     age: 21
// }, {
//     firstName: "Raman",
//     lastName: "Singh",
//     age: 16
// }, ]));



// a good code example 

// interface User { 
//     age : number;
//   }

// interface Manager extends User { 
//     name : number;
//   }

// interface Admin extends User { 
//      name : string ;
//   }

// use of extends above in interface


// -- null and undefined in typescript
// null and undefined are two different types in TypeScript.
// null is a value that represents no value.
// undefined is a value that represents the absence of a value.

/* 
enums -- enumerations 
is a feature that allow you to define a set of named constants
The concept behind an enumeration is to create a human-readable way to represent a set of constant values, 
which might otherwise be represented as numbers or strings.




*/

// enum Direction {
//     Up,
//     Down,
//     Left,
//     Right
// }

// /// use of this is if you put any other value instead of these 4 than ts will complain , tell them in compilation stage


// function doSomething(keyPressed : Direction) {
// 	// do something.
// }

// doSomething(Direction.Up); // OK
// doSomething("Down"); //Argument of type '"Down"' is not assignable to parameter of type 'Direction'.ts(
// console.log(Direction.Up); // 0
// console.log(Direction[0]); // Up


// enum Direction {
//         Up = "up",
//         Down = "down",
//         Left = "left",
//         Right  = "right"
//     }
    
//     /// use of this is if you put any other value instead of these 4 than ts will complain , tell them in compilation stage
    
    
//     function doSomething(keyPressed : Direction) {
//     	// do something.
//     }
    
//     doSomething(Direction.Up); // OK
//     doSomething("Down"); //Argument of type '"Down"' is not assignable to parameter of type 'Direction'.ts(
//     console.log(Direction.Up); // up
//     console.log(Direction[0]); // Element implicitly has an 'any' type because expression of type '0' can't be used to index type 'typeof Direction'.


// enum Direction {
//     Up = 1,
//     Down, // becomes 2 by default
//     Left, // becomes 3
//     Right // becomes 4
// }

// function doSomething(keyPressed: Direction) {
// 	// do something.
// }

// doSomething(Direction.Down) // 2


// 5. Common usecase in express
// enum ResponseStatus {
//     Success = 200,
//     NotFound = 404,
//     Error = 500
// }

// app.get("/', (req, res) => {
//     if (!req.query.userId) {
// 			res.status(ResponseStatus.Error).json({})
//     }
//     // and so on...
// 		res.status(ResponseStatus.Success).json({});
// })



// ----------------

//generics
/*
Generics are a language independent concept (exist in C++ as well)



1. Problem Statement
Let’s say you have a function that needs to return the first element of an array. Array can be of type either string or integer.
How would you solve this problem?
*/

// function getFirstElement(arr: (string | number)[]) {
//     return arr[0];
// }

// const el = getFirstElement([1, 2, 3]);

//What is the problem in this approach?
 
//1. Typescript isn’t able to infer the right type of the return type
// function getFirstElement(arr: (string | number)[]) {
//     return arr[0];
// }

// const el = getFirstElement(["harkiratSingh", "ramanSingh"]);
// console.log(el.toLowerCase()) // Property 'toLowerCase' does not exist on type 'string | number'.
// // Property 'toLowerCase' does not exist on type 'number'.t

//2.user can send different types of values in inputs, without any type errors
// can be solve by this string[] | number[], but There IS BETTER WAY >>> 
// function getFirstElement(arr: (string | number)[]) {
//     return arr[0];  
// }

// const el = getFirstElement([1, 2, '3']);


//Solution - Generics
// Generics enable you to create components that work with any data type
//  while still providing compile-time type safety.

// function identity<T>(arg: T): T {
//     return arg;
// }

// let output1 = identity<string>("myString");
// let output2 = identity<number>(100);


// function getFirstElement<T>(arr: T[]) {
//     return arr[0];
// }

// const el = getFirstElement(["harkiratSingh", "ramanSingh"]);
// console.log(el.toLowerCase())



// Constant exports
// math.ts
// export function add(x: number, y: number): number {
//     return x + y;
// }

// export function subtract(x: number, y: number): number {
//     return x - y;
// }

// main.ts
// import { add } from "./math"

// add(1, 2)

// Default exports
// calculator.ts 
// export default class Calculator {
//     add(x: number, y: number): number {
//         return x + y;
//     }
// }

// import Calculator from './Calculator';

// const calc = new Calculator();
// console.log(calc.add(10, 5));