//
//  MainModels.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

import Foundation

protocol CellIdentifiable {
    var cellIdentifier: String { get }
    var cellHeight: Double { get }
}

typealias MainResponse = Main.ShowPhotos.Response
typealias MainViewModel = Main.ShowPhotos.ViewModel
typealias MainCellViewModel = Main.ShowPhotos.ViewModel.CellViewModel

enum Main {
    
    // use cases for main scene
    enum ShowPhotos {
        
        // interactor -> presenter
        struct Response {
            // TEMPORARILY
            let photos: [Photo]
        }
        
        // presenter -> viewController
        struct ViewModel {
            
            // cell
            struct CellViewModel: CellIdentifiable {
                
                let title: String
                let id: Int
                
                var cellIdentifier: String {
                    "cell"
                }
                
                var cellHeight: Double {
                    50
                }
                
                init(photo: Photo) {
                    title = photo.title
                    id = photo.id
                }
            }
            
            // rows
            let rows: [CellIdentifiable]
        }
    }
}
