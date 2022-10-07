
var unsortedIntegers = [String]()

func readWords() -> [String] {
var line : String?
repeat {
    line = readLine()?.lowercased()
    if line != nil {
        unsortedIntegers.append(line!)
    }
} while line != nil
return unsortedIntegers
}
 
func bubbleSort(unsortedIntegers: [String]) -> [String] {

    var sortingIntegers = readWords()

    for _ in 0 ..< sortingIntegers.count - 1 {
        for j in 0 ..< sortingIntegers.count - 1 {
            if (sortingIntegers[j] > sortingIntegers[j + 1]) {
                let temp = sortingIntegers[j]
                sortingIntegers[j] = sortingIntegers[j + 1]
                sortingIntegers[j + 1] = temp
            }
        }
    }
    return sortingIntegers
}       
let sortedIntegers = bubbleSort(unsortedIntegers: unsortedIntegers)
for element in sortedIntegers {
    print(element)
}

