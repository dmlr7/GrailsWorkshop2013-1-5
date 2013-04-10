package grailsworkshop2013_1_5
/*
 *This Controller creates a view that shows all the trips scheduled by
 *the users, their names, cities, purposes and total budgets.
*/
class CurrentController {
    
    def index() { 
        redirect(action: "current")
    }
   
    def current = {
        def trips = Trip.list()
        [trips:trips]
    }
}
