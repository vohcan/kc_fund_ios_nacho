//
//  Tag.swift
//  hackersBooks
//
//  Created by Nacho Villaverde Montalvo on 13/7/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation


class Tag: Hashable {
    let name : String
    
    init(name: String){
        self.name = name
    }
    //MARK : - Hassable
    var hashValue: Int {
        get{
            return name.hashValue
        }
    }
}

//MARK: - equatable

func ==(lhs: Tag, rhs: Tag) -> Bool{
    guard (lhs !== rhs) else {
        return true
    }
    return lhs.name == rhs.name
}



