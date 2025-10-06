import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  guard let d = diameter else { return nil }
  guard let s = slices else { return nil }
  
  if d < 0 || s < 1 { return nil }

  let area = Double.pi * pow(d/2, 2)
  return area / Double(s)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String,
) -> String {
  let sliceA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
  let sliceB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))

  guard sliceA != sliceB else { return "Neither slice is bigger" }
  guard let sliceA = sliceA else { return "Slice B is bigger" }
  guard let sliceB = sliceB else { return "Slice A is bigger" }
  
  return "Slice \(sliceA > sliceB ? "A" : "B") is bigger"
}
