import UIKit
import Foundation

func firstMethod() {
    print("A")
    
    DispatchQueue.main.async {
        print("B")
        
        DispatchQueue.main.async {
            print("C")
        }
        
        DispatchQueue.main.async {
            print("D")
        }
        
        DispatchQueue.main.sync {
            print("E")
        }
    }
    
    print("F")

    DispatchQueue.main.async {
        print("G")
    }
}

firstMethod()

RunLoop.main.run()
