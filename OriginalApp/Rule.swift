//
//  説明.swift
//  OriginalApp
//
//  Created by 伊藤あかり on 2022/09/16.
//

import UIKit

class rule: UIViewController {

    @IBOutlet var gobutton: UIButton!
    @IBOutlet var ruleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        gobutton.layer.cornerRadius = 40
        ruleLabel.layer.cornerRadius = 100
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
