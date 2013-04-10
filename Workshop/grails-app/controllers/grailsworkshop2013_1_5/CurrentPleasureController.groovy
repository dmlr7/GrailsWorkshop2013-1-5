package grailsworkshop2013_1_5
/*
 *This Controller creates a view that shows all the trips scheduled by
 *the users under the specific purpose "Pleasure".
*/
class CurrentPleasureController {

    def index = { 
        redirect(action: "currentPleasure")
    }
   
    def currentPleasure = {
        def trips = Trip.findAllByPurpose("Pleasure")
        [trips:trips]
    }
}

