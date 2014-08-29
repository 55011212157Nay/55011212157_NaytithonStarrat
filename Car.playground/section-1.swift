class showroomcar
{
    let username :String
    let car :String
    var userID :[String:String]=["champ":"370z"]
    
    init (username : String,car :String)
    {
        self.username = username
        self.car = car
        userID = [username:car]
    }
    
    func addusername(username :String,car :String){
        userID[username] = car
    
    }
}
var showroom = showroomcar(username:"Nay", car:"PCX")
showroom.addusername("Jay", car: "ford")
showroom.userID