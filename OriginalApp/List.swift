//
//  一覧表.swift
//  OriginalApp
//
//  Created by 伊藤あかり on 2022/09/16.
//

import UIKit
//import RealmSwift

class List: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var ListTableView: UITableView!
    
    var lesserArray = [String]()
    var ImageArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ListTableView.dataSource = self
        ListTableView.delegate = self
        lesserArray = ["まるこ","ずん","令","れいか"]
        ImageArray = ["maruko.jpeg","zun.jpeg","rei.jpeg","reika.jpg"]
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.ListTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 200
    
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lesserArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = lesserArray[indexPath.row]
        cell?.textLabel?.font = UIFont.systemFont(ofSize: 50)
        cell?.imageView?.image = UIImage(named: ImageArray[indexPath.row])
        cell?.imageView?.image = UIImage(named: ImageArray[indexPath.row])?.resize(size: CGSize(width: 150, height: 200))
        return cell!
            
    }
        

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         print("\(lesserArray[indexPath.row])が選ばれました！")
        
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
extension UIImage {

    func resize(size: CGSize) -> UIImage {
        let widthRatio = size.width / self.size.width
        let heightRatio = size.height / self.size.height
        let ratio = (widthRatio < heightRatio) ? widthRatio : heightRatio
        let resizedSize = CGSize(width: (self.size.width * ratio), height: (self.size.height * ratio))
        // 画質を落とさないように以下を修正
        UIGraphicsBeginImageContextWithOptions(resizedSize, false, 0.0)
        draw(in: CGRect(x: 0, y: 0, width: resizedSize.width, height: resizedSize.height))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return resizedImage!
    }
}
