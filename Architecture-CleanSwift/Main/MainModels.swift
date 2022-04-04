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

typealias MainRequest = Main.ShowPhotos.Request
typealias MainResponse = Main.ShowPhotos.Response
typealias MainViewModel = Main.ShowPhotos.ViewModel
typealias MainCellViewModel = Main.ShowPhotos.Response.CellViewModel

enum Main {
    
    // use cases for main scene
    enum ShowPhotos {
        
        // viewController -> interactor
        struct Request {
            // TEMPORARILY
            let photos: [Photo]
        }
        
        // interactor -> presenter
        struct Response {
            
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
            
            // row of cells
            let row: [CellIdentifiable]
        }
        
        // presenter -> viewController
        struct ViewModel {
            
        }
    }
}
