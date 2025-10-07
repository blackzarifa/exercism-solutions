import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
  poem.components(separatedBy: "\n")
}

func frontDoorPassword(_ phrase: String) -> String {
  let lines = splitOnNewlines(phrase)
  var password = ""
  
  for line in lines {
    if line == "" { 
      password += "_"
      continue
    }
    password += line.prefix(1) 
  }
  
  return password
}

func backDoorPassword(_ phrase: String) -> String {
  let noSpaces = phrase.replacingOccurrences(of: " ", with: "")
  let lines = splitOnNewlines(noSpaces)
  var password = ""

  for line in lines { password += line.suffix(1) }
  return password + ", please"
}

func secretRoomPassword(_ phrase: String) -> String {
  let noSpaces = phrase.uppercased.replacingOccurrences(of: " ", with: "")
  let lines = splitOnNewlines(noSpaces)
  var password = ""

  for (i, line) in lines.enumerated() {
    let charIdx = line.index(line.startIndex, offsetBy: i)
    password += String(line[charIdx])
  }
  
  return password + "!"
}
