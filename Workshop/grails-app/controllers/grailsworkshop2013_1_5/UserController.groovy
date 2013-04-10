package grailsworkshop2013_1_5
/*
 *This Controller creates a view that list 
 *all the users registered in the system.
*/
class UserController {
    
    def scaffold = User
    def index() { 
        redirect(action : list)
    }
}
