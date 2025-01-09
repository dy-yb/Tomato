//
//  CoreDataController.swift
//  Tomato
//
//  Created by Daye on 1/3/25.
//

import Foundation
import CoreData

class CoreDataController: ObservableObject {
    let container: NSPersistentContainer

    init() {
        container = NSPersistentContainer(name: "TomatoModel")
        container.loadPersistentStores { _, error in
            if let error {
                fatalError("Failed to load persistent stores: \(error)")
            }
        }
    }

    func saveContext(_ context: NSManagedObjectContext) {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nsError = error as NSError
                fatalError("Failed to save persistent store: \(nsError)")
            }
        }
    }

    func addLetter(_ input: Letter, context: NSManagedObjectContext) {
        guard let entity = NSEntityDescription.entity(
            forEntityName: "LetterEntity",
            in: context
        ) else {
            fatalError("Failed to find entity description for 'LetterEntity'")
        }

        let letter = LetterEntity(entity: entity, insertInto: context)
        letter.recipient = input.recipient
        letter.content = input.content
        letter.creationDate = Date()

        saveContext(context)
    }
}
