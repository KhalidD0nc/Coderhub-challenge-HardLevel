import Foundation


// 1 - تحديد الأعداد الفردية و الزوجية

func oddsVsEvens(num: Int) -> String {
    var connvertNumToString: String = String(num)
    var oddNum: [Int] = []
    var evenNum: [Int] = []
    var result: String = ""
    for i in connvertNumToString {
        var convertIndexToString: String = String(i)
        var convertIndexToInt: Int = Int(convertIndexToString)!
        
        if (convertIndexToInt % 2) == 0 {
            evenNum.append(convertIndexToInt)
        } else {
            oddNum.append(convertIndexToInt)
        }
         

        
    }
    
    var totalOdd = oddNum.reduce(0, +)
    var totalEven = evenNum.reduce(0, +)

    if totalOdd > totalEven {
        result = "odd"
    } else if totalEven > totalOdd {
        result = "even"
    } else {
        result = "equal"
    }

    return result
    

}





// 2 - جمع عددين داخل قيمة نصية

func addStrNums(num1: String, num2: String) -> String {
       var x: String = ""
    
    for (i , y) in zip( num1 , num2 ){
        
        if i.isNumber && y.isNumber {
           
            var convertToStringI = Int(String(i))
            var convertToStringY = Int(String(y))
          var sum = (convertToStringI)! + (convertToStringY)!
            x.append("\(sum)")

        } else {
    
            x = "-1"
        
        }
        
        
    }
    
    return x
    

    }

// 3 - تحويل رقم ثنائي إلى رقم ثماني

func bin_to_oct(b: String) -> Int {
      guard let IntValue = Int(b, radix: 2) else { return 0 }
    let octValue = String(IntValue, radix: 8)
    
    return Int(octValue)!
    }


// 4 - أحرف العلة

func first_n_vowels(phrase: String, n: Int) -> String {
       var vowels: String = "AaeEiIoOuU"
    var phraseAdj = phrase
    var stringVowels: String = ""
    var returnedValue: String = ""
    
    for c in phraseAdj {
        if vowels.contains(c) {
            returnedValue += String(c)
        }
    }

    
    if returnedValue.count == n {
        
      stringVowels = returnedValue
    }else {
        
        stringVowels = "invalid"
        
        
    }
    
    return stringVowels
    
    

    
    }

// 5 - تحويل الأرقام إلى نصوص

func numToEng(n: Int) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .spellOut
    let x = formatter.string(for: NSNumber(integerLiteral: n))!
  
    return x

    }

// 6 - تحويل رقم ثماني إلى رقم ثنائي


func oct_to_bin(octal: Int) -> String {
    guard let tmp = Int(String(octal), radix: 8) else {
          return ""
      }

      return String(tmp, radix: 2)
    }


// 7 - فصل الكمات

func cap_space(txt: String) -> String {
        var result: String = ""
    for c in txt {
        if c.isUppercase {
            result += " \(c.lowercased())"
        } else {
            result += String(c)
        }
    }
    return result
    }

// 8 - تجمبع أجزاء النص


func isInterleave(A: String, B: String, C: String) -> Bool {
       var ab = A + B
    if C.count != ab.count {
        return false
        
    }
    for c in C {
            if !ab.contains(c) {
                return false
                
            } else {
                ab.remove(at: ab.firstIndex(of: c)!)
                
            }
        
    }
    return true
    
    
    }
// 9 - التحقق من العملية الرياضية
func math_expr(expr: String) -> Bool {
      let allowed = CharacterSet(charactersIn: "1234567890-/+*")
    let inputChars = CharacterSet(charactersIn: expr)
    return allowed.isSuperset(of: inputChars)
    }


// 10 - سلسلة Tribonacci
func tribonacci(num: Int) -> [Int] {
    var sequence = [1, 1, 1]

    if num < 3 {
      return Array(sequence[0..<num])
    }

    for _ in 3..<num {
      let lastThreeNumbersSum = sequence[sequence.count - 3] + sequence[sequence.count - 2] + sequence[sequence.count - 1]
      sequence.append(lastThreeNumbersSum)
    }

    return sequence

    }



