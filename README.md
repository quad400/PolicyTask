# 🛡️ Policy Task

A modern iOS application built using SwiftUI that helps users manage and view their insurance policies in a clean, expandable card-based UI.

---

## ✨ Features

- View a list of all insurance policies
- Expand/collapse individual policy cards to reveal more details
- Beautiful modern UI with animations and responsive layout
- Interactive bottom navigation for future screen expansion (Home, Policies, Claims, Profile)

---

## 📸 Screenshots

| Policy List | Expanded Card | Bottom Navigation |
|-------------|----------------|-------------------|
| *Coming Soon* | *Coming Soon* | *Coming Soon* |

---

## 🧱 Architecture

- **MVVM (Model-View-ViewModel)** structure
- **Reusable components** (`PolicyCardView`, `FooterNavigationView`)
- **Swift Extensions** for date formatting and logic separation

---

## 🧑‍💻 Tech Stack

- `Swift 5`
- `SwiftUI`
- `Combine`
- `Xcode 15+`

---

## 📂 Project Structure
PolicyApp/
├── Models/
│ └── Policy.swift
├── ViewModels/
│ └── PolicyViewModel.swift
├── Views/
│ └── PolicyView.swift
│ └── PolicyCardView.swift
│ └── FooterNavigationView.swift
├── Extensions/
│ └── String+DateFormatting.swift
├── Assets/
│ └── App icons, Colors etc.



---

## 🗓️ Date Formatting

All dates (e.g. `nextPremiumDue`) are parsed from ISO format (`yyyy-MM-dd`) into a user-friendly format like:  
**`10th Jan, 2025`**

See `String+DateFormatting.swift` for full implementation.

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/quad400/policytask.git
cd policytask
open Policy.xcodeproj
```

### 2. Build & Run
Open in Xcode

Select a simulator

Press Cmd + R to build and run

#### 🔮 Upcoming Features
- User login & authentication
- Cloud sync for policies
- Push notification for premium due dates
- Claims submission portal

🧑‍🎨 Author
Abdulquadri
Mobile Engineer
https://github.com/quad400

📜 License
MIT License – feel free to use, modify, and share ⭐
