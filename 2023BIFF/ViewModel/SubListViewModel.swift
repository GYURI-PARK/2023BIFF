//
//  SubListViewModel.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import Foundation
import SwiftUI

class SubListViewModel: ObservableObject {
    
    @Published var classifications: [Classification]
    
    init() {
            let classificationData = ClassificationList.classifications
            self.classifications = classificationData
        }
}
