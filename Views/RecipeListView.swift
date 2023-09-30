//
//  ContentView.swift
//  Recipe List App
//
//  Created by Назерке Кулан on 30.09.2021.
//

import SwiftUI

struct RecipeListView: View {
    
    @State var textFieldText: String = ""
    
    //Reference ViewModel
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        
        NavigationView {
            List(model.recipes){ r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        HStack(spacing: 20.0){
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipped()
                                .cornerRadius(180)

                                Text(r.name)
                            
                    
                        }
                    })
            }
            .navigationBarTitle("All Recipes")
        }

    }

    
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
