# WeatherSampleApp ☀️

A simple iOS application built with **SwiftUI** that fetches data from a REST API and displays it using the **MVVM architecture pattern**.

---

## 🚀 Features

- Fetch posts from remote API
- MVVM Architecture
- URLSession networking
- Loading state handling
- Error state handling
- Pull to refresh
- NavigationStack-based navigation
- Post Detail Screen
- MainActor for safe UI updates

---

## 🛠 Tech Stack

- Swift
- SwiftUI
- MVVM
- URLSession
- Combine
- JSONDecoder

---

## 📦 Architecture

The project follows the MVVM pattern:

- **Model** → `Post.swift`
- **Service** → `PostService.swift`
- **ViewModel** → `PostViewModel.swift`
- **View** → `ContentView.swift`
- **Views**
  - `ContentView.swift`
  - `PostDetailView.swift`

---

## 🌐 API Used

Data is fetched from:

https://jsonplaceholder.typicode.com/posts

This is a free public API used for testing and learning purposes.

---

## 🎯 Purpose of the Project

This project was created to practice:

- Networking in Swift
- JSON parsing
- MVVM architecture
- State management in SwiftUI
- Clean code structure
- Navigation between screens

---

## 👩‍💻 Author

Hatice Kapkıner  
iOS Developer
