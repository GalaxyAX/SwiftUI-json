//
//  Card.swift
//  Solution
//
//  Created by Andrii Zlenko on 15.07.2022.
//

import SwiftUI

struct Card: View {
    var autor: Autor
    var body: some View {
        ZStack {
            Image(autor.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            VStack {
                Text(autor.quotes[0])
                    .font(.title).bold()
                    .opacity(0.9)
                    .shadow(color: .black, radius: 3, x: 2, y: 2)
                Divider()
                Text("* " + autor.name + " *")
                    .font(.callout)
                    .opacity(0.8)
                    .shadow(color: .black, radius: 2, x: 2, y: 2)
            }
            .padding([.top, .horizontal], 20)
        }
        .foregroundColor(.white)
        .frame(width: .none, height: 400, alignment: .center)
        .clipped()
        .cornerRadius(15)
        .padding(.horizontal)
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        let model = AutorModel()
        Card(autor: model.autors[0])
    }
}
