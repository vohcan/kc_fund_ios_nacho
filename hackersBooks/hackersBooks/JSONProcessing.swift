//
//  JSONProcessing.swift
//  hackersBooks
//
//  Created by Nacho Villaverde Montalvo on 12/7/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import UIKit

/*
 {
 "authors": "Scott Chacon, Ben Straub",
 "image_url": "http://hackershelf.com/media/cache/b4/24/b42409de128aa7f1c9abbbfa549914de.jpg",
 "pdf_url": "https://progit2.s3.amazonaws.com/en/2015-03-06-439c2/progit-en.376.pdf",
 "tags": "version control, git",
 "title": "Pro Git"
 }
 */

//MARK: -Aliases

typealias JSONObject = AnyObject
typealias JSONDictionary = [String: JSONObject]
typealias JSONArray = [JSONDictionary]

//MARK: - Decodification


func decode(book json: JSONDictionary) throws-> Book{
    //validar dict
    
    
    guard let urlString = json["pdf_url"] as? String, pdfUrl = NSURL(string: urlString) else{
        throw BooksError.wrongURLFormatForJSONResource
    }
    guard let imageFile = json["image_url"] as? String, imageUrl = NSURL(string: imageFile) else{
        throw BooksError.wrongURLFormatForJSONResource
    }
    
    let authors = json["authors"] as? String
    let tags    = json["tags"] as? String
    let title   = json["title"] as? String
}