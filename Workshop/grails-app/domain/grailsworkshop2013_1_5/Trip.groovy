package grailsworkshop2013_1_5

class Trip {
    
    String name
    String city
    Date startDate
    Date endDate
    
    String purpose
    String notes
    
    static belongsto = [owner : User]

    static constraints = {
        name blank: false, size: 3..15
        city blank: false
    }
    
    String toString() {
        "${name}"
    }
}
