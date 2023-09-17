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
        let classifications = ClassificationList.classifications
        self.classifications = classifications
    }
}
