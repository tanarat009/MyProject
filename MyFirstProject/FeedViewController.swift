//
//  FeedViewController.swift
//  MyFirstProject
//
//  Created by IndyZa on 5/29/2560 BE.
//  Copyright © 2560 IndyZaLab. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
   
    var newsArray:[News] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        setupTableViewDummyData()
       
        
       
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupTableView(){
         self.tableView.register(UINib(nibName: "FeedTableViewCell", bundle: nil), forCellReuseIdentifier: "FeedTableViewCell")
    }
    
    func setupTableViewDummyData(){
        let news:News = News(title: "iOS", description: "Error lets stop doing this", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "พยุต", view: 2, createDate: "29/06/60", New: "New")
        
        let news2:News = News(title: "Android", description: "5555+", iconImage: #imageLiteral(resourceName: "cat"), author: "แจ็ค", view: 9999, createDate: "29/06/60", New: "sport")
        
         let news3:News = News(title: "IT", description: "Show", iconImage: #imageLiteral(resourceName: "rocket_icon2"), author: "อ่านต่อ", view: 99, createDate: "30/06/60", New: "IT")
        
         let news4:News = News(title: "ดูดวง", description: "แม่น", iconImage: #imageLiteral(resourceName: "dog"), author: "คลิกๆ", view: 99, createDate: "29/06/60", New: "🙏🏻")
        
        
        newsArray.append(news)
        newsArray.append(news2)
        newsArray.append(news3)
        newsArray.append(news4)
    
    }
    
    
    func toFeedDetaViewController(news:News){
        if let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "FeedDetaViewController") as?
            FeedDetaViewController{
            ViewController.news = news
            self.navigationController?.pushViewController(ViewController, animated: true)
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

extension FeedViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowNo = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as! FeedTableViewCell
        let news:News = newsArray[rowNo]
        cell.iconImgView.image = news.iconImage
        cell.titleLabel.text = news.title
        cell.descriptionLabel.text = news.description
        cell.New.text = news.New
        cell.accessoryLabel.text = "\(news.author) • \(news.view) views • \(news.createDate) "
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let rowNo = indexPath.row
        var news : News = newsArray[rowNo]
        
        self.toFeedDetaViewController(news: news)
    }
}


