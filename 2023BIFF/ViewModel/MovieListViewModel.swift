//
//  MovieListViewModel.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import Foundation
import SwiftUI

class MovieListViewModel: ObservableObject {
    
    @Published var classifications: [Classification]
    
    init() {
        let classificationData = ClassificationList.classifications
        self.classifications = classificationData.map {
            Classification(id: $0.id, title: $0.title, description: $0.description, movieTitle: $0.movieTitle, movieEng: $0.movieEng, directorNm: $0.directorNm, directorEng: $0.directorEng, runningTime: $0.runningTime)
        }
    }
}
