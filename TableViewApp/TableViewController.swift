//
//  TableViewController.swift
//  TableViewApp
//
//  Created by 西村映人 on 2020/09/06.
//  Copyright © 2020 西村映人. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var names:[String] = ["米倉","門田","金子","高橋","渋谷","isobe",]
    
    var resultArray = [String]()
    
    override func viewWillAppear(_ animated: Bool) {
        
//        UserDefaultsがnilでなければ
        
        if UserDefaults.standard.object(forKey: "add") != nil{
            
//            現在UserDefaultsに保存された配列の値をresultArrayに入れる
            
            resultArray = UserDefaults.standard.object(forKey: "add") as! [String]
        
        }
        
        tableView.reloadData()
        
    }
    
    
    @IBAction func testButton(_ sender: Any) {
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

//        print(names[3])
//
//        names[3]="aaa"
//
//        print(names[3])
//
//        names.append("kato-")
//
//        print(names)
//
//        names.insert("tatikawa", at: 1)
//
//        print(names)
//
//        names.remove(at: 5)
//
//        print(names)
//
//        names.removeLast()
//
//        print(names)
//
//        names.removeAll()
//
//        print(names)
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resultArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)

        cell.textLabel?.text=resultArray[indexPath.row]

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            resultArray.remove(at: indexPath.row)
            UserDefaults.standard.set(resultArray, forKey:"add")
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
