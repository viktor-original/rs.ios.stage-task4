import Foundation

public extension Int {
    
    var roman: String? {
        var number: Int = self
        var romanString: String? = ""
        if number <= 0 || number > 3999 {
            return nil
        }
        repeat {
            switch number {
            case 1000...3999:
                number -= 1000
                romanString?.append("M")
            case 900...999:
                number -= 900
                romanString?.append("CM")
            case 500...899:
                number -= 500
                romanString?.append("D")
            case 400...499:
                number -= 400
                romanString?.append("CD")
            case 100...399:
                number -= 100
                romanString?.append("C")
            case 90...99:
                number -= 90
                romanString?.append("XC")
            case 50...89:
                number -= 50
                romanString?.append("L")
            case 40...49:
                number -= 40
                romanString?.append("XL")
            case 10...39:
                number -= 10
                romanString?.append("X")
            case 9:
                number -= 9
                romanString?.append("IX")
            case 8:
                number -= 8
                romanString?.append("VIII")
            case 7:
                number -= 7
                romanString?.append("VII")
            case 6:
                number -= 6
                romanString?.append("VI")
            case 5:
                number -= 5
                romanString?.append("V")
            case 4:
                number -= 4
                romanString?.append("IV")
            case 1...3:
                number -= 1
                romanString?.append("I")
            default:
                return romanString
            }
        } while number >= 0;
        return romanString
    }
}
