//
//  ContentView.swift
//  Solution
//
//  Created by Andrii Zlenko on 15.07.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = AutorModel()
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(model.autors) { a in
                        NavigationLink {
                            DetailView(autor: a)
                        } label: {
                            Card(autor: a)
                        }
                    }
                }
            }
            .navigationTitle("Authors")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
