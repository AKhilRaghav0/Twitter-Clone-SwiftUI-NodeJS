//
//  MultilineTextField.swift
//  Twitter-Clone
//
//  Created by Akhil on 27/02/24.
//

import Foundation
import SwiftUI

struct MultilineTextField: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UITextView {
        let text = UITextView()
        text.allowsEditingTextAttributes = true
//        text.isEditable = true
        text.text = "Type Something"
        text.isUserInteractionEnabled = true
        text.textColor = .gray
        text.font = .systemFont(ofSize: 20)
        return text
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        <#code#>
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        
        
        var parent: MultilineTextField
    }
}
