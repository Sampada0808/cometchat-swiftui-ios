//
//  MessageComposerViewModel.swift
//  cometchat-swiftui-ios
//
//  Created by Sampada Shankar on 11/07/25.
//

import Foundation
import SwiftUI

@Observable
class MessageComposerViewModel{
    var showAlert : Bool = false
    var message : String = ""
    var sendMessage : String = ""
}
