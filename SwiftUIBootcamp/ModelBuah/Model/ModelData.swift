//
//  ModelData.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 17/10/23.
//

// to load json file

import Foundation

var fruits: [FruitModel] = load("fruitsData.json")


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
