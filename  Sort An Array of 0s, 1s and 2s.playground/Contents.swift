import UIKit

// Sort An Array of 0s, 1s and 2s 

func SortNumbers(_ num : inout [Int]){
    var low = 0
    var mid = 0
    var heigh = num.count - 1
    
    while mid <= heigh{
        switch num[mid]{
        case 0:
            num.swapAt(low, mid)
            mid += 1
            low += 1
            
        case 1:
            mid += 1
            
        case 2:
            num.swapAt(mid, heigh)
            heigh -= 1
            
        default:
            break
        }
    }
}

var array = [1,2,0,1,2,2,0,0,1]   // outpiut : [0, 0, 0, 1, 1, 1, 2, 2, 2 ]
SortNumbers(&array)

