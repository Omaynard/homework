document.addEventListener('DOMContentLoaded', function () {
  // your code here

  var numbers = document.getElementsByClassName('number')
  var operators = document.getElementsByClassName('operator')
  var new_number = 0
  var new_operator = ''
  var equal = document.getElementsByClassName('eq')[0]



  var answer = 0
  for(var i = 0; i < numbers.length; i++){
 		var currentButton = numbers[i]
 		currentButton.addEventListener('click',function(event){
			display (this.value)
			new_number = parseFloat(this.value)
			if (answer == 0 ){
				answer = new_number

			}else if (new_operator == '+'){
 	 			add(new_number)
			}else if (new_operator == '-'){
 	 			subtract(new_number)
 	 		}
 	 		console.log(answer)
			
		});
 	}
 	 equal.addEventListener('click',function(event){
 	 	display(answer)
 	 	console.log(this.value)
 	 })
  for(var i = 0; i < operators.length; i++){
 	 	 var currentoperator = operators[i]
 	 	currentoperator.addEventListener('click',function(event){
 	 		new_operator = currentoperator.value
 	 		 
 	 		
 	 		console.log(this.value)
 	 		
 		 });
 	 }
 	function display (keyvalue){
 		var display_num = document.getElementsByClassName('display')[0];
 		display_num.value = keyvalue;

 	}

 	function add (num1){
 		
 		answer = num1 + answer;





 	}
 	function subtract (num1){
 		
 		answer = answer - num1;
 	




 	}

 	
    
     


});