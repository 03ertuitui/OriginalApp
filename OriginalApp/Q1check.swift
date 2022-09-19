//
//  第一問.swift
//  OriginalApp
//
//  Created by 伊藤あかり on 2022/09/16.
//

import UIKit
//import RealmSwift

class Q1check: UIViewController {
    
  //  @IBOutlet var Q1_1: UIButton!
    //@IBOutlet var Q1_2: UIButton!
    
    var Q1 = 0
    
    //let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //let memo: Memo? = read()
        //Q1file = memo!.Q1
    }
    
   
    @IBAction func Q1button_1(){
        //let memo = Memo()
        /*memo.*/Q1 = 1
    }
    
    @IBAction func Q1button_2(){
        //let memo = Memo ()
         /*memo.*/Q1 = 2
    }

   /* func read () -> Memo?{
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
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {}

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Q2check:Q2check = segue.destination as! Q2check
        Q2check.Q1 = self.Q1
    }
}
