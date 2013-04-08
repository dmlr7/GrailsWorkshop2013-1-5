package grailsworkshop2013_1_5

class Budget {
    
    Float food
    Float lodging
    Float tickets
    Float otherexpenses
   
    Trip trip 
    
    static belongsTo = [owner : Trip]
    static constraints = {
        trip nullable: true
    }
    
      
}
