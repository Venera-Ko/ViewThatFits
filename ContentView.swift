//
//  ContentView.swift
//  ViewThatFits
//
//  Created by V K on 01.12.2022.
//

import SwiftUI

struct ContentView: View {
    var messages = DummyData().messages
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(messages, id: \.self) { message in
                HStack {
                    Image(systemName: "info.circle.fill")
                    ViewThatFits {
                        Text(message)
                            .fixedSize()
                        HStack {
                            Text(message)
                                .lineLimit(2)
                            Spacer()
                            Button("More") {
                                //
                            }
                        }
                    }
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
