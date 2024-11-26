//
//  ContentView.swift
//  Local
//
//  Created by mac on 2024/9/23.
//

import SwiftUI

struct RootView: View {
    @State private var selectionIndex: Int = 0;
    
    var body: some View {
        TabView (selection: $selectionIndex) {
            ForEach(GlobalMenu, id: \.self) {
                FirstLevelMenu in NavigationStack {
                    ScrollView {
                        VStack {
                            RouteView(menuTitle: FirstLevelMenu.title)
                        }
                    }.padding(.top, 20)
                }.tabItem {
                    Text(FirstLevelMenu.title);
                    Image(systemName: FirstLevelMenu.image!);
                }.tag(FirstLevelMenu.id)
            }
        }
    }
}

#Preview {
    RootView()
}
