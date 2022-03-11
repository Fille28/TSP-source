import Foundation

let AB = 25
let AC = 10
let AD = 15
let BC = 10
let BD = 45
let CD = 5
    
var A = [AB, AC, AD]
var B = [AB, BC, BD]
var C = [AC, BC, CD]
var D = [AD, BD, CD]

var vagar = [AB:"AB", AD:"AD", BD:"BD", CD:"CD", AC:"AC"]
var vagarDubletter = [BC:"BC"]

var dist = 0
var distAdd = 0
var currentPath = [String]()

var a1 = 0
var b1 = 0
var c1 = 0
var d1 = 0

var a = ["AB", "AC", "AD"]
var b = ["AB", "BC", "BD"]
var c = ["AC", "BC", "CD"]
var d = ["AD", "BD", "CD"]

while currentPath.count != 4 {
    
    A.sort()
    B.sort()
    C.sort()
    D.sort()

if (vagar[A[0]] != nil) && currentPath.isEmpty {
        
        currentPath.append(vagar[A[0]]!)
        dist += A[0]
        distAdd = A[0]
        
    }else if (vagarDubletter[A[0]] != nil) && currentPath.isEmpty {
        
        currentPath.append(vagarDubletter[A[0]]!)
        dist += A[0]
        distAdd = A[0]
    
    }
    
    if b.contains(currentPath.last!) && b1 == 0 {
        
        if B[0] == distAdd {
            B.removeFirst()
        }
        
        if (vagar[B[0]] != nil) {
            
            if c1 == 0 && c.contains(vagar[B[0]]!) {
                        
                currentPath.append(vagar[B[0]]!)
                dist += B[0]
                distAdd = B[0]
                b1 += 1
                
                if currentPath.count == 3 {
                    
                    currentPath.append("AC")
                    dist += AC
                    
                }
                
            }else if d1 == 0 && d.contains(vagar[B[0]]!) {
                        
                currentPath.append(vagar[B[0]]!)
                dist += B[0]
                distAdd = B[0]
                b1 += 1
                
                if currentPath.count == 3 {
                    
                    currentPath.append("AD")
                    dist += AD
                    
                }
                
            }else{
                B.removeFirst()
            }
            
        }else if (vagarDubletter[B[0]] != nil) {
            
            if d1 == 0 && d.contains(vagar[B[0]]!) {
                           
                currentPath.append(vagar[B[0]]!)
                dist += B[0]
                distAdd = B[0]
                b1 += 1
                
                if currentPath.count == 3 {
                    
                    currentPath.append("AD")
                    dist += AD
                    
                }
                           
            }else if c1 == 0 && c.contains(vagar[B[0]]!) {
                           
                currentPath.append(vagar[B[0]]!)
                dist += B[0]
                distAdd = B[0]
                b1 += 1
                
                if currentPath.count == 3 {
                    
                    currentPath.append("AC")
                    dist += AC
                    
                }
                
            }else{
                B.removeFirst()
            }
        }
    }
    

    if c.contains(currentPath.last!) && c1 == 0 {
        
        if C[0] == distAdd {
            C.removeFirst()
        }
        
        if (vagar[C[0]] != nil) {
            
          if b1 == 0 && b.contains(vagar[C[0]]!) {
                         
                currentPath.append(vagar[C[0]]!)
                dist += C[0]
                distAdd = C[0]
                c1 += 1
            
                if currentPath.count == 3 {
                    
                    currentPath.append("AB")
                    dist += AB
                    
                }
                         
          }else if d1 == 0 && d.contains(vagar[C[0]]!) {
                         
                currentPath.append(vagar[C[0]]!)
                dist += C[0]
                distAdd = C[0]
                c1 += 1
            
                if currentPath.count == 3 {
                    
                    currentPath.append("AD")
                    dist += AD
                    
                }
            
          }else{
                C.removeFirst()
            }
            
        }else if (vagarDubletter[C[0]] != nil) {
            
           if b1 == 0 && b.contains(vagar[C[0]]!) {
                          
                currentPath.append(vagar[C[0]]!)
                dist += C[0]
                distAdd = C[0]
                c1 += 1
                
                if currentPath.count == 3 {
                    
                    currentPath.append("AC")
                    dist += AC
                    
                }
                
           }else if d1 == 0 && d.contains(vagar[C[0]]!) {
                          
                currentPath.append(vagar[C[0]]!)
                dist += C[0]
                distAdd = C[0]
                c1 += 1
            
                if currentPath.count == 3 {
                    
                    currentPath.append("AD")
                    dist += AD
                    
                }
            
           }else{
                C.removeFirst()
            }
        }
    }
    

    if d.contains(currentPath.last!) && d1 == 0 {
        
        if D[0] == distAdd {
            D.removeFirst()
        }
        
        if (vagar[D[0]] != nil) {
            
            if b1 == 0 && b.contains(vagar[D[0]]!) {
                
                currentPath.append(vagar[D[0]]!)
                dist += D[0]
                distAdd = D[0]
                d1 += 1
                
                if currentPath.count == 3 {
                    
                    currentPath.append("AB")
                    dist += AB
                    
                }
                
            }else if c1 == 0 && c.contains(vagar[D[0]]!) {
                
                currentPath.append(vagar[D[0]]!)
                dist += D[0]
                distAdd = D[0]
                d1 += 1
                
                if currentPath.count == 3 {
                    
                    currentPath.append("AC")
                    dist += AC
                    
                }
                
            }else{
                D.removeFirst()
            }
            
        }else if (vagarDubletter[D[0]] != nil) {
            
           if b1 == 0 && b.contains(vagar[D[0]]!) {
                          
                currentPath.append(vagar[D[0]]!)
                dist += D[0]
                distAdd = D[0]
                d1 += 1
            
                if currentPath.count == 3 {
                
                    currentPath.append("AB")
                    dist += AB
                
                }
                          
           }else if c1 == 0 && c.contains(vagar[D[0]]!) {
                          
                currentPath.append(vagar[D[0]]!)
                dist += D[0]
                distAdd = D[0]
                d1 += 1
            
                if currentPath.count == 3 {
                
                    currentPath.append("AC")
                    dist += AC
                    
                }
            
           }else{
                D.removeFirst()
            }
        }
    }
}

print(currentPath)
print(dist)
