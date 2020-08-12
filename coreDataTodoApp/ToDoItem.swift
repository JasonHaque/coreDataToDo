//
//  ToDoItem.swift
//  coreDataTodoApp
//
//  Created by Sanviraj Zahin Haque on 12/8/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import Foundation
import CoreData

public class ToDoItem:NSManagedObject,Identifiable{
    
    @NSManaged public var createdAt : Date?
    @NSManaged public var title : String?
    
}

extension ToDoItem{
    
    static func getAllToDoItem()-> NSFetchRequest<ToDoItem>{
        let request : NSFetchRequest<ToDoItem> = ToDoItem.fetchRequest() as! NSFetchRequest<ToDoItem>
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}

