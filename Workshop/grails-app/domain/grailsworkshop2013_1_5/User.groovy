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
        name blank:false, size:3..15
        lastname blank:false, size:3..15
        login blank:false, size:3..15
        password blank:false, size:6..15
    }
}
