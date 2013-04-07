package grailsworkshop2013_1_5

class UserController {
    
    def scaffold = User
    def index() { 
        redirect(action : list)
    }
}
