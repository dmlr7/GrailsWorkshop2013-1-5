package grailsworkshop2013_1_5

class TripController {

    //def index() { }
    def save = {
        def trip = new Trip(params)
        if(!trip.hasErrors() && trip.save()){
            flash.message = "Trip ${trip.id} created"
            redirect(action:show,id,trip,id)
        }
        else{
            render(view:'create',model:[trip:trip])
        }
    }
    
    def scaffold = Trip
}
