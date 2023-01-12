import UIKit

let n : Int = 6

//MARK: 1.
            //1
            //1 2
            //1 2 3
            //1 2 3 4

for i in stride(from: 1, to: n, by: 1){
    for j in stride(from: 1, to: i, by: 1){
       print(j, terminator: " ")
    }
    print("")
}

//MARK: 2.

//        1 2 3 4
//        1 2 3
//        1 2
//        1

for i in stride(from: 1, to: n, by: 1){
    for j in stride(from: 1, to: n-i, by: 1){
        print(j, terminator: " ")
    }
    print(" ")
}
//MARK: 3.
//              1
//            1 2
//          1 2 3
//        1 2 3 4

for i in stride(from: 1, to: n, by: 1){
    // spacing
    for _ in stride(from: 1, to: n-i, by: 1){
        print(" " , terminator: " ") // if one space less it will be piramid
    }
    // print the stars
    for j in stride(from: 1, to: i, by: 1){
        print(j,terminator: " ")
    }
    // for new line
    print("")
}

//MARK: 4.

//        1 2 3 4
//          1 2 3
//            1 2
//              1

for i in stride(from: 1, to: n, by: 1){
    for i in stride(from: 1, to: i, by: 1){
        print(" ", terminator: " ")
    }
    for j in stride(from: 1, to: n-i, by: 1){
        print(j, terminator: " ")
    }
    print("")
}

//MARK: 5. Pyramid

//             1
//            1 2
//           1 2 3
//          1 2 3 4
for i in stride(from: 1, to: n, by: 1){
    // spacing
    for _ in stride(from: 1, to: n-i, by: 1){
        print("", terminator: " ")
    }
//    print the stars
    for j in stride(from: 1, to: i, by: 1){
        print(j, terminator: " ")
    }
    print("")
}


//MARK: 6.

//        1 2 3 4
//         1 2 3
//          1 2
//           1

for i in stride(from: 1, to: n, by: 1){
    for i in stride(from: 1, to: i, by: 1){
        print("", terminator: " ")
    }
    for j in stride(from: 1, to: n-i, by: 1){
        print(j, terminator: " ")
    }
    print("")
}


//MARK: 7.

//          1
//         1 2
//        1 2 3
//       1 2 3 4
//        1 2 3
//         1 2
//          1
         
for i in stride(from: 1, to: n, by: 1){
    // spacing
    for _ in stride(from: 1, to: n-i, by: 1){
        print("", terminator: " ")
    }
//    print the stars
    for j in stride(from: 1, to: i, by: 1){
        print(j, terminator: " ")
    }
    print("")
}
for i in stride(from: 1, to: n-1, by: 1){
    print(" ", terminator: "")
    for i in stride(from: 1, to: i, by: 1){
        print("", terminator: " ")
    }
    for j in stride(from: 1, to: n-i-1, by: 1){
        print(j, terminator: " ")
    }
    print("")
}


//MARK: 8.

//        0 1 2 3 4 0 1 2 3 4
//        0 1 2 3     0 1 2 3
//        0 1 2         0 1 2
//        0 1             0 1
//        0                 0
//        0 1             0 1
//        0 1 2         0 1 2
//        0 1 2 3     0 1 2 3
//        0 1 2 3 4 0 1 2 3 4

for i in stride(from: 1, to: n-1, by: 1){
    for j in stride(from: 0, to: n-i, by: 1){
        print(j, terminator: " ")
    }
    for i in stride(from: 1, to: i, by: 1){
        print("  ", terminator: "  ")
    }
    for j in stride(from: 0, to: n-i, by: 1){
        print(j, terminator: " ")
    }
    print("")
}

for i in stride(from: 1, to: n, by: 1){
    for j in stride(from: 0, to: i, by: 1){
       print(j, terminator: " ")
    }
    for _ in stride(from: 1, to: n-i, by: 1){
        print("  " , terminator: "  ") // if one space less it will be piramid
    }
    // print the stars
    for j in stride(from: 0, to: i, by: 1){
        print(j,terminator: " ")
    }
    // for new line
    print("")
}
