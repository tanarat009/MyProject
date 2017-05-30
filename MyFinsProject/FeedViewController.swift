//
//  FeedViewController.swift
//  MyFinsProject
//
//  Created by tanarat wuttipornpong on 29/5/60.
//  Copyright © พ.ศ. 2560 tanarat wuttipornpong. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
  
    
    var new: News = News( title: "ios", description: "Error lets stop doing this", iconImmge: #imageLiteral(resourceName: "cheese_flat"), author: "samart", view: 7,creatData: "29/05/2017" )

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(UINib(nibName: "FileTableViewCell", bundle: nil), forCellReuseIdentifier: "FileTableViewCell")
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}

extension FeedViewController : UITableViewDataSource,UITableViewDelegate{
    //ฟังชั่น ส่วนสูงของแต่ละเซล ทุกอันเป็น100
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    //ฟังชั่น เซกชั่น
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //ฟังชั่น จำนวนแถว
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    //ฟังชั่น บอกว่าต้องการเซลที่เราสร้างขึ้นมาแสดงผล
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FileTableViewCell", for: indexPath) as! FileTableViewCell;cell.icon.image = self.news.iconImmge
            cell.tit.text = self.news.title
            cell.tit2.text = self.news.descripticon
        cell.accessoryLabel.text = "\(self.news.author) • \"(self.nesw.view) view • \(self.news.creataData)"
        
        return cell
    }
}


