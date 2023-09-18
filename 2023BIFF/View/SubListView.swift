//
//  SubListView.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import SwiftUI

struct SubListView: View {
    
    let movieTitle: [String]
    let movieEng: [String]
    let directorNm: [String]
    let directorEng: [String]
    let runningTime: [Int]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                ForEach([movieTitle, movieEng], id: \.self) { title in
                    Button{
                        
                    } label: {
                        VStack {
                            Rectangle()
                                .frame(width: 350, height: 1)
                                .foregroundColor(.white)
                            
                            HStack {
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.white)
                                
                                VStack {
                                    Text(title[0])
                                        .foregroundColor(.white)
                                    
//                                    Text(title)
//                                        .foregroundColor(.gray)
                                }
                            }
                            
                            Rectangle()
                                .frame(width: 350, height: 1)
                                .foregroundColor(.white)
                        }
                    }
                    
                }
            }
        }
    }
}

//struct SubListView_Previews: PreviewProvider {
//    static var previews: some View {
//        SubListView()
//    }
//}
