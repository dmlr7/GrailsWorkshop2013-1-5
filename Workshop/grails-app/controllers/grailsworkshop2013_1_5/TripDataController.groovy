package grailsworkshop2013_1_5
/*
 *This Controller creates a view that shows an user list, specifing 
 *their names, lastnames and related trips.
*/
class TripDataController {

    def index = { 
        redirect(action : tripData)
    }
    
    def tripData = {
        def users = User.list()
        [users:users]
    }
}
