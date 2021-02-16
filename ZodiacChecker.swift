
import Foundation


func readDate() -> [String] {
    return readLine()!.split(separator: " ").map { String($0) }
}

var angle = ""
var japaneseZodiac = ""

func main() {
    let dates = readDate()
    for i in 0..<dates.count {
        var (year, month, day) = splitDate(date: dates[i])
        angle = checkAngle(month: month, day: day)
        japaneseZodiac = checkJapaneseZodiac(year: year)
        print(dates[i] + angle + japaneseZodiac)
    }
}

func splitDate(date: String) -> (year: Int, month: Int, day: Int) {
    let date = date.split(separator: "/").map { Int($0)! }
    return (year: date[0], month: date[1], day: date[2])
}

func checkAngle(month: Int, day: Int) -> String {
    if month == 1 {
        if day <= 19 {
            angle = " Capricorn "
            return angle
        } else {
            angle = " Aquarius "
            return angle
        }
    } else if month == 2 {
        if day <= 18 {
            angle = " Aquarius "
            return angle
        } else {
            angle = " Pisces "
            return angle
        }
    } else if month == 3 {
        if day <= 19 {
            angle = " Pisces "
            return angle
        } else {
            angle = " Aries "
            return angle
        }
    } else if month == 4 {
        if day <= 19 {
            angle = " Aries "
            return angle
        } else {
            angle = " Taurus "
            return angle
        }
    } else if month == 5 {
        if day <= 19 {
            angle = " Taurus "
            return angle
        } else {
            angle = " Gemini "
            return angle
        }
    } else if month == 6 {
        if day <= 19 {
            angle = " Gemini "
            return angle
        } else {
            angle = " Cancer "
            return angle
        }
    } else if month == 7 {
        if day <= 19 {
            angle = " Cancer "
            return angle
        } else {
            angle = " Leo "
            return angle
        }
    } else if month == 8 {
        if day <= 19 {
            angle = " Leo "
            return angle
        } else {
            angle = " Virgo "
            return angle
        }
    } else if month == 9 {
        if day <= 19 {
            angle = " Virgo "
            return angle
        } else {
            angle = " Libra "
            return angle
        }
    } else if month == 10 {
        if day <= 19 {
            angle = " Libra "
            return angle
        } else {
            angle = " Scorpio "
            return angle
        }
    } else if month == 11 {
        if day <= 19 {
            angle = " Scorpio "
            return angle
        } else {
            angle = " Sagittarius "
            return angle
        }
    } else if month == 12 {
        if day <= 19 {
            angle = " Sagittarius "
            return angle
        } else {
            angle = " Capricorn "
            return angle
        }
    }
    return "Error"
}

func checkJapaneseZodiac(year: Int) -> String {
    var zodiacs = ["申","酉","戌","亥","子","丑","寅","卯","辰","巳","午","未"]
    let num = year % 12
    return zodiacs[num]
}

main()

