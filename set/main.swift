//
//  main.swift
//  set
//
//  Created by Dmitriy Eliseev on 17.11.2024.
//

import Foundation

//1. Написать функцию которая объединяет 2 множества
//
//[1,2] + [2,3] -> [1, 2, 3]

//func unionOperation(lhs: Set<Int>, rhs: Set<Int>) -> Set<Int> {
//    lhs.union(rhs)
//}
//
//print(unionOperation(lhs: [1, 2], rhs: [2, 3]))


//2. Написать функцию которая возвращает пересечение множеств
//
//[1,2] [2,3] -> [2]

//func intersectionOperation(lhs: Set<Int>, rhs: Set<Int>) -> Set<Int> {
//    lhs.intersection(rhs)
//}
//
//print(intersectionOperation(lhs: [1, 2], rhs: [2, 3]))


//3. Функция возвращает разность между множествами A \ B (или A − B)
//
//[1, 2] - [1, 2] = nil
//[1, 2, 3, 4] - [1, 3] = [2, 4].

//func complementOperation(lhs: Set<Int>, rhs: Set<Int>) -> Set<Int>? {
////    if lhs.subtracting(rhs) == [] {
////        return nil
////    }
////    return lhs.subtracting(rhs)
//    lhs.subtracting(rhs) == [] ? nil : lhs.subtracting(rhs) //запомнить метод - subtracting
//}
//
//print(complementOperation(lhs: [1, 2, 3, 4], rhs: [1, 3]))


//4. Проверить является ли множество A подмножеством множества B
//
//[1, 2] является подмножеством [1, 2, 3] -> true
//[1, 2, 3] не является подмножество [1, 2] -> false

//func isSubset(a: Set<Int>, b: Set<Int>) -> Bool {
//    a.isSubset(of: b) // запомнить - isSubset
//}
//
//print(isSubset(a: [1, 2, 3], b: [1, 2]))


//5. Проверить является ли множество A надмножеством множества B
//
//[1, 2] не является надмножеством [1, 2, 3] -> true
//[1, 2, 3] не является надмножеством [1, 2] -> false

//func isSuperset(a: Set<Int>, b: Set<Int>) -> Bool {
//    !a.isSuperset(of: b) // - запомнить что такое isSuperset
//}
//
//print(isSuperset(a: [1, 2, 3], b: [1, 2]))


//6. Проверить что множество A тождественно множеству B
//
//[1, 2] == [2, 1] //true
//[1, 2] != [1, 2, 3] //false

//func isEqual(a: Set<Int>, b: Set<Int>) -> Bool {
//    a.elementsEqual(b)
//}
//
//print(isEqual(a: [1, 2], b: [2, 1, 3]))
////в условии тоже ошибка !=


//7. Вернуть симметрическую разность множеств
//
//{7,8,9,10} Δ {9,10,11,12} = {7,8,11,12}.
//
//[1,2,3] [2,3,4] -> [1,4]

//func symmetricOperation(left: Set<Int>, right: Set<Int>) -> Set<Int> {
//    left.symmetricDifference(right) //- противоположная функция от intersection
//}
//
//print(symmetricOperation(left: [7, 8, 9, 10], right: [9, 10, 11, 12]))


//8. Написать функцию которая подсчитывает только уникальные элементы
//
//[ 1, 2, 3] -> 6
//[ 1, 3, 8, 1, 8] -> 12
//[ -1, -1, 5, 2, -7] -> -1
//[] -> nil

//func uniqueSum(_ array: [Int]) -> Int? {
//    var intSet = Set(array)
//    if intSet.isEmpty {
//        return nil
//    }
//    return intSet.reduce(0){$0 + $1}
//}
//
//print(uniqueSum([ 1, 3, 8, 1, 8]))


//9. Проверить что множества нересекающиеся
//
//[1, 2] и [3, 4] -> true
//[1, 2] и [2, 3] -> false

