//
//  firstTableViewController.swift
//  Lang
//
//  Created by Pranav Shashikant Deshpande on 7/12/17.
//  Copyright © 2017 Pranav Shashikant Deshpande. All rights reserved.
//

import UIKit
import Loki

class firstTableViewController: UITableViewController, SecondViewController {
    
    var language = "English"
    //var listArray = ["first", "Second", "third", "language"]

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        if language == "English"{
            if let item = LKManager.sharedInstance().languages[0] as? LKLanguage{
                LKManager.sharedInstance().currentLanguage = item
            }
        }
            if language == "French"{
                if let item = LKManager.sharedInstance().languages[1] as? LKLanguage{
                    LKManager.sharedInstance().currentLanguage = item
                }
        }
                if language == "German"{
                    if let item = LKManager.sharedInstance().languages[2] as? LKLanguage{
                        LKManager.sharedInstance().currentLanguage = item
                    }
        }
        switch indexPath.row{
        case 0:
            cell.textLabel?.text = NSLocalizedString("KeyTesting", comment: "")
        case 1:
            cell.textLabel?.text = NSLocalizedString("keySecond", comment: "")
        case 2:
            cell.textLabel?.text = NSLocalizedString("keyThird", comment: "")
        case 3:
            cell.textLabel?.text = "Language"
        
        default:
            cell.textLabel?.text = nil
        }
    
       

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "secondTableViewController") as? secondTableViewController{
            
            let current = tableView.cellForRow(at: indexPath) as! UITableViewCell
            if current.textLabel!.text == "Language"
            {
                viewController.delegate = self
                 self.navigationController?.pushViewController(viewController, animated: true)
            }
           
        }
        
    }
    
    func passLanguageValue(value:String){
        print("value", value)
        language = value
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    // In a storyboard-based applicatiosn, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
