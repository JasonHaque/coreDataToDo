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
        
        NavigationView{
            List{
                Section(header: Text("What's Next?")) {
                    
                    HStack{
                        TextField("New Item", text: self.$newToDoItem)
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }.font(.headline)
            }
        }
    .navigationBarTitle(Text("My list"))
    .navigationBarItems(trailing: EditButton())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
