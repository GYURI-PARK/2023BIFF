//
//  MovieList.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import Foundation

struct Movie {
    let title: String
    let eng: String
    let directorNm: String
    let directorEng: String
    let runningTime: Int
}


//struct Movie: Identifiable {
//
//    let id: Int
//    let movieTitle: [String]
//    let movieEng: [String]
//    let directorNm: [String]
//    let directorEng: [String]
//    let runningTime: [Int]
//
//}

//class MovieList {
//    static let movieInfo: [Movie] = [
//        Movie(id: 1,
//              movieTitle: ["한국이 싫어서"],
//              movieEng: ["Because I Hate Korea"],
//              directorNm: ["장건재"],
//              directorEng: ["JANG Kun-jae"],
//              runningTime: [106]),
//        Movie(id: 2,
//              movieTitle: ["영화의 황제"],
//              movieEng: ["The Movie Emperor"],
//              directorNm: ["닝하오"],
//              directorEng: ["NING Hao"],
//              runningTime: [125]),
//        Movie(id: 3,
//              movieTitle: ["괴물", "녹야", "더 비스트"],
//              movieEng: ["Monster", "Green Night", "The Beast"],
//              directorNm: ["고레에다 히로카즈", "한슈아이", "베르트랑 보넬로"],
//              directorEng: ["KORE-EDA Hirokazu", "HAN Shuai", "Bertrand BONELLO"],
//              runningTime: [126, 92, 146])
//    ]
//}
