var englishText = "this is a secret message"

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

// Add your code below 🤫
var letterToMorse = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--.."
]
var morseText = ""

for element in englishText {
  if let morseChar = letterToMorse["\(element)"]{
    morseText += morseChar + " "
  }
  else {
    morseText += "   "
  }
}


var decodedMessage : String = ""
var morseCodeArray = [String]()
var currMorse = ""

for char in secretMessage {
  if char != " " {
    currMorse.append(char)
  }
  else {
    
    switch currMorse {
      case "":
        currMorse+=" "
      case " ":
        morseCodeArray.append(" ")
        currMorse=""
      default:
        morseCodeArray.append(currMorse)
        currMorse = ""
    }
  }
}

morseCodeArray.append(currMorse)

var morseToLetter: [String: String] = [:]
for (letter, morseChar) in letterToMorse {
  morseToLetter[morseChar] =  letter
}

for morseValue in morseCodeArray {
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage.append(letterChar)
  }
  else {
    decodedMessage.append(" ")
  }
}
print(decodedMessage)


