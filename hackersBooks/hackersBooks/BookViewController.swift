//
//  BookViewController.swift
//  hackersBooks
//
//  Created by Nacho Villaverde Montalvo on 13/7/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import UIKit

class BookViewController: UIViewController {
    let model : Book
    
    @IBOutlet weak var photoView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var authorsLabel: UILabel!
    
    //MARK: - Actions
    @IBAction func readPDF(sender: AnyObject) {
        
        //crear pdfVC
        let pdfVC = PDFViewController(model: model)
        
        //hacer push sobre navigation controller
        navigationController?.pushViewController(pdfVC, animated: true)
    }
    
    @IBAction func Favorite(sender: AnyObject) {
    }
   
    //MARK: - Init
    init(model: Book){
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - sync model with view
    
    
    func syncModelWithView(){
        photoView.image = model.photo
        title = model.title
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        syncModelWithView()
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
