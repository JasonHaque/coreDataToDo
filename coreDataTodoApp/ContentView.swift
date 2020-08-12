//
//  ContentView.swift
//  coreDataTodoApp
//
//  Created by Sanviraj Zahin Haque on 12/8/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: ToDoItem.getAllToDoItem()) var toDoItem : FetchedResults<ToDoItem>
    
    @State private var newToDoItem = ""
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
