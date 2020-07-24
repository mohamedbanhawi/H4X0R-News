//
//  DetailView.swift
//  H4X0R News
//
//  Created by Mohamed Elbanhawi on 25/7/20.
//  Copyright © 2020 Mohamed Elbanhawi. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        DetailView(url: "https://www.apple.com").previewDevice("iPhone 11 Pro")
    }
}
