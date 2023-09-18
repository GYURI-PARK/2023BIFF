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
    
//    init() {
//        let classificationData = ClassificationList.classifications
//        self.classifications = classificationData.map { classification in
//            let movie = Movie(
//                        id: classification.id,
//                        title: classification.movieTitle,
//                        eng: classification.movieEng,
//                        directorNm: classification.directorNm,
//                        directorEng: classification.directorEng,
//                        runningTime: classification.runningTime
//                    )
//            return Classification(id: classification.id, title: classification.title, description: classification.description, movieTitle: classification.movieTitle, movieEng: classification.movieEng, directorNm: classification.directorNm, directorEng: classification.directorEng, runningTime: classification.runningTime)
//        }
//    }
    init() {
            let classificationData = ClassificationList.classifications
            self.classifications = classificationData
        }
}
