//
//  ContentView.swift
//  PopoverSwiftUI
//
//  Created by Ramill Ibragimov on 01.05.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showPopover: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
            Button(action: {
                showPopover.toggle()
            }, label: {
                Text("Show Popover")
            }).popover(isPresented: $showPopover, content: {
                Text("Popover is presented!")
                    .font(.largeTitle)
                    .frame(width: 200, height: 300)
            })
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
