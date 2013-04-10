package grailsworkshop2013_1_5
/*
 *This Controller creates a view that list 
 *all the trips created by the users.
*/
class TripController {
    
    //Creates default CRUD for Trip Module
    def scaffold = Trip
    
    //Default action: List Trips
    def index() { 
        redirect(action : list)
    }
}
