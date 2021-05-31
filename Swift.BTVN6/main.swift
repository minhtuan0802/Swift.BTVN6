//
//  main.swift
//  Swift.BTVN6
//
//  Created by Ngô Minh Tuấn on 30/05/2021.
//

import Foundation

//4. Tìm số Amstrong là một số có đặc điểm sau: số đó gồm n chữ số, tổng các lũy thừa bậc n của các chữ số đó và số đó.
//    Ví dụ: 153 = 1^3 + 5^3 + 3^3. Hãy tìm các số Amstrong nhỏ hơn 1000.

func amstrong() {
    for number in 1...1000 {
        var sum = 0
        let count = String(number).count
        for i in "\(number)" {
            let a = (String(i) as NSString).integerValue
            sum += Int(pow(Double(a), Double(count)))
            if number == sum {
                print("\(number) là số Amstrong")
            }
        }
    }
}
amstrong()


//1. Chèn phần tử có giá trị X vào phía sau phần tử có giá trị lớn nhất trong mảng.

func part1(a: [Int],b: Int) {
    var max = a[0]
    var arr :[Int] = a
    for i in 1...a.count-1 {
        if a[i] >= max {
            max = a[i]
        }
    }
    for (index, value) in a.enumerated() {
        if value == max {
            arr.insert(b, at: index+1)
        }
    }
    print(arr)
}
part1(a: [7, 3, 5, 4],b: 10)

//2. Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.

func part2(a: [Int],b: Int) {
    var arr = a
    arr.append(b)
    arr.sort()
    print(arr)
}
part2(a: [7, 3, 5, 4, 15],b: 10)

//3. Cho số nguyên n. Kiểm tra n có phải là số nguyên tố hay không?

func part3() {
    print("Nhập số nguyên n: ", terminator: "")
    let n = Int(readLine()!)!
    if n <= 1 {
        print("\(n) không phải là số nguyên tố")
        part3()
    } else if n == 2 {
        print("\(n) là số nguyên tố")
        part3()
    } else {
        for i in 2...n-1 {
            if n % i == 0 {
                print("\(n) không phải là số nguyên tố")
                part3()
                break
            }
        }
        print("\(n) là số nguyên tố")
        part3()
    }
}
part3()

//4. Đếm số nguyên tố trong đoạn [a, b].
func part4(a: Int, b: Int) {
    var arr :[Int] = []
    if a <= 1 || a > b {
        print("Không hợp lệ")
    } else if a == 2 {
        for i in a+1...b {
            for j in 2..<i {
                if i % j == 0 {
                    arr.append(i)
                    break
                }
            }
        }
    } else {
        for i in a...b {
            for j in 2..<i {
                if i % j == 0 {
                    arr.append(i)
                    break
                }
            }
        }
    }

    print("Tổng số nguyên tố trong đoạn [\(a), \(b)] là: \(b - a + 1 - arr.count)")

}
part4(a: 2, b: 10)

