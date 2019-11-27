//
//  Note+Extension.swift
//  Mooskine
//
//  Created by Juan Arcos on 11/27/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import CoreData

extension Note {
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}
