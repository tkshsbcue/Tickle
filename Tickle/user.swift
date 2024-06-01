//
//  user.swift
//  Tickle
//
//  Created by Kumar Tanay on 01/06/24.
//

import Foundation


struct User: Codable{
    let id: String
    let name:String
    let email:String
    let joined:TimeInterval
}
