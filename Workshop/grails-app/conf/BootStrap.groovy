import grailsworkshop2013_1_5.*
class BootStrap {

    def init = { servletContext ->
        
        //Test data
        new User(name:"Jorge",lastname:"Serrano", login:"jaserranoj", password:"kjhllkj", Trip:"Trip 1").save()
        new User(name:"Eduardo",lastname:"Romero", login:"edromero", password:"kjhllkj", Trip:"Trip 2").save() 
        new Trip(name:"Trip 1",city:"Cartagena",startDate:"12/09/2013",endDate:"20/09/2013", purpose:"Pleasure", notes:"None").save()
    }
    def destroy = {
    }
}
