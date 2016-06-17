//
//  ShowDetailViewController.swift
//  midExam
//
//  Created by Leo on 6/17/16.
//  Copyright © 2016 Leo. All rights reserved.
//

import UIKit

class ShowDetailViewController: UIViewController {

    @IBOutlet weak var movieTitle: UINavigationItem!
    @IBOutlet weak var detailTextLabel: UILabel!
    @IBOutlet weak var showImage: UIImageView!
    var movies: ImageData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showImage.image = UIImage(named: (movies?.name)!)
        self.movieTitle.title = movies?.name
        self.detailTextLabel.text = movies?.descriptions
        
        // Do any additional setup after loading the view.
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
