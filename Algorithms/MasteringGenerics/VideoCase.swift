//
//  VideoCase.swift
//  Algorithms
//
//  Created by ramil on 15.04.2021.
//

import Foundation

class VideoCase: Storage {
    
    private var games = [VideoGame]()
    
    func store(item: VideoGame) {
        games.append(item)
    }
    
    func retrive(index: Int) -> VideoGame {
        return games[index]
    }
}