//func isDisjointSets(lhs: Set<Int>, rhs: Set<Int>) -> Bool {
//    !lhs.elementsEqual(rhs) ? true : false
//}
//
//print(isDisjointSets(lhs: [1, 2], rhs: [3, 4]))


//10. Определить является ли слово изограммой (isogram) -
//слово в котором нет повторяющихся букв, последовательных или непоследовательных
//
//"Dermatoglyphics" -> true
//"moose" -> false
//"aba" -> false

//func isIsogramm(_ string: String) -> Bool {
//    Set(Array(string)).count == string.count ? true : false
//}
//
//print(isIsogramm("moose"))


//11. Есть ли дубликаты в массиве
//[1, 2, 3, 1] -> true
//[1, 2, 3, 4] -> false

//func countDuplicates(arr: [Int]) -> Bool {
//    Set(arr).count == arr.count ? false : true
//}
//
//print(countDuplicates(arr: [1, 2, 3, 4]))


//12. Найти разницу между строками
//
//"abcd", "abcde" -> "e"

//func findDifference(lhs: String, rhs: String) -> String {
//    let setOne = Set(Array(lhs))
//    let setTwo = Set(Array(rhs))
//    return String(Array(setOne.union(setTwo).subtracting(setOne.intersection(setTwo))))
//}
//
//print(findDifference(lhs: "abcd", rhs: "abcde"))
////можно сдетать в одну строку


//13. Отсутсвующая цифра в отсортированой последовательности
//[0, 1, 3] -> 2
//[0, 1, 2] -> 3

//func missingNumber(array: [Int]) -> Int {
//    var newSet: Set<Int> = []
//    if let first = array.first, let last = array.last {
//        newSet = Set(first ... last)
//    }
//    return newSet.subtracting(Set(array)).first ?? (array.last ?? 0) + 1
//}
//
//print(missingNumber(array: [0, 1, 3]))


//14. Найти разницу между массивами
//[1, 2, 3], [1, 2, 3, 4] -> 4


//func findDif(lhs: [Int], rhs: [Int]) -> Int {
////        let setOne = Set(Array(lhs))
////        let setTwo = Set(Array(rhs))
////    return (Array(setOne.union(setTwo).subtracting(setOne.intersection(setTwo)))).first ?? 0
//    
//    Set(rhs).subtracting(Set(lhs)).first ?? 0
//}
//
//print(findDif(lhs: [1, 2, 3], rhs: [1, 2, 3, 4]))


////15. Убрать дублирующие слова
////
////"alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta" -> "alpha beta gamma delta"
//
//func removeDuplicateWords (_ phrase: String) -> String {
//    String(Array(Set(Array(phrase.components(separatedBy: .whitespaces)))).sorted().joined(separator: " "))
//}
//
//print(removeDuplicateWords("alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta"))
////"alpha beta gamma delta" -- принципиально ли позиция "gamma delta"??


//16. Проверить что все символы уникальны
//
//"abcdef" -> true
//"aba" -> false

//func uniqChars(_ string: String) -> Bool {
//    Set(Array(string)).count == string.count ? true : false
//}
//
//print(uniqChars("aba"))


//17. Проверить на то массив является валидным множеством
//(множество валидно когда все элементы уникальны)
//
//[1, 2, 3] -> true
//["green", "blue", "red"] -> true
//[1, 2, 1] -> false
//["blank", "solid", "blank"] -> false



//func isValidSet(list: [Any]) -> Bool? {
//    var counterSet: Set<String>?
//    if let newArr = list as? [Int] {
//        counterSet = Set(newArr.map {String($0)})
//    } else if let newArr = list as? [String] {
//        counterSet = Set(newArr)
//    }
//    guard let newStrSet = counterSet else { return nil }
//    return newStrSet.count == list.count ? true : false
//}
//
//
//
//print(isValidSet(list: ["blank", "solid", "blank"]) as Any)
////возможно сделать оптимальнее ? сделал Bool? что бы засунуть nil при проверке если не получилось прочитать тип Any
