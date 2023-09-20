//
//  ExpenseHelper.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/27/23.
//

import Foundation

class ExpenseHelper {
    
    /**
     4.2 Create a static function called `calculateTotalSpent` that accepts an array of `Expense` and returns the total amount of money the user spent. Feel free to run the provided test to know if your code is correct.
     */
    static func calculateTotalSpent(expenses: [Expense]) -> Double {
        var returnAmount = 0.0
        for expense in expenses {
            returnAmount += expense.amount
            
        }
        return returnAmount
        
    }
        /**
         4.2 Create a static function called `getExpensesByCategory` that accepts an array of `Expense` and returns a dictionary where each key is a category and each value is an array of `Expense` belonging to that category. Feel free to run the provided test to know if your code is correct.
         */
    static func getExpensesByCategory(expenses:[Expense]) -> [String:[Expense]] {
        var expensesDictionary = [String: [Expense]]()

               for expense in expenses {
                   let category = expense.category
                   if expensesDictionary[category] == nil {
                       expensesDictionary[category] = [expense]
                   } else {
                       expensesDictionary[category]?.append(expense)
                   }
               }

               return expensesDictionary
           }
    
}
    
    

    

