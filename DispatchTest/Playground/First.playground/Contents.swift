import UIKit

import Foundation

func firstMethod() {
    print("A")
    
    DispatchQueue.main.async {
        print("B")
        
        DispatchQueue.main.async {
            print("C")
            
        }
    }
    
    DispatchQueue.main.async {
        print("D")
    }
    
    print("E")
}

firstMethod()
//RunLoop.main.run()
// A C B D E
