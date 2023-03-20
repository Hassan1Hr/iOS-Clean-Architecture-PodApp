//
//  TestFile.swift
//  MyPodcasts
//
//  Created by mac on 04/01/2023.
//

import Foundation

class AnimalFeed {
    
}
protocol Animal {
    associatedtype Feed: AnimalFeed
    
    func eat(food: Feed)
}

struct Coat {
    func feed<A: Animal>(_ animal: A){
        
    }
}
