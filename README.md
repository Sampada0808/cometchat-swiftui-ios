# 💬 SwiftUI Messaging Interface

## 📱 Overview

This is a SwiftUI-based chat interface inspired by CometChat's design system. The implementation includes:

- A customizable **Chat Header** with group or direct message support.
- A **Message List View** that displays incoming and outgoing messages with timestamps.
- A **Message Composer** with dynamic button behavior (send icon turns purple when text is entered).
- Full **light and dark mode support**.
- Modular, reusable components built using SwiftUI best practices.

### 💡 Highlights

- Dynamic `Send` button:
  - Shows a gray/secondary icon when the message is empty.
  - Turns **purple** when the user types a message, indicating readiness to send.
- Chat header auto-adjusts:
  - For group chats, it displays the member count.
  - For direct messages, it shows additional action icons (video, call, info).
- Reusable and preview-friendly code structure, following MVVM separation for state where applicable.
- Adaptable to various chat use cases including group chats, DMs, and future CometChat SDK integration.

## 🔍 Demo Preview

<p align="center">
  <img src="https://github.com/Sampada0808/cometchat-swiftui-ios/blob/main/Implementation/light.png" alt="Light Mode" width="250"/>
  <img src="https://github.com/Sampada0808/cometchat-swiftui-ios/blob/main/Implementation/dark.png" alt="Dark Mode" width="250"/>
  <img src="https://github.com/Sampada0808/cometchat-swiftui-ios/blob/main/Implementation/demo.gif" alt="Chat UI Demo" width="250"/>
</p>

## ⚠️ Limitations & Assumptions

- The **message list** is currently populated using static dummy data for demonstration purposes.
- The **message timestamps** are hardcoded and not linked to real-time data.
- No actual messaging backend (e.g., CometChat SDK or Firebase) is integrated yet.
- The **avatar image** is static; no dynamic user profiles or presence detection are implemented beyond a simple "online" indicator.
- This is a front-end demo only and does not include navigation or screen transitions.

---

