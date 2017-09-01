
var first_value = prompt("Enter first value ");
var first_value_number = parseFloat(first_value);
var second_value = prompt("Enter second value");
var second_value_number = parseFloat(second_value);
var selection = prompt(" Options (+) ,(-),(/)(*) ");

 if ( selection == ("+")) {
	alert(first_value_number + second_value_number)
 } else if (selection == ("-")) {
	alert(first_value_number - second_value_number)
 } else if (( selection == "/")) {
	alert(first_value_number / second_value_number)
 } else if ((selection == '*')) {
	alert(first_value_number * second_value_number)
 } else if ((selection = "  ")) {
 	alert(first_value_number + second_value_number)
 }


