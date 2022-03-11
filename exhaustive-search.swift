import Foundation

let AB = 25
let AC = 10
let AD = 15
let BC = 10
let BD = 45
let CD = 5
    
var A = "AB AC AD"
var B = "AB BC BD"
var C = "AC BC CD"
var D = "AD BD CD"

var bestDist = 0
var dist = 0
var currentPath = [String]()
var bestPath = [String]()

var a = 0
var b = 0
var c = 0
var d = 0

var paths = ["BC","AB","AC","BD","CD","AD"]
var randomPath = [""]
var pathsShuffled = [""]

for _ in 1...20 {
    
    randomPath.removeAll()
    pathsShuffled = paths.shuffled()
    randomPath = pathsShuffled
    currentPath.removeAll()
    dist = 0
    a = 0
    b = 0
    c = 0
    d = 0
    
while currentPath.count != 4 {
    
if A.contains(randomPath[0]) && B.contains(randomPath[0]) && a == 0 {
    
    currentPath.append(randomPath[0])
    dist += AB
    a += 1
    b += 1
    randomPath.removeFirst()
    
}else if A.contains(randomPath[0]) && C.contains(randomPath[0]) && a == 0 {
    
    currentPath.append(randomPath[0])
    dist += AC
    a += 1
    c += 1
    randomPath.removeFirst()

}else if A.contains(randomPath[0]) && D.contains(randomPath[0]) && a == 0 {
    
    currentPath.append(randomPath[0])
    dist += AD
    a += 1
    d += 1
    randomPath.removeFirst()
    
}else if a == 0 {
    
    randomPath.removeFirst()
    
}

while b == 1 && !randomPath.isEmpty {
        
    if B.contains(randomPath[0]) && C.contains(randomPath[0]) && c == 0 {
        
        currentPath.append(randomPath[0])
        dist += BC
        b += 1
        c += 1
        randomPath.removeFirst()
        
    }else if B.contains(randomPath[0]) && D.contains(randomPath[0]) && d == 0 {
        
        currentPath.append(randomPath[0])
        dist += BD
        b += 1
        d += 1
        randomPath.removeFirst()
        
    }else{
        
        randomPath.removeFirst()
    
    }
}
    
while c == 1 && !randomPath.isEmpty {
        
    if C.contains(randomPath[0]) && B.contains(randomPath[0]) && b == 0 {
               
        currentPath.append(randomPath[0])
        dist += BC
        b += 1
        c += 1
        randomPath.removeFirst()
               
    }else if C.contains(randomPath[0]) && D.contains(randomPath[0]) && d == 0 {
               
        currentPath.append(randomPath[0])
        dist += CD
        d += 1
        c += 1
        randomPath.removeFirst()
               
    }else{
        
        randomPath.removeFirst()
        
    }
}

while d == 1 && !randomPath.isEmpty {
        
    if B.contains(randomPath[0]) && D.contains(randomPath[0]) && b == 0 {
               
        currentPath.append(randomPath[0])
        dist += BD
        b += 1
        d += 1
        randomPath.removeFirst()
               
    }else if C.contains(randomPath[0]) && D.contains(randomPath[0]) && c == 0 {
               
        currentPath.append(randomPath[0])
        dist += CD
        d += 1
        c += 1
        randomPath.removeFirst()
               
    }else{
        
        randomPath.removeFirst()
        
    }
}
    
if currentPath.count == 3 {
        if b == 1 {
            
            currentPath.append("AB")
            dist += AB
            b += 1
            
        }else if c == 1{
            
            currentPath.append("AC")
            dist += AC
            c += 1
            
        }else if d == 1{
            
            currentPath.append("AD")
            dist += AD
            d += 1
        }

if dist <= bestDist || bestDist == 0 {
    bestDist = dist
    bestPath.removeAll()
    bestPath.append(contentsOf: currentPath)
}
}
    if randomPath.isEmpty{
        randomPath.append(contentsOf: pathsShuffled)
    }
}
}

randomPath.removeAll()
randomPath.append(contentsOf: pathsShuffled)

print(bestPath)
print(bestDist)
