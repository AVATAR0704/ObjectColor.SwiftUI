//
//  Objects.swift
//  ObjectColor
//
//  Created by Macservis on 13/05/22.
//

import Foundation
import SwiftUI



protocol Object {
    
    var name: String? { get }
    var color: Color? {get }
    
    
    
}




struct Fruit: Object {
    
    var name: String? = "Fruit"
    var color: Color? = Color.green
    
    
    init(name: String?, color: Color?) {
        
        if let name = name {
            self.name = name
        }
        
        if let color = color {
            self.color = color
        }
           
    }
    
}


struct Vegetables: Object {
    
    var name: String? = "Vegetables"
    var color: Color? = Color.orange
    
    
    init(name: String?, color: Color?) {
        
        if let name = name {
            self.name = name
        }
        
        if let color = color {
            self.color = color
        }
           
    }
    
    
}
