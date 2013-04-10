package grailsworkshop2013_1_5

/*
 *This class represents a Trip that is scheduled by an User.
 *A Trip only belongs to 1 particular User.
*/
class Trip {
    
    String name
    String city
    Date startDate
    Date endDate
    
    String purpose
    String notes
    
    //Class relations (DB Relations)
    static belongsto = [owner : User]
    static hasOne = [budget:Budget]
    
    //Trip constrains
    static constraints = {
        name blank: false, size: 3..15, unique: true  // d. There can be only one trip under the same name
        city blank: false
        startDate blank: false
        endDate blank: false
        purpose blank: false
        notes blank: false
        startDate min: new Date()
        endDate min: new Date() 
        purpose inList: ["Pleasure", "Education", "Business" ,"Scientific" , "Political"]
        budget nullable: true
    }
    
    //Function to get Trips name when associates to a User
    String toString() {
        "${name}"
    }
}
