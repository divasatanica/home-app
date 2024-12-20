//
//  Dashboard.swift
//  Local
//
//  Created by mac on 2024/9/23.
//

import SwiftUI

struct Dashboard: View {
    let buttonText: String;
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]

    @State private var selected = "Rugby"
    @State private var id = 1;
    var body: some View {
        VStack {
            VStack {
                Circle()
                    .fill(RandomColors.randomElement() ?? .blue)
                    .padding(80)
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundStyle(.white)
                    )
                Text("\(selected)!")
                    .font(.largeTitle)
            }
                .transition(.slide)
                .id(id);
            Spacer()
            Button(buttonText) {
                withAnimation(.easeInOut(duration: 1)) {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1;
                }
            }.buttonStyle(.borderedProminent)
        }
        
    }
}
