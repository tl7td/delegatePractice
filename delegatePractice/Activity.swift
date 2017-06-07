//
//  Activity.swift
//  delegatePractice
//
//  Created by Tommy Lam on 6/7/17.
//  Copyright © 2017 Tomas Lahm. All rights reserved.
//

import Foundation

class Activity {
    
    var name: String?
    var description: String?
    
    init?(name: String?, description: String?){
        self.name = name
        self.description = description
    }
}
