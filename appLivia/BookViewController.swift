//
//  BookViewController.swift
//  appLivia
//
//  Created by COSC3326 on 3/4/17.
//  Copyright © 2017 COSC3326. All rights reserved.
//

import UIKit

class BookViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       


        // Do any additional setup after loading the view.
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

    
    
    @IBOutlet weak var btnBook: UIButton!
    
    //IBOutlet weak var btnAward: UIButton!
    
    
    @IBAction func btnBuyBook(_ sender: Any) {
        
        let url = URL(string: "https://www.amazon.com/BrainWave-File-Novelette-L-Felix-ebook/dp/B01DEOKZ1M")
        
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        
    }
    
    
}
