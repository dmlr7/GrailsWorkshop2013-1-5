package grailsworkshop2013_1_5

class Budget {
    
    Float food
    Float lodging
    Float tickets
    Float otherexpenses
   
    Trip trip 
    
    static constraints = {
        trip nullable: true
    }
    
      
}
