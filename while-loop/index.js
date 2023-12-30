const readline = require("readline");

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

function isNumeric(num) {
  return !isNaN(num) && num !== "";
}

function checkInput(a, b) {
  if (a === "-1") {
    console.log("Exiting the program...");
    return "exit";
  } else if (!isNumeric(a) || !isNumeric(b)) {
    console.log(
      "Invalid input. Please enter valid numeric values or -1 to quit."
    );
    return "invalid";
  } else if (a === "0" || b === "0") {
    console.log("Neither number can be zero.");
    return "zero";
  }

  return "valid";
}

function getInput() {
  rl.question("Enter two numbers (-1 to quit): ", (input) => {
    const [a, b] = input.trim().split(" ");

    const inputStatus = checkInput(a, b);

    if (inputStatus === "exit") {
      rl.close();
      return;
    } else if (inputStatus === "invalid" || inputStatus === "zero") {
      getInput();
    } else {
      const result = sum(a, b);
      console.log(`The sum of ${a} and ${b} is: ${result}`);
      getInput();
    }
  });
}

getInput();
