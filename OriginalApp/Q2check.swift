//
//  第二問.swift
//  OriginalApp
//
//  Created by 伊藤あかり on 2022/09/16.
//

import UIKit
//import RealmSwift

class Q2check: UIViewController {
    
    var Q2 = 0
    var Q1: Int!
    //let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //let memo: Memo? = read()
        //Q2file = memo!.Q2
        
    }
    
     @IBAction func Q2button_1(){
         //let memo = Memo()
         /*memo.*/Q2 = 1
     }
     
     @IBAction func Q2button_2(){
         //let memo = Memo ()
         /*memo.*/Q2 = 2
     }
    /*func read () -> Memo?{
        return realm.objects(Memo.self).first
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let RESULT:RESULT = segue.destination as! RESULT
            RESULT.Q2 = self.Q2
            RESULT.Q1 = self.Q1

        }
}
