func myfunction(name: String?){
    guard let name = name, name != "" else{
        print("there is no name")
        return
    }
    
    print(name)
}

    myfunction(name: "")
