package grailsworkshop2013_1_5
/*
 *This class represents a User in the system.
 *An User can schedule many trips.
*/
class User {
    
    String name
    String lastname
    String login
    String password
    
    //Class relations (DB Relations)
    static hasMany = [trips : Trip]
    
    //Function to get Users name when associates to a Trip
    String toString() {
        "${name} + ${lastname}"
    }
    
    //User constrains
    static constraints = {
        name blank:false, size:3..15
        lastname blank:false, size:3..15
        login blank:false, size:3..15
        password blank:false, size:6..15
    }
}
