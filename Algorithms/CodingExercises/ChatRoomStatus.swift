//
//  ChatRoomStatus.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 09.01.2021.
//

import Foundation

class ChatRoomStatus {
    
    func chatroomStatus(_ users: [String]) -> String {
        var ans = ""
        
        switch users.count {
        case 0:
            ans = "no one online"
        case 1:
            ans = "\(users[0]) online"
        case 2:
            ans = "\(users[0]) and \(users[1]) online"
        case 3...users.count:
            ans = "\(users[0]), \(users[1]) and \(users.count - 2) more online"
        default:
            ans = "no one online"
        }
        return ans
    }
}
