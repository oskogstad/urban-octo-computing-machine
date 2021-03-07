//
//  ContentView.swift
//  Shared
//
//  Created by Ole Jørgen Skogstad on 07/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, injection reload!")
                .padding()
    }
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

    #if DEBUG
    @objc class func injected() {
        UIApplication.shared.windows.first?.rootViewController =
                UIHostingController(rootView: ContentView())
    }
    #endif
}
