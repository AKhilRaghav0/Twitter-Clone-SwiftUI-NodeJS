//
//  MultilineTextField.swift
//  Twitter-Clone
//
//  Created by Akhil on 27/02/24.
//

import Foundation
import SwiftUI

struct MultilineTextField: UIViewRepresentable {
    func makeCoordinator() -> MultilineTextField.Coordinator {
        return MultilineTextField.Coordinator.init(parent1: self)
    }
    
    @Binding var text: String
    
    func makeUIView(context: Context) -> some UITextView {
        let text = UITextView()
        text.allowsEditingTextAttributes = true
        text.isEditable = true
        text.text = "Type Something"
        text.isUserInteractionEnabled = true
        text.textColor = .gray
        text.font = .systemFont(ofSize: 20)
        text.delegate = context.coordinator
        return text
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        
        
        var parent: MultilineTextField
        
        init(parent1: MultilineTextField) {
            parent = parent1
        }
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
            textView.textColor = .black
            
        }
        
        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
            
        }
    }
}
