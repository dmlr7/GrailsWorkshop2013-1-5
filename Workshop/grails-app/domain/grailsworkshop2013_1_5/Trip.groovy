package grailsworkshop2013_1_5

class Trip {
    
    String name
    String city
    Date startDate
    Date endDate
    
    String purpose
    String notes
    
    static belongsto = [owner : User]
    static hasOne = [budget:Budget]
    static constraints = {
        name blank: false, size: 3..15, unique : false // d. There can be only one trip under the same nam
        city blank: false
        startDate blank: false
        endDate blank: false
        purpose blank: false
        notes blank: false
        startDate min: new Date()
        endDate min: new Date()
//      a. Neither the start Date nor the end Date can be previous to the current Date
//      b. None of the fields of Trip can be left blank

        purpose inList: ["Pleasure", "Education", "Business" ,"Scientific" , "Political"]
        //e. The  purpose  of  the  Trip  should  be   one  of  the  following:  Pleasure,  Education,  business,
           //Scientific, Political
       budget nullable: true
    }
    
    String toString() {
        "${name}"
    }
}
