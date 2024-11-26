//
//  Menu.swift
//  Local
//
//  Created by mac on 2024/11/26.
//
import uuid

var id: Int = 0;

struct MenuNode: Hashable {
    let id: Int;
    let title: String;
    let children: [MenuNode];
    let image: String?;
}

func GenerateMenuNode(title: String, children: [MenuNode], image: String?) -> MenuNode {
    id += 1;
    return MenuNode(id: id, title: title, children: children, image: image);
}


let GlobalMenu = [
    GenerateMenuNode(title: "Dashboard", children:[], image: "house"),
    GenerateMenuNode(title: "Devices", children: [], image: "externaldrive.fill.badge.wifi"),
    GenerateMenuNode(title: "Users", children: [], image: "person.fill")
];
