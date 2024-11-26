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
        default:
            Text("No route for \(menuTitle)");
        }
    }
}
