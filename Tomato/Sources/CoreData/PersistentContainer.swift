//
//  PersistentContainer.swift
//  Tomato
//
//  Created by Daye on 1/3/25.
//

import Foundation
import CoreData

struct PersistenceController {
    static let shared = PersistenceController()

    let container: NSPersistentContainer

    init() {
        container = NSPersistentContainer(name: "Tomato")
        container.loadPersistentStores { _, error in
            if let error {
                fatalError("Failed to load persistent stores: \(error)")
            }
        }
    }

    func saveContext() {
        let context = container.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nsError = error as NSError
                fatalError("Failed to save persistent store: \(nsError)")
            }
        }
    }
}
