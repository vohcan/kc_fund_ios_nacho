//
//  Errors.swift
//  hackersBooks
//
//  Created by Nacho Villaverde Montalvo on 6/7/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation

//MARK: JSON Errors


enum BooksError: ErrorType{
    case wrongURLFormatForJSONResource
    case resourcePointedByURLNotReachable
    case jsonParsingError
    case wrongJSONFormat
    case nilJSONObject
}
