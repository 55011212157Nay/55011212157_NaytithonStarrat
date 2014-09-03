class showroomcar
{
    let username :String
    let car :String
    var userID :[String:String]
    init (username : String,car :String)
    {
        self.username = username
        self.car = car
        userID = [username:car]
    }
    
    func addusername(username :String,car :String){
        userID[username] = car
    }
    
    func countuser(){
        var total = userID.count
        println("Username & Car =\(total)")
    }
    
    func addCar(alluser:Dictionary<String,String>){
        
        //    for (var i=0 ; i<.count;i++)
        
        for(key,value) in alluser
        {
            userID [key] = value
            println("key: \(key) value:\(value)")
        }
        for username in alluser.keys {
            println("Username: \(username)")
        }
        for car in alluser.values{
            println("Car: \(car)")
        }
    }
    
}


var showroom = showroomcar(username:"Nay", car:"Forza")
showroom.addusername("Ice", car: "Wave")
showroom.addusername("Gle", car: "EBella")
showroom.addusername("Champ", car: "Alfa")
showroom.userID

showroom.countuser()
showroom.addCar(["gjrgjrgjr":"fgkdopfhj","sdfsdf":"sdgsdg"])
