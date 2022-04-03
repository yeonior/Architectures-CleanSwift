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
}
