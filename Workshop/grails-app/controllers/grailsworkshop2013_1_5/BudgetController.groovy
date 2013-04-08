package grailsworkshop2013_1_5



class BudgetController {

    def scaffold = User
    def index() { 
        redirect(action : list)
    }
}
