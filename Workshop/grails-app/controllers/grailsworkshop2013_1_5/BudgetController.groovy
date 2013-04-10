package grailsworkshop2013_1_5
/*
 *This Controller creates a view that list all the budgets
 *associated to the different trips in the system.
*/

class BudgetController {

    def scaffold = Budget
    def index() { 
        redirect(action : list)
    }
}
