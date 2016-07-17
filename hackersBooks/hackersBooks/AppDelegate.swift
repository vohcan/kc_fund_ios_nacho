////
////  AppDelegate.swift
////  hackersBooks
////
////  Created by Nacho Villaverde Montalvo on 5/7/16.
////  Copyright © 2016 vohcan. All rights reserved.
////
//
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
       
        //crear instancia de model
        /*
         {
         "authors": "Scott Chacon, Ben Straub",
         "image_url": "http://hackershelf.com/media/cache/b4/24/b42409de128aa7f1c9abbbfa549914de.jpg",
         "pdf_url": "https://progit2.s3.amazonaws.com/en/2015-03-06-439c2/progit-en.376.pdf",
         "tags": "version control, git",
         "title": "Pro Git"
         }
         
         */
        
        
   let model = json //Book(authors: authors, imageUrl: photo, pdfUrl: pdf, tags: tags, title: title)
        
        
//        //crear window
//        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
//        
//        //crear un vc
       let vc = BookViewController(model: model)
//        
//        //empotrar en navigation
      
      let nav = UINavigationController(rootViewController: vc)
//        
//        //asignar nav como rootVc
       
        window?.rootViewController = nav
//        
//        //hacer visible la window
//        
     window?.makeKeyAndVisible()
//        
//        
   return true
    }
 
////        //crear window
////        
//        window = UIWindow(frame: UIScreen.mainScreen().bounds)
//        
//        
//        //crear instancia del modelo
//        
//        do{
//           var json : JSONArray = try loadFromLocalFile(fileName: "books_readable.json")
//           // print(json) para ver que sale el json
//            
//            var books = [Book]()
//            for dict in json{
//                do{
//                     let books = try decode(book: dict)
//
//                }catch{
//                    print("error al procesas \(dict)")
//                }
//                           }
//            
//            //crear el modelo
//            let model = Library()
//        }catch{
//            fatalError("Error while loading JSON")
//        }
//        
//        
//        
//        
//        //crear un vc
//        
//        //empotrar en navigation
//        
//       
//        
//        //asignar nav como rootVc
//        
//      
//        
//        //hacer visible la window
//        
//        window?.makeKeyAndVisible()
//        
//        
//        return true
//    }
//
////    func applicationWillResignActive(application: UIApplication) {
////        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
////        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
////    }
////
////    func applicationDidEnterBackground(application: UIApplication) {
////        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
////        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
////    }
////
////    func applicationWillEnterForeground(application: UIApplication) {
////        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
////    }
////
////    func applicationDidBecomeActive(application: UIApplication) {
////        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
////    }
////
////    func applicationWillTerminate(application: UIApplication) {
////        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
////    }
////
////
}

