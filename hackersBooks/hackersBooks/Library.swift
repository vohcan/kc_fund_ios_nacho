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
    
//MARK: -Properties
    
    var dict : TagDictionary
    
    
    
    //init carbgar los datos de json y meter en diccinary
    init(books b : [Book]){
        
        for each in b{
        
        
        self.dict = dict
        //cargar libros
        var books = loadFromLocalFile(fileName: "books_readable.json")
    }
    //var para las secciones (contar tags
    
    //cuantos libros hay por seccion
    
    //el libro tal de la seccion tal
    
    //nombre de la seccion
    
    
    
    
    
    //MARK: Utils
   
    
}
