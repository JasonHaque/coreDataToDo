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
    @FetchRequest(fetchRequest: ToDoItem.getAllToDoItem()) var toDoItems : FetchedResults<ToDoItem>
    
    @State private var newToDoItem = ""
    var body: some View {
        
        NavigationView{
            List{
                Section(header: Text("What's Next?")) {
                    
                    HStack{
                        TextField("New Item", text: self.$newToDoItem)
                        Button(action: {
                            let todoItem = ToDoItem(context: self.managedObjectContext)
                            todoItem.title = self.newToDoItem
                            todoItem.createdAt = Date()
                            
                            do{
                                try self.managedObjectContext.save()
                                print("saved")
                            }catch{
                                print(error)
                            }
                            
                            self.newToDoItem = ""
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }.font(.headline)
                Section(header: Text("Todo Items")) {
                    
                    Text("bla bla bla")
                    /*ForEach(self.toDoItems){todoItem in
                        
                        
                    } */
                }
            }
            .navigationBarTitle(Text("My list"))
            .navigationBarItems(trailing: EditButton())
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
