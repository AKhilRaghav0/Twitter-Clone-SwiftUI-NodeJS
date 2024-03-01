//
//  Extension.swift
//  Twitter-Clone
//
//  Created by Akhil on 01/03/24.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


