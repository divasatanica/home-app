//
//  RouteView.swift
//  Local
//
//  Created by mac on 2024/11/26.
//
import SwiftUI;

struct RouteView: View {
    let menuTitle: String;
    var body: some View {
        switch menuTitle {
        case "Dashboard":
            Dashboard(buttonText: "Try it out");
        case "Devices":
            DeviceIndex();
        default:
            VStack {
                Text("No route for \(menuTitle)")
                    .font(.largeTitle.bold())
                    .multilineTextAlignment(.center)
            }
            
        }
    }
}
