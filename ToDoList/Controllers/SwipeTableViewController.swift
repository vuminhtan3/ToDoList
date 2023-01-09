//
//  SwipeTableViewController.swift
//  ToDoList
//
//  Created by Minh Tan Vu on 09/01/2023.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {

    var cell: UITableViewCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath) as! SwipeTableViewCell
        
        cell.delegate = self
        
        return cell
    }
    
    //MARK: - Swipe Cell Delegate Methods
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeCellKit.SwipeActionsOrientation) -> [SwipeCellKit.SwipeAction]? {
        
        guard orientation == .right else { return nil }

            let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
                // handle action by updating model with deletion
                
                self.updateModel(at: indexPath)
//                if let categoryForDeletion = self.categories?[indexPath.row]{
//                    do{
//                        try self.realm.write({
//                            self.realm.delete(categoryForDeletion)
//                        })
//                    } catch {
//                        print("Error deleting category, \(error)")
//                    }
//                }
            }

            // customize the action appearance
            deleteAction.image = UIImage(named: "Trash-Icon")

            return [deleteAction]
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
        var options = SwipeTableOptions()
        options.expansionStyle = .destructive
//        options.transitionStyle = .border
        return options
    }
    
    func updateModel(at indexPath : IndexPath) {
        // Update data model.
    }

}
