//
//  Photo.swift
//  Architecture-CleanSwift
//
//  Created by Ruslan on 03.04.2022.
//

struct Photo: Decodable {
    let id: Int
    let title: String
    let stringURL: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case stringURL = "url"
    }
}
