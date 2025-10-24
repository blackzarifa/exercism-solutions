enum LogLevel {
  case trace, debug, info, warning, error, fatal, unknown
  
  init(_ str: String) {
    let startLvlIndex = str.index(str.startIndex, offsetBy: 1)
    let endLvlIndex = str.index(startLvlIndex, offsetBy: 3)
    switch str[startLvlIndex..<endLvlIndex] {
    case "TRC":
      self = .trace
    case "DBG":
      self = .debug
    case "INF":
      self = .info
    case "WRN":
      self = .warning
    case "ERR":
      self = .error
    case "FTL":
      self = .fatal
    default:
      self = .unknown
    }
  }

  func shortFormat(message: String) -> String {
    let level: Int
    switch self {
    case .trace:
      level = 0
    case .debug:
      level = 1
    case .info:
      level = 4
    case .warning:
      level = 5
    case .error:
      level = 6
    case .fatal:
      level = 7
    case .unknown:
      level = 42
    }
    return "\(level):\(message)"
  }
}