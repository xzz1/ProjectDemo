//
//  ContentView.swift
//  ProjectDemo
//
//  Created by link on 2023/7/31.
//

import SwiftUI

struct ContentView: View {
    @State var isToggleOn = true
    var body: some View {
        VStack {
            ZStack{
                Circle()
                    .foregroundColor(isToggleOn ? .blue : .yellow)
                Image(systemName: "checkmark.seal")
                    .foregroundColor(isToggleOn ? .white : .black)
                    .font(.system(size: 250))
            }
            .frame(minHeight: 600)
            .shadow(radius: 20)
            Divider()
            Toggle(isOn: $isToggleOn) {
                Label("一个开关", systemImage: "bolt.horizontal")
            }.foregroundColor(.blue)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
