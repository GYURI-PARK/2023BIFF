//
//  MovieList.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import Foundation

struct Movie {
    let id: Int
    let name: String
    let description: String
    let title: [String]
    let eng: [String]
    let directorNm: [String]
    let directorEng: [String]
    let runningTime: [Int]
    
    init(id: Int, name: String, description: String, title: [String], eng: [String], directorNm: [String], directorEng: [String], runningTime: [Int]) {
        self.id = id
        self.name = name
        self.description = description
        self.title = title
        self.eng = eng
        self.directorNm = directorNm
        self.directorEng = directorEng
        self.runningTime = runningTime
    }
}
