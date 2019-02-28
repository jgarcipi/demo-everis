import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
     //Creating our object
    let user = User(id: 1, userName: "junior", password: "1234r")
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    
    router.get("user") { req -> User in
        return User(
            id: 2,
            userName: "user@vapor.codes",
            password: "Vapor User"
        )
    }
    
    router.get("getuser") { req -> User in
        
        //Formating it into JSON
        return User(
            id: user.id,
            userName: user.userName,
            password: user.password
        )
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
