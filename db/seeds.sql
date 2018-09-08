INSERT INTO card_values (question, define) VALUES ("make a variable named word and set it to an empty string.", "var word = empty string;");

INSERT INTO card_values (question, define) VALUES ("create a for loop to loop over the word variable and console.log each character inside of it", "one way:
for (var i=0; i<word.length; i++){ console.log(word[i]);
}");
INSERT INTO card_values (question, define) VALUES ('var animal = "the fox says";

using indexOf console.log the index of the letter f in the animal variable. 

console.log(4);', "console.log(animal.indexOf('f'));");
INSERT INTO card_values (question, define) VALUES ("var animal = the giraffe says sup;

using indexOf console.log true if the word giraffe is in the animal variable and false otherwise.

using indexOf console.log true if the word cat is in the animal variable and false otherwise.", "console.log(animal.indexOf('giraffe') >= 0);");
INSERT INTO card_values (question, define) VALUES ("the first position of any string is ___.", "0");
INSERT INTO card_values (question, define) VALUES ("console.log the e in this word without using the letter e

var word = fiesta;", "one way:
console.log(word[2]);
another way:
console.log(word.charAt(2));");
INSERT INTO card_values (question, define) VALUES ("var greeting = hello world;
greeting = greeting.replace(/o/g, 'c') 
// what is the value of the variable greeting?", '"hellc wcrld"');
INSERT INTO card_values (question, define) VALUES ('var f = "apple";

write code to console.log ppl in the variable f without using the letters ppl', "one way:
f[1]+f[2]+f[3];

another way:
f.substr(1,3);

another way:
f.substring(1,4);

another way:
f.slice(1,4);");
INSERT INTO card_values (question, define) VALUES ('var animal = "moose";

write code here to change the middle o to z', "one way:
var animal_arr = animal.split('');
animal_arr[2] = 'z';
var answer = animal_arr.join('');
//another way
console.log(animal.substr(0,1) + 'z' + animal.substr(3,4))");
INSERT INTO card_values (question, define) VALUES ("- make a variable named dogs and initialize it to an empty array

- on the next line append a string named rover into the dogs array

- on the next line append a string named hunter into the dogs array

- on the next line append a string named oak into the dogs array

- on the next line console.log out the length of the dogs array", "var dogs = [];
dogs.push('rover');
dogs.push('hunter');
dogs.push('oak');
console.log(dogs.length);");
INSERT INTO card_values (question, define) VALUES ("part one:
var letters = ['h', 'c', 'i', 'r'];
on the next line reverse the letters array
on the next line convert the letters array into a string and console log it out", "- one way:
letters.reverse();
console.log(letters.join(''));

- another way don't do this:
var word = "";
for(var i=letters.length-1; i>=0; i--){
word += letters[i];
}");
INSERT INTO card_values (question, define) VALUES ("- make a variable named nums and set it to an empty array
- on the next line write code to add numbers 1 to 1000 into the nums array", "one way
var nums = [];
for (var i=1; i<1001; i++){
nums.push(i);
}
another way:
var nums = [];
for (var i=1; i<=1000; i++){
nums.push(i);
}
another way:
var nums = [];
for (var i=0; i<1000; i++){
nums.push(i+1);
}
another way:
var nums = [];
for (var i=0; i<1000; i++){
nums[i] = i+1;
}");
INSERT INTO card_values (question, define) VALUES ("make a variable named nums and set it to an array with the numbers 1002 and 1001 in it.", "one way:
var nums = [1002, 1001];
for(var i=1000; i>=1; i--){
nums.push(i);
}");

INSERT INTO card_values (question, define) VALUES ("write a function named arrSum that takes in an array and returns the sum of the elements in the array", "one way
function arrSum(arr){
var sum = 0;
for (var i=0; i<arr.length; i++){
sum += arr[i];
}
return sum;
}

another way 
function arrSum(arr){
return arr.reduce(function(a,b){
return a+b;
});
}");





		
