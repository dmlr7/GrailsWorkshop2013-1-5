package grailsworkshop2013_1_5

class TripController {

    //def index() { }
    
    def scaffold = Trip
    
     def index() { 
        redirect(action : list)
    }
}
