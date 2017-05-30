//
//  FeedDetaViewController.swift
//  MyFirstProject
//
//  Created by tanarat wuttipornpong on 30/5/60.
//  Copyright © พ.ศ. 2560 IndyZaLab. All rights reserved.
//

import UIKit

class FeedDetaViewController: UIViewController {

    
    @IBOutlet weak var header: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var accessotyLabel: UILabel!
    
    @IBOutlet weak var DataTextView: UITextView!
    
    var news:News?
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // self.news = News(title: "iOS", description: "Error lets stop doing this", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "พยุต", view: 2, createDate: "29/06/60", New: "New")
        
        self.setupUI()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onCilckSavebutton(_ sender: Any) {
        
        
    }

    func setupUI(){
        if let news = self.news{
            self.header.image = news.iconImage
            self.titleLabel.text = news.title
            self.DataTextView.text = news.description
            self.accessotyLabel.text = "\(news.author) • \(news.view) views • \(news.createDate) "
            
        }
    
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
