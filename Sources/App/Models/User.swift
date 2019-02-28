//
//  User.swift
//  App
//
//  Created by Everis on 27/02/19.
//

import Foundation
import Vapor
struct  User :  Content {
    
    //Add your properties like you normally would in iOS
    var id: Int
    var userName: String
    var password: String
    
    //Convinience method for instanciation of our object
//    init(id: Int, userName: String, password: String) {
//        self.id = id
//        self.userName = userName
//        self.password = password
//    }
}
