//
//  DetailsWorker.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

import Foundation

final class DetailsWorker {
    func getImage(from stringURL: String?) -> Data? {
        ImageManager.shared.getData(from: stringURL)
    }
    
    func getFavouriteStatus(for photoTitle: String) -> Bool {
        DataManager.shared.getFavouriteStatus(for: photoTitle)
    }
    
    func setFavouriteStatus(for photoTitle: String, with status: Bool) {
        DataManager.shared.setFavouriteStatus(for: photoTitle, with: status)
    }
}
