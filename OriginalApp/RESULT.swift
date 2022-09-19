//
//  RESULT.swift
//  OriginalApp
//
//  Created by 伊藤あかり on 2022/09/16.
//

import UIKit
//import RealmSwift

class RESULT: UIViewController {
    @IBOutlet var ResultImageView: UIImageView!
    @IBOutlet var NameLabel: UILabel!
    
   // let realm = try! Realm()
    
    var Q1: Int!
    var Q2: Int!
   // var shindan: Results<Memo>!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   // let Memo = realm.objects(Memo.self)
        
        //let memo: Memo? = read()
        // Do any additional setup after loading the view.
        self.kekka()
    }
    
    /*func read () -> Memo?{
        return realm.objects(Memo.self).first
    }*/
    
    func kekka(){
        print(Q1!)
       //let memo: Memo? = read()
        if Q1 == 1 && Q2 == 1 {
            ResultImageView.image = UIImage(named:"zun.jpeg")
            NameLabel.text = "ずん"
        }else if Q1 == 2 && Q2 == 1 {
            ResultImageView.image = UIImage(named:"maruko.jpeg")
            NameLabel.text = "まるこ"
        }else if Q1 == 1 && Q2 == 2 {
            ResultImageView.image = UIImage(named:"reika.jpeg")
            NameLabel.text = "れいか"
        }else if Q1 == 2 && Q2 == 2 {
            ResultImageView.image = UIImage(named:"rei.jpeg")
            NameLabel.text = "令"
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
  
}
