function maskify(creditCard) {
  if (creditCard === null) return creditCard;
  if (creditCard.length < 6) return creditCard;

  let masked = "";
  // add your code here
  arrayCreditCard = creditCard.split("")

  arrayCreditCard.forEach((char, index) => {
    if (isFirstChar(index) || isLast4Chars(index, arrayCreditCard.length)) {
      masked += char;
    } else {
      if (isDigit(char)) {
        masked += '#'
      } else {
        masked += char;
      }
    }
  });
return masked
}

function isDigit(char) {
  const regex = new RegExp(/\d+/);
  return regex.test(char);
}

function isFirstChar(index) {
  return index == 0
}

function isLast4Chars(index, length) {
  return index >= length - 4
}

console.log(maskify("1b9898d-fdfd-fd99998"))

