  //
//  DataController.swift
//  Mooskine
//
//  Created by juan on 11/25/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import CoreData
  
class DataController {
    
    let persistentContainer: NSPersistentContainer
    
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    init(modelName: String) {
        persistentContainer = NSPersistentContainer(name: modelName)
    }
    
    func load(completion:(() -> Void)? = nil) {
        persistentContainer.loadPersistentStores{ storeDescription, error in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
            completion?()
        }
    }
}
