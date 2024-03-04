//
//  BlurView.swift
//  Twitter-Clone
//
//  Created by Akhil on 04/03/24.
//

import SwiftUI

struct BlurView: UIViewRepresentable     {
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
