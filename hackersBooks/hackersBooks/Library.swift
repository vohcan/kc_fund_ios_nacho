//
//  Library.swift
//  hackersBooks
//
//  Created by Nacho Villaverde Montalvo on 12/7/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import UIKit

class Library {
    
    typealias BookArray = [Book]
    typealias TagArray = [Tag]
    typealias BookSet = Set<Book>
    typealias TagDictionary = [Tag : BookSet]

    var dict : TagDictionary
    var books : BookArray
    var json : JSONArray
    
    
    
    //init carbgar los datos de json y meter en diccinary
    init(){
        
        books = Array<Book>()
        dict = Dictionary <Tag, BookSet>()
        json = JSONArray()
        
        
        
        //cargar json
        json = try! loadFromLocalFile(fileName: "books_readable.json")
        print(json)
    }
    
  
    
    
    
    
//    func JsonArrayToJsonDictionary (jsonArray json: JSONArray)->TagDictionary{
//        
//    }

}
    
////MARK: -Properties
//    
//    var dict : TagDictionary = TagDictionary()
//    
//    
//    
//    //Array de libros
//    var books : BookArray{
//        get{
//            return BookArray()   //.sort({$0.title < $1.title})
//        }
//    }
//    //Array de tags
//    var tags : TagArray{
//        get{
//            return TagArray()
//        }
//    }
//    
//    //numero total de libros
//    var booksCount : Int{
//        get{
//            let countBooks: Int = self.books.count
//        }
//    }
//    
//    //libros en un tag, si no existe debe devolver 0
//    func bookCountForTag (tag: String?)-> Int{
//        
//    }
//    
//    //Array de libros en una tematica
//    
//    func booksForTag (tag: String?)->BookArray?{
//        
//    }
//    
//    func bookAtIndex(index: Int)-> Book?{
//        
//    }
//    
//    //init 
//    //MARK: - Initialization
//    init (){
//        
//    }
//    
//    //cargar los datos de json y meter en diccinary
//    
//    
//
//    //nombre de la seccion

//    
//    MARK: Utils
//   
//    
//}
