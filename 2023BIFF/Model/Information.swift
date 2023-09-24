//
//  Information.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/24.
//

import Foundation

class Information: Identifiable {
    let id: Int
    @Published var runningTime: [Int]
    @Published var date: [String]
    @Published var startTime: [Int]
    @Published var theaterNm: [String]
    @Published var code: [Int]
    @Published var isGV: [Bool]
    @Published var ableAge: [Int]
    
    init(id: Int, runningTime: [Int], date: [String], startTime: [Int], theaterNm: [String], code: [Int], isGV: [Bool], ableAge: [Int]) {
        self.id = id
        self.runningTime = runningTime
        self.date = date
        self.startTime = startTime
        self.theaterNm = theaterNm
        self.code = code
        self.isGV = isGV
        self.ableAge = ableAge
    }
}
