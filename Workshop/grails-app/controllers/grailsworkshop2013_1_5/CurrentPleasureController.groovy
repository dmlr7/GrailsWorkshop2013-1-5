package grailsworkshop2013_1_5

class CurrentPleasureController {

    def index = { 
        redirect(action: "currentPleasure")
    }
   
    def currentPleasure = {
        def trips = Trip.findAllByPurpose("Pleasure")
        [trips:trips]
    }
}

//f. Modify  the   already  existing  view  ‘current  view’  or  create a new view that displays only the
//   Trips made by an specific Purpose, the team can choose the purpose to use.

