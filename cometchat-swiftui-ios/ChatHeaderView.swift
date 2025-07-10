//
//  ChatHeaderView.swift
//  cometchat-swiftui-ios
//
//  Created by Sampada Shankar on 10/07/25.
//

import SwiftUI

struct ChatHeaderView: View {
    @State var viewModel = ChatHeaderViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                HStack{
                    Image(systemName: "chevron.backward")
                        .padding(.leading, 20)
                        .padding(.trailing, 10)
                        .onTapGesture {
                            // TODO: Implement the back functionality
                        }
                    viewModel.avatarImage!
                        .resizable()
                        .frame(width: 50, height: 50)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .overlay( alignment: .bottomTrailing) {
                            Image(systemName: "circle.circle.fill")
                                .foregroundStyle(.green)
                        }
                    VStack(alignment: .leading, spacing: 5){
                        Text(viewModel.title!)
                            .font(CometChatTypography.Heading3.bold)
                        Text(viewModel.isGroupChat ? "\(viewModel.numberOfMembers ?? 5) member": "Online")
                            .font(CometChatTypography.Caption1.regular)
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                    if(viewModel.isDirectMessage){
                        HStack{
                            Image(systemName: "video")
                                .padding(.trailing,15)
                            Image(systemName: "phone")
                                .padding(.trailing,15)
                            Image(systemName: "info.circle")
                                .padding(.trailing,15)
                        }
                    }
                   
                    
                }
                .padding(.top, 10)
                .padding(.bottom, 15)
                .background(.white)
                Spacer()
            }
            .background(.gray.opacity(0.2))
            
        }
    }
}

#Preview {
    ChatHeaderView()
}
