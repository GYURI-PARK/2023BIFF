//
//  SubListView.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import SwiftUI

struct SubListView: View {

    let movie: Movie
    @ObservedObject private var vm = SubListViewModel()

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(alignment: .leading, spacing: 30) {
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
                
                ForEach(0..<movie.title.count, id: \.self) { index in
                    Button{

                    } label: {
                        VStack(alignment: .leading, spacing: 30) {
                            
                            HStack(spacing: 30) {
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.white)
                                
                                VStack(alignment: .leading) {
                                    Text(movie.title[index])
                                        .foregroundColor(.white)

                                    Text(movie.eng[index])
                                        .foregroundColor(.gray)
                                }
                        
                                
                                VStack(alignment: .trailing) {
                                    Text(movie.directorNm[index])
                                        .foregroundColor(.white)

                                    Text(movie.directorEng[index])
                                        .foregroundColor(.gray)
                                }
                            }
//                            .frame(maxWidth: 350)

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
