package grailsworkshop2013_1_5



class BudgetController {

    def scaffold = Budget
    def index() { 
        redirect(action : list)
    }
}
