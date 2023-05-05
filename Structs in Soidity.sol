// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

// Struct allow you to group data together. Let me show an example.

contract Structs {

    struct Car {
    string model;
    string vin;
    uint purchaseyear;
    address owner;
    }
// We can use a struct as a state variable by defining car or etc name.
    Car public car;
// We can also create a array of struct by typing car which is a state variable then brackets used to tell this is a array [] then public by doing public we can access the variable from any where of the smart contract.
    Car [] public cars;
/* Or we can define a mapping from the owner by typing mapping then (address => ) address this will be the owner an owner can have multiple cars so we'll define it as a array of car or etc name of struct because we can use struct as a stae variable by defining car or etc name of it and then outside of the brackets public
 This will look like this down below. */

mapping (address => Car[] ) public carsbyowners;

function exampes () external {
// How to initialize a struct? 
/* There are 3 ways to initialize a struct the first way is similar to how we would execute a function we put all the parameters into parentheses so let me show you
i'll create a variable of type struct Car and it's going to be memory meaning that we are creating a variable of Car inside memory so this car variable only will
only exist while this function is being called. I'l name this variable Toyota and now i'll initialize the sturct by typing Car which is a struct that we created
we can use this to define as a state variable then parentheses () and then puttin in the parameters in order that we declared over here in inside the struct
which is -> struct Car {
            string model;
            string vin;
            uint purchaseyear;
            address owner; }  So model, vin, purchaseyear, and owner */
Car memory Toyota = Car ("toyota-PickUp", "VIN:1818", 2000, msg.sender);
// Another way to initialize a struct is to pass in key value pairs inside the parentheses over here an example.
/* We will decalred a Car variable again because it is part of struct and we use this to create a varible of type stuct which is Car then we will use also Car not another
word otherwise we will face an error then memory again to store that data type we are creating thar variable inside memory so memory we use then we have to name different
this time of this variable if we didn't then we will face an error because in previously we already declared a Car varible name by Toyota now we will use new name which is 
Lambo then  = then we will initialize by this calling stuct which Car then ({model}) inside the parentheses we are passing key value pairs so we'll type curly braces then
inside key value paris we will call struct model by model with oduble dot : look like this model: then name it then we will do as same for other data types but we have to use
Only one time key value pairs like parentheses inside parentheses like this down below */


Car memory Lambo = Car ({ purchaseyear: 2002, model:"toyota-PickUpa", vin: "VIN:18181", owner: msg.sender}); // <- This time we have to add also indentifier of struct
                                                                                                            // varibles then we will add a value of each variable.
/* Now In the first example of Toyota we had to pass the parameters in the order that they were defined in struct but for the key value pair we can switch around
 he paramenters the order doesn't matter so for example i could take out the purchaseyear and then passing it as a first argument adn this will still initialize
the same car struct model will be toyota-PickUpa like this model:toyota-PickUpa and it goes on */                                                                                                           

// We will recall that variables and soldity all have a default value so third way to initiazlize a struct is to just define it and the struct will have a default value we will define the car again and its going be memory and this type we will name the variable different which is Tesla right now this tesla will hold the default values
// LEt's put some data into the Tesla car.
Car memory Tesla;
Tesla .model = ("Tesla X");
Tesla .vin = ("VIN2142");
Tesla .purchaseyear = (2004);
Tesla .owner = (msg.sender);

/* In Arrays when we create a state variable then we give a name to that variable if we want to add/push a number we will write x.push then parenthese () inside parenthese
we give a number that we want to aded and it adds into the database but we don't need to = like this x.push = (5) we just add a number or any datatype of it but in when
we are using structs and when we are calling a variable by struct name which is right in the case Car we stored thar variable or you can say we creted that variable
into the memory we give a name which is Tesla to five the parameters of the stuct we just have to define first variable which is Tesla then .model which is a part
of the stuct parameters then same as for vin or yearofpurchases it goes for all parameters of the struct then we will used equal to Tesla .model to equal that
particular a name or etc value like this Up below ^ */

// Well these are 3 ways to initialize the structs. 
// When we will call this exmaple function it will initiazile the stuct inside the memory so the function will execute after it finishes exeucting theses struct below up ^ will be gone so let's put these in a state varible so that after we execute the function we'll able to get those trucks from the smart contracts we'll push these trucks into the cars array so i'll push cars.push Toyota like this down below

// Notice this before pushing these local varibles we are getting error of Unused local variables and see now after putting these in a state varible of Car [] public cars  pushing these trucks into the cars array.

cars.push (Toyota);
cars.push (Lambo);
cars.push (Tesla);
/* we can push this into Car which is struct varible we can use this to call a varible then public then name it car but this is a state varible to stored this whole data
into a array [] we need to create a arry of this like this -> Car [] public car; Notice when we use an array we need to called a specify data type but the Car is
custom data type which we called this from a struct. Struct means Struct used to complax datatypes we can use this put dataypes together in the order. Let me show 
an example of it down below 

Car [] public car;

car.push (Toyota);
car.push (Lambo);
car.push (Tesla); 

Now our struct will be stored in cars array we don't always initialize a struct as memory then save it into a state variable we all do that in a single line.
So for the next example i will create a struct and then push it immeditely into the array. like this down below. */

// Once you have structs stored inside a state varibles in this case we're storing it in a cars array how do we get it and how de update it? 
// For this example let's get the first car that is stored in the car array the variable type is the stuct so be Car if you just want to get the car from the state varible and then read it so no modification then we can declare as memory meaning that we are loading the data on to memory and to avoid name conflict with the car that we declared over here as i'll declare as underscore car

// Like this-> Car memory _car = car [0];


/* we used cars.push and we push/added in the array where the data stored at the starting postion from 0 and the it goes up and up right now the array name is cars so
cars.push then () inside parenthese we have to declared the struct like cars.push (Car) then inside () one more parenthese for the parameters of the struct like down below. */

cars.push (Car("BMW", "VINBMB", 2003, msg.sender)); 
// Once you have structs stored inside a state varibles in this case we're storing it in a cars array how do we get it and how de update it? 
// For this example let's get the first car that is stored in the cars array the variable type is the stuct so be Car if you just want to get the car from the state varible and then read it so no modification then we can declare as memory meaning that we are loading the data on to memory and to avoid name conflict with the car that we declared over here as i'll declare as underscore car

Car memory _car = cars [0]; // now we have access to the model, vin,year, and owner that is stored in the first element of the cars array. 

// We can get those data by saying _car .model; or we can get the year by saying for _car .vin same for all the parameters inside the struct.

_car .model;
_car .vin;

// Let's say i want to modify the year of this cars [0]; how do we do it? The first thing that we have to do is change this keyword memory to storage so why we need to do that? why do we need to change memory to storage memory means that we are loading this data onto memory so if we modify anthing onto memory then when the function is done executing nothing is saved. Where as storage would mean that we want to update the variable stored inside the smart contract

Car storage _cars = cars [1]; // cars [1] Respresents stored data which is stored at [1] position.

_cars .model = "NewModelX"; // In this case we are updating a value of previous value of model so we will not use parentheses like this _cars .model ("NewModelX"); in the mapping we used like this Tesla .model ("NEW") here we added new inputs.
_cars .vin = "NewModelXX"; // Here we are upadting by _cars which is a varible of state variable of Car which is also a struct we can use this to define a variable then we stored this into memory which often used in functions arugments or inside the functions then we set up a name of this varible which is _cars then we equal to this = cars which is a state varible we crated top above the function.
_cars .purchaseyear = 2010;
_cars .owner = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2; // In this case we replace the address instead of msg.sender to new another address.

// Once this function done executing this change will be saved.

//We can also use the keyword delete to resetthe field stored in struct.

delete _cars .owner;
delete _cars .model; // This will reset the owner and model of the cars to have its default vale which will be address zero and model zero

// We can also call delete on a struct to reset all of the data stored in a struct for an example if we type delet cars like this down below

delete cars [0]; // This will delete the data stored in the cars array the zero element meaning that whatever that is stored inside here will be delete and reset to its default value.
// we used array and 0 to specfiy the postion of the data we want to delete or we can delete whole struct by delete cars;
                
cars.push (Car ("Ok", "OKK", 2004, msg.sender)); // <- We just added/ push a new car by defining arry varible name which is cars then .push to inistialize the arry then (Car()) inside parenthese we add struct varbile which is Car then the all the elements of the struct elements; <-













}

 
}


