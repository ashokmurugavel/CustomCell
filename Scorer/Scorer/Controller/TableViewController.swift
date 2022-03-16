//
//  TableViewController.swift
//  Scorer
//
//  Created by Ashok Murugavel on 15/03/22.
//

import UIKit
struct celldata{
    let cell : Int!
    let text:String!

}
class TableViewController: UITableViewController {
    
    var arrayOfCellData = [celldata]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfCellData = [celldata(cell: 1, text: "Ashok"),celldata(cell: 2, text: "Arabic")]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func registercell(){
        self.tableView.register(UINib(nibName: "LableTableViewCell", bundle: nil),forCellReuseIdentifier: "LabelTableViewCell")
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayOfCellData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(arrayOfCellData[indexPath.row].cell == 1){
            let cell = Bundle.main.loadNibNamed("LabelTableViewCell", owner: self, options: nil)?.first as! LabelTableViewCell
            cell.LabelOut.text = "Gotcha"
            cell.LabelOut.sizeToFit()
            return cell
        }
        else
        {
            let cell = Bundle.main.loadNibNamed("LabelTableViewCell", owner: self, options: nil)?.first as! LabelTableViewCell
            cell.LabelOut.text = "Gone"
            return cell
        }
        
        
        // Configure the cell..
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == 0){
            return 100
        }
        else{
            return 50
        }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
