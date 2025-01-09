//
//  LetterEntity+CoreDataProperties.swift
//  
//
//  Created by Daye on 1/9/25.
//
//

import Foundation
import CoreData


extension LetterEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LetterEntity> {
        return NSFetchRequest<LetterEntity>(entityName: "LetterEntity")
    }

    @NSManaged public var content: String?
    @NSManaged public var creationDate: Date?
    @NSManaged public var recipient: String?

}
