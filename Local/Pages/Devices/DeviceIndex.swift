//
//  Index.swift
//  Local
//
//  Created by mac on 2024/11/26.
//
import SwiftUI
import CoreData
import Alamofire

struct Device: Decodable, Hashable {
    let name: String;
    let did: String;
    let online: Bool;
}

struct DeviceIndex: View {
    @State private var devices: [[Device]] = [];
    
    func loadData() async {
        let response = await AF.request("http://\(GlobalDevConfig.serverAddress)/api/iot/devices")
            .serializingDecodable([Device].self)
            .response;
        devices = response.value?.chunked(into: 2) ?? [];
    }
    
    var body: some View {
        ScrollView {
            Grid(alignment: .center, horizontalSpacing: 24, verticalSpacing: 24) {
                ForEach(devices, id: \.self) {
                    row in GridRow {
                        ForEach(row, id: \.did) {
                            device in DeviceCard(device: device);
                        }
                    }.frame(height: 100)
                }
            }.padding(24)
            
        }.task {
            await loadData();
        }
        
    }
}

