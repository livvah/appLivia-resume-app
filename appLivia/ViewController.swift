//
//  ViewController.swift
//  appLivia
//
//  Created by COSC3326 on 3/2/17.
//  Copyright © 2017 COSC3326. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    
    var categories = ["Awards", "Scholarships", "Courses Taken", "Volunteer Work", "Buy My Book"]
    
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        if(indexPath.row == 0){
            print("aaaa")
            let awardVC = self.storyboard?.instantiateViewController(withIdentifier: "awardView")  as! AwardViewController
            //self.show(awardVC, sender: self)
            self.show(awardVC, sender: nil)
            
        
        }
    
        else if(indexPath.row == 1){
    
            let scholarshipVC = self.storyboard?.instantiateViewController(withIdentifier: "scholarshipView")
            self.show(scholarshipVC!, sender: nil)
            
        }
    
        else if(indexPath.row == 2){
    
            let coursesVC = self.storyboard?.instantiateViewController(withIdentifier: "coursesView")
            self.show(coursesVC!, sender: nil)
        }
    
        else if(indexPath.row == 3){
            
            let volunteerVC = self.storyboard?.instantiateViewController(withIdentifier: "volunteerView")
            self.show(volunteerVC!, sender: nil)
        }
    
        else if(indexPath.row == 4){
    
            let bookVC = self.storyboard?.instantiateViewController(withIdentifier: "bookView")  as! BookViewController
            self.show(bookVC, sender: nil)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
        
        
        cell.lblCategory.text = categories[indexPath.row]
        
        return cell
        
    }
    
    //hide status bar
    
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    

}

