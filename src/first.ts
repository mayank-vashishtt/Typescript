// function greet(firstName : string, lastName : string, age : number) {   

//     console.log("Hello " + firstName + " " + lastName + " " + age);
// }

// greet("John" , "Doe" , 25);
// //Expected 3 arguments, but got 1.ts(2554)


// let m: any = 12;
// m =" John";

// //when you dont give any type in ts its says 
// // Parameter 'firstName' implicitly has an 'any' type.
// // any -- means it can be any type of data type
// // say it explicitly that it is any but you can't say implicitly


// function sum(a : number, b : number) {
//     return a + b;
// }
// above is the example of type inference 
// type inference means it will automatically infer the type of the variable


// function sum(a : number, b : number) : number {
//     return a + b;
// }
// // we can even give expicit return type

// let result = sum(10, 20);
// console.log(result);

// function isLegal(age : number) {
//     return age >= 18;
// }

// // string, number , boolean 


// create a function that take abother function as input and runs after one sec 


// function run1(fn : () => void) {
//     setTimeout(()=>{
//         fn();
//     }, 1000);
// } // as function expect no argument and return nothing()

// run1(function(){
//     console.log("Hello");
// }); 


// ##################


function run1(fn : (a : number) => void) {

    a = a + 10;

    setTimeout(()=>{
        fn(a);
    }, 1000);
}

let a = 10;
run1(function(a){
    // console.log("Hello " + a);
    return a+10;
}); 

// read the above example its very interesting
/* 
n TypeScript, a void return type means the caller ignores any return value. 
Functions with a void type can still return a value, but it will be ignored, and no error occurs. 
This is intentional for JavaScript compatibility. If stricter behavior is desired, enable TypeScript options like strict or noImplicitReturns.
*/
