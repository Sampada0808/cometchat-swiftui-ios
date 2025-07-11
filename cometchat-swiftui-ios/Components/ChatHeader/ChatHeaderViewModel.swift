//
//  ChatHeaderViewModel.swift
//  cometchat-swiftui-ios
//
//  Created by Sampada Shankar on 10/07/25.
//

import Foundation
import SwiftUI

@Observable
class ChatHeaderViewModel{
        var title: String? = "Hiking Group"
        var avatarImage: Image? = Image("Avatar")
        
        var isGroupChat: Bool = true
        var isDirectMessage: Bool = false
    
        var numberOfMembers :Int?

}
