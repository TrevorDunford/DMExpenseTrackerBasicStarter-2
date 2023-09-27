//
//  ExpenseCell.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/28/23.
//

import UIKit

class ExpenseCell: UITableViewCell {
    
    /**
     10.1 Connect the UILabels to the code.
     */
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var amountLabel: UILabel!
    /**
     11.1 Have the UILabels display the title and amount of the passed`Expense`.
     */
    func set(expense: Expense) {
        categoryLabel.text = expense.title
        amountLabel.text = expense.amount.formatted(.currency(code: "USD"))
            }
    
    }

//var totalSpentFormatted = totalSpent.formatted(.currency(code: "USD"))
//amountSpent.text = "You spent \(totalSpentFormatted) on \(category)"
