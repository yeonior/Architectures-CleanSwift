//
//  DetailsModels.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

typealias DetailsRequest = Details.ShowPhotoInfo.Request
typealias DetailsResponse = Details.ShowPhotoInfo.Response
typealias DetailsViewModel = Details.ShowPhotoInfo.ViewModel

enum Details {
    
    // use cases for main scene
    enum ShowPhotoInfo {
        
        // viewController -> interactor
        struct Request {
            
        }
        
        // interactor -> presenter
        struct Response {
            
        }
        
        // presenter -> viewController
        struct ViewModel {
            
        }
    }
}
