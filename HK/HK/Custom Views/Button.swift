//
//  Button.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/27/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

struct PulseView: UIViewRepresentable {
    @Binding var tapped: Bool
    let image: UIImage
    init(_ tapped: Binding<Bool>) {
        _tapped = tapped
        self.image = #imageLiteral(resourceName: "userloc")
    }
    
    func makeUIView(context: Context) -> UIImageView {
        let imageView = UIImageView(image: UIImage(named: "userloc"))
        return imageView
    }
    
    func updateUIView(_ uiView: UIImageView, context: Context) {
        uiView.addSqueezeButtonAnimationToView()
    }
    
}


class Model {
    @objc func onTap(sender: UIView ) {
        sender.addSqueezeButtonAnimationToView()
    }
}
