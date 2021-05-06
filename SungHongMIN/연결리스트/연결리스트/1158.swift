//
//  main.swift
//  연결리스트
//
//  Created by 민성홍 on 2021/05/06.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]
var queue = Array(1...n)
var idx = k-1
print("<", terminator: "")
while queue.count != 1 {
    if idx >= queue.count {
        idx %= queue.count
    }
    let target = queue.remove(at: idx)
    print("\(target), ", terminator: "")
    idx += (k-1)
}
print("\(queue[0])>")
