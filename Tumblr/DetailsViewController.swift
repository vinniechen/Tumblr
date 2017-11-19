//
//  DetailsViewController.swift
//  Tumblr
//
//  Created by Vinnie Chen on 11/18/17.
//  Copyright © 2017 Vinnie Chen. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    var post : [String: Any] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let photos = post["photos"] as? [[String: Any]] {
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            postImageView.af_setImage(withURL: url!)
        }
        
        var caption = post["caption"] as? String
        caption?.removeFirst(4)
        caption?.removeLast(9)
        captionLabel.text = caption
        // Do any additional setup after loading the view.
    }

    @IBAction func onExit(_ sender: Any) {
        self.dismiss(animated: true) {
    
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
