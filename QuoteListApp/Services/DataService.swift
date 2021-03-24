//
//  DataService.swift
//  test (iOS)
//
//  Created by Dev Doshi on 24.03.21.
//

import Foundation

import Foundation

class DataService {
    
    static func getLocalData() -> [Quote] {
        
        //Parse local json file
        
        //Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        //Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Quote]()
        }
        
        //Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            //Create a data object
            let data = try Data(contentsOf: url)
            
            //Decode the data with a JSON decoder
            
            let decoder = JSONDecoder()
            
            do{
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                //add the unique ids
                for r in quoteData{
                    r.id = UUID()
                }
                
                print(quoteData)
                //return the reipes
                return quoteData
                
            }
            catch{
                //Error with parsing json
                print(error)
            }
            
            //Add the unique IDs
            
            //Return the recipes
            
        }
        catch {
            //error with getting data
            print(error)
        }
        
        return [Quote]()
    }
}
