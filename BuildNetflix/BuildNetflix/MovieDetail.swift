//
//  MovieDetail.swift
//  BuildNetflix
//
//  Created by Hyungmin Kim on 2023/09/19.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        // close the view
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                    
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubheadline(movie: movie)
                    }
                }
                
                
                Spacer()
            }
            .foregroundColor(.white)
        }

    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie1)
    }
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text("MOVIE YEAR")
            
            Text("RATING")
            
            Text("seasons")
            
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}
