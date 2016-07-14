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
    guard let authors = json["authors"]as? String else{
        throw BooksError.wrongJSONFormat
    }
    
    guard let image_urlString = json["image_url"]as? String,
        img = NSURL(string: image_urlString)else{
        throw BooksError.resourcePointedByURLNotReachable
    }
    guard let pdf_urlString = json["pdf_url"] as? String,
        pdf = NSURL(string: pdf_urlString) else{
        throw BooksError.wrongURLFormatForJSONResource
    }
    guard let tagsString = json["tags"]as? String else{
        throw BooksError.wrongJSONFormat
    }
    let tags = tagsToArray(tagsString)
    let title   = json["title"] as? String
        return Book(authors: authors, imageUrl: img, pdfUrl: pdf, tags: tags, title: title!)
    
}
//MARK: - conversion

func tagsToArray(tagString: String)->[String]{
    return tagString.componentsSeparatedByString(", ")
}


//MARK: - Loading

func loadFromLocalFile(fileName name: String, bundle: NSBundle = NSBundle.mainBundle()) throws -> JSONArray{
    if let url = bundle.URLForResource(name),
        data = NSData(contentsOfURL: url),
        maybeArray = try? NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers) as? JSONArray,
        array = maybeArray{
        
        return array
        
    }else{
        throw BooksError.jsonParsingError
    }
}



