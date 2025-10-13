func protectSecret(
  _ secret: String, withPassword password: String
) -> (String) -> String {
  func checkPw (_ pwToCheck: String) -> String {
    if pwToCheck != password { return "Sorry. No hidden secrets here." }
    return secret
  }
  return checkPw
}

func generateCombination(
  forRoom room: Int, usingFunction f: (Int) -> Int
) -> (Int, Int, Int) {
  let room_1 = f(room)
  let room_2 = f(room_1)
  let room_3 = f(room_2)
  return (room_1, room_2, room_3)
}
