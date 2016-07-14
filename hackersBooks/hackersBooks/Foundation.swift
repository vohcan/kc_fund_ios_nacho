//
//  Foundation.swift
//  hackersBooks
//
//  Created by Nacho Villaverde Montalvo on 14/7/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation


extension NSBundle{
    
    func URLForResource(name: String?) -> NSURL?{
        
        let components = name?.componentsSeparatedByString(".")
        let fileTitle = components?.first
        let fileExtension = components?.last
        
        return URLForResource(fileTitle, withExtension: fileExtension)
        
    }
}