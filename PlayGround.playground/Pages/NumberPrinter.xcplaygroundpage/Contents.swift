//: [Previous](@previous)

import Foundation

enum NumComponents: String {
    case dashF = " --- "
    case bothF = "|   |"
    case leftF = "|    "
   case rightF = "    |"
    case empty = "     "
   case center = "  |  "
}

func generateNumString(_ int: Int) {
    let str2DArr = "\(int)".reduce( into: [ [String] ]() ) {
        $0.append( strArrayFor($1).map{$0.rawValue} )
    }
    
    let minLines = str2DArr.min{ $0.count > $1.count }?.count ?? 1
    
    (0...minLines - 1).reduce(into: [String]() ) { sum, next in
        var tempArr = [String]()
        str2DArr.forEach { strArray in
            tempArr.append(strArray[next])
        }
        let tempStr = tempArr.reduce(into: "") { $0 = $0 + $1 }
        sum.append(tempStr)
    }.forEach { print($0) }
    
}

func strArrayFor(_ chr: Character ) -> [NumComponents] {
    switch String(chr) {
    case "0":
        return [ .dashF, .bothF, .bothF, .bothF, .dashF ]
    case "1":
        return [ .empty, .center, .center, .center, .empty]
    case "2":
        return [ .dashF, .rightF, .dashF, .leftF, .dashF]
    case "3":
        return [ .dashF, .rightF, .dashF, .rightF, .dashF]
    case "4":
        return [ .empty, .bothF, .dashF, .rightF, .empty]
    case "5":
        return [ .dashF, .leftF, .dashF, .rightF, .dashF]
    case "6":
        return [ .dashF, .leftF, .dashF, .bothF, .dashF]
    case "7":
        return [ .dashF, .rightF, .rightF, .rightF, .empty]
    case "8":
        return [ .dashF, .bothF, .dashF, .bothF, .dashF]
    case "9":
        return [ .dashF, .bothF, .dashF, .rightF, .empty]
    default:
        print("unexpected result")
        return [ .dashF, .dashF, .dashF, .dashF, .dashF ]
    }
}


generateNumString(1234567890)


//: [Next](@next)
