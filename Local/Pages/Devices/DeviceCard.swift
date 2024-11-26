//
//  DeviceCard.swift
//  Local
//
//  Created by mac on 2024/11/26.
//
import SwiftUI;

struct DeviceCard: View {
    let device: Device;
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(.orange)
            .overlay(alignment: .center, content: {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(device.online ? Color.green : Color.red)
                        .frame(width: 10, height: 10)

                    Text(device.name).foregroundStyle(Color.primary)
                }.shadow(radius: 10, x: 5, y: 0)
            })
    }
}


