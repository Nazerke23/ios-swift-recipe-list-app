//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Назерке Кулан on 30.09.2021.
//

import Foundation

class RecipeModel : ObservableObject{
    @Published var recipes = [Recipe]()
    
    
    init(){
       
        //Create an instance of data service and get the data
        self.recipes =  DataService.getLocalData()
    }
    
}
