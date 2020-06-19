var text: [String] = ["h", "e", "l", "l", "o"]
var reversed: [String] = []

var index = text.count-1
while index >= 0 {
  reversed.append(text[index])
  index-=1
}

reversed == text ? print("We have a palindrome") : print("No palindrome")
