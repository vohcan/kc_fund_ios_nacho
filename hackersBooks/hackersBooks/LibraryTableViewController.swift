////
////  LibraryTableViewController.swift
////  hackersBooks
////
////  Created by Nacho Villaverde Montalvo on 14/7/16.
////  Copyright © 2016 vohcan. All rights reserved.
////
//
//import UIKit
//
//class LibraryTableViewController: UITableViewController {
//    
//    //MARK: -Properties
//    
//    let model : Library
//
//    //MARK: -Init
//    
//    init(model : Library){
//        self.model = model
//        super.init(nibName: nil, bundle: nil)
//        
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Uncomment the following line to preserve selection between presentations
//        // self.clearsSelectionOnViewWillAppear = false
//
//        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    // MARK: - Table view data source
//
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1//nº de secciones en la tabla
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 30
//        //
//    }
//
//   
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//
//        //  tipo de celda
//        let cellId = "bookCell"
//        
//        
//        // averiguar libro
//        let particularBook = model.book (at)
//        //crear celda
//        let cell = tableView.dequeueReusableCellWithIdentifier(cellId)
//        if cell == nil{
//            cell = UITableViewCell(style: .Subtitle, reuseIdentifier: cellId)
//        }
//        
//        //sincronizar personaje y celda
//        
//        cell?.imageView?.image = book.photo
//        cell?.textLabel?.text = book.authors
//        cell?.detailTextLabel?.text = book.title
//        
//        
//
//        return cell!
//    }
//    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return book.rawValue
//    }
//
//  }
