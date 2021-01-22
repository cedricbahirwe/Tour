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
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        imageView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
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
