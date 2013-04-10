package grailsworkshop2013_1_5
/*
 *This class represents a budget of a trip. 
 *A budget only belongs to 1 Trip.
*/
class Budget {
    
    Float food
    Float lodging
    Float tickets
    Float otherexpenses
   
    Trip trip 
    
    //Class relations (DB Relations)
    static belongsTo = [owner : Trip]
    
    //Budget constrains
    static constraints = {
        trip nullable: true
    } 
}
