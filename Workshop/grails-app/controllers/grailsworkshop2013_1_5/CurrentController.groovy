package grailsworkshop2013_1_5

class CurrentController {
    
    def index = { 
        redirect(action: "current")
    }
   
    def current = {
        def trips = Trip.list()
        [trips:trips]
    }
}
