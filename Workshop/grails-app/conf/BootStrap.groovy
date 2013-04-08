import grailsworkshop2013_1_5.*
class BootStrap {

    def init = { servletContext ->
        //new Trip(name:"trip1",city:"Bogota D.C",startDate:"2014-04-15 00:00:00 COT",endDate:"2014-04-18 00:00:00 COT", purpose:"Pleasure",notes:"Nothing", Budget:null ).save()
     
        new User(name:"Eduardo",lastname:"Romero", login:"edromero", password:"kjhllkj", Trip:"trip1").save() 
        new User(name:"Jorge",lastname:"Serrano", login:"jaserranoj", password:"kjhllkj", Trip:"trip2").save() 
    }
    def destroy = {
    }
}
