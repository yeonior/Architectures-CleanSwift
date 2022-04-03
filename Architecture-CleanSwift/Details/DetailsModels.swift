//
//  DetailsModels.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

typealias DetailsRequest = PhotoDetails.ShowDetails.Request
typealias DetailsResponse = PhotoDetails.ShowDetails.Response
typealias DetailsViewModel = PhotoDetails.ShowDetails.ViewModel

enum PhotoDetails {
    
    // use cases for main scene
    enum ShowDetails {
        
        // viewController -> interactor
        struct Request {
            // TEMPORARILY
            let photo: Photo
        }
        
        // interactor -> presenter
        struct Response {
            let photoTitle: String?
        }
        
        // presenter -> viewController
        struct ViewModel {
            let photoTitle: String
        }
    }
}
