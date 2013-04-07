package grailsworkshop2013_1_5

class User {
    
    String name
    String lastname
    String login
    String password
    
    static hasMany = [trips : Trip]
    
    String toString() {
        "${name} + ${lastname}"
    }
    
    static constraints = {
    }
}
