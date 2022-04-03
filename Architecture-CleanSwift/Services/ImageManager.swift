//
//  ImageManager.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

import Foundation

protocol ImageManagerProtocol {
    func getData(from stringURL: String?) -> Data
}

final class ImageManager: ImageManagerProtocol {
    
    static let shared = ImageManager()
    
    private init() {}
    
    func getData(from stringURL: String?) -> Data {
        guard let stringURL = stringURL,
              let url = URL(string: stringURL),
              let data = try? Data(contentsOf: url) else { return Data()}
        
        return data
    }
}
