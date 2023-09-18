//
//  SubListView.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import SwiftUI

struct SubListView: View {

    let movie: Movie
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack {
                ForEach(movie.title, id: \.self) { title in
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
                                    Text(title)
                                        .foregroundColor(.white)

                                    Text(movie.directorNm[0])
                                        .foregroundColor(.gray)
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
