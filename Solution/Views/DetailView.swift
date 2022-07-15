//
//  DetailView.swift
//  Solution
//
//  Created by Andrii Zlenko on 15.07.2022.
//

import SwiftUI

struct DetailView: View {
    var autor: Autor?
    var body: some View {
        if let autor = autor {
            VStack(alignment: .leading, spacing: 20) {
                Text(autor.name)
                    .font(.largeTitle).bold()
                ForEach(autor.quotes, id: \.self) { q in
                    Text(q)
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = AutorModel()
        DetailView(autor: model.autors[0])
    }
}
