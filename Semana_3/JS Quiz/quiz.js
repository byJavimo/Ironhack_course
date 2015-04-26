var user = {}
var responses = []

function question1() {
	var answer1 = prompt("What's your name?")
	user.answer1 = name
}

question1();

function question2() {
	var answer2 = prompt("Was America discovered in 1492? (Yes or No)")
		if (answer2.toLowerCase()==="yes") {
			answer2 = true
		}
		else if (answer2.toLowerCase()=== "no") {
			answer2 = false
		}
		else {
			alert("Please aswer either Yes or No");
			return answer2();
		}
	responses.push(answer2);

}

function question3() {
	var answer3 = prompt("How many UEFA Champions League has Real Madrid won? (Six,Zero,Ten)")
		answer3 = answer3.toLowerCase()
		switch (answer3) {
			case "six"
				answer3 = false;
			break;
			case "zero"
				answer3 =false;
			break;
			case "ten"
				answer3 =true;
			break;
			default
				alert("Please answer either Six, Zero or Ten (in letters)");
				return answer3();
			break;
		}
	responses.push(answer3);
}

function question4() {
	var answer3 = prompt("Can an elephant weight more than 1000 kg? Yes or No")
		answer4 =answer4.toLowerCase()
		if (answer4 ===  "yes") {
			answer4 = true
		}
		else if (answer4 === "no"){
			answer4 === false
		}
		else {
			 alert ("Please answer either Yes or No");
			 return answer4()
		}
	responses.push(answer4);
}

function question5() {
	var answer5 = prompt("When did start the French Revolution?(1989, 1669, 1789)")
	switch(answer5){
		case "1989"
		case "1669"
			answer5 = false;
		break;
		case "1789"
			answer5 = true
		break;
		default
			alert ("This answer is not an option.Please enter 1989, 1669 or 1789")
		break;

	}
	responses.push(answer5);

}

function evaluate (responses) {

	var trueAnswers = [];
	var falseAnswers = [];

	for (var i = 0; i < responses.length; i++ {
		responses[i];
		if (responses[i] = true){
			trueAnswers.push(responses[i]);
		}
		else {
			falseAnswers.push(responses[i]);
		}	
	}

user.push(trueAnswers,falseAnswers).save

}

function showResults () {
	console.log(user)

}

console.log(evaluate(responses));

