//
//  Book.swift
//  hackersBooks
//
//  Created by Nacho Villaverde Montalvo on 6/7/16.
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

class Book: Comparable, Hashable {
    
    
    //MARK: - Stored properties
    let authors: [String]
    let imageUrl: NSURL
    let pdfUrl: NSURL
    let tags: [Tag]
    let title: String
    var isFavorite: Bool
    
    
    
    
    //MARK: - INIT
    
    init (authors: [String], imageUrl: NSURL, pdfUrl: NSURL, tags: [Tag], title: String, isFavorite: Bool){
        self.authors = authors
        self.imageUrl = imageUrl
        self.pdfUrl = pdfUrl
        self.tags = tags
        self.title = title
        self.isFavorite = isFavorite
    }
    
    //MARK: - Utils
   

    
    
    
   //MARK: - hashable
    var hashValue: Int {
        get{
            return title.hashValue
        }
    }

}


//MARK: - Extensions

extension Book {
    
    var proxyForComparison : String{
        get{
            return "\(title)\(authors)"
        }
    }
    
    var proxyForSorting : String{
        get{
            return "\(title)\(authors)\(tags)"
        }
    }
}



//MARK: Equatable


func ==(lhs: Book, rhs: Book) -> Bool{
    
    guard (lhs !== rhs) else{
        return true
    }
    return lhs.proxyForComparison == rhs.proxyForComparison
    
}


//MARK: Comparable

func <(lhs: Book, rhs: Book) -> Bool{
    
    return lhs.proxyForSorting < rhs.proxyForSorting
    
}
//MARK: CustomStringConvertible

extension Book : CustomStringConvertible{
    var description: String{
        get{
            return "<\(self.dynamicType)\(title)--\(authors)>"
        }
    }
}


