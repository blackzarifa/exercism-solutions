struct Size {
  var width: Int = 80
  var height: Int = 60

  mutating func resize(newWidth: Int, newHeight: Int) {
    width = newWidth
    height = newHeight
  }
}

struct Position {
  var x: Int = 0
  var y: Int = 0

  mutating func moveTo(newX: Int, newY: Int) {
    x += newX
    y += newY
  }
}

class Window {
  var title: String
  var screenSize = Size(width: 800, height: 600)
  var size: Size
  var position: Position
  var contents: String?

  init(title: String = "New Window", contents: String? = nil, size: Size = Size(), position: Position = Position()) {
    self.title = title
    self.contents = contents
    self.size = size
    self.position = position
  }

  func resize(to: Size) {
    let maxWidth = screenSize.width - position.x
    let maxHeight = screenSize.height - position.y

    size.width = max(1, min(to.width, maxWidth))
    size.height = max(1, min(to.height, maxHeight))
  }

  func move(to: Position) {
    let maxX = screenSize.width - size.width
    let maxY = screenSize.height - size.height
    
    position.x = max(0, min(to.x, maxX))
    position.y = max(0, min(to.y, maxY))
  }

  func update(title: String) { self.title = title }
  func update(text: String?) { contents = text }

  func display() -> String {
    let contentText = contents ?? "[This window intentionally left blank]"
    return """
    \(title)
    Position: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))
    \(contentText)\n
    """
  }
}