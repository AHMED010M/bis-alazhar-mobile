# BIS Alazhar Mobile Application

A comprehensive Flutter-based mobile platform developed to serve as a centralized digital hub for students of the BIS Alazhar faculty.

## 🎯 Features

- **Authentication**: Secure registration and login using University ID
- **Dashboard**: Centralized access to all services
- **Class Schedule**: View personalized class timetables
- **Study Materials**: Browse and access lectures, notes, and files by year and term
- **Notes Ordering**: Browse and order physical course notes
- **Student Forum**: Community discussions with posts, comments, and upvoting
- **Notifications**: Receive official announcements
- **Profile Management**: View and edit personal information

## 🏗️ Architecture

### Three-Tier Architecture
```
Mobile Client (Flutter) ⇄ Backend REST API ⇄ Database
```

### Project Structure
```
lib/
├── main.dart
├── features/
│   ├── auth/
│   │   ├── screens/
│   │   ├── widgets/
│   │   └── services/
│   ├── home/
│   ├── study/
│   ├── notes/
│   ├── forum/
│   ├── profile/
│   └── notifications/
├── shared/
│   ├── widgets/
│   ├── services/
│   └── models/
└── core/
    ├── api/
    ├── constants/
    └── utils/
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart SDK
- Android Studio / VS Code
- Git

### Installation

1. Clone the repository:
```bash
git clone https://github.com/AHMED010M/bis-alazhar-mobile.git
cd bis-alazhar-mobile
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## 🛠️ Technologies

- **Framework**: Flutter
- **Language**: Dart
- **HTTP Client**: Dio
- **Secure Storage**: flutter_secure_storage
- **State Management**: StatefulWidget (setState)

## 📱 Screens

1. **Authentication**
   - Login Screen
   - Register Screen

2. **Main Features**
   - Dashboard (Home)
   - Schedule
   - Study Materials
   - Notes Browser & Ordering
   - Forum (Posts, Comments, Upvotes)
   - Profile
   - Notifications

## 🔐 Security

- JWT token authentication
- Secure credential storage
- HTTPS communication
- Password hashing (backend)

## 📝 API Endpoints

### Authentication
- `POST /auth/login`
- `POST /auth/register`

### Study
- `GET /study/schedule`
- `GET /study/subjects`
- `GET /study/files`

### Notes
- `GET /notes`
- `POST /notes/order`

### Forum
- `GET /forum/subs`
- `GET /forum/posts`
- `POST /forum/posts`
- `POST /forum/comments`
- `POST /forum/posts/{id}/upvote`

### User & Notifications
- `GET /me`
- `PUT /me`
- `GET /notifications`
- `POST /notifications/{id}/read`

## 🎨 Design System

- Modern, clean UI
- Dynamic background components
- Consistent color scheme
- Reusable widget library
- Responsive layouts

## 📦 Database Schema

**Main Entities**: User, Schedule, Subject, StudyFile, ForumPost, ForumComment, Note, NoteOrder, Notification

## 🔄 Development Process

This project underwent iterative development with:
- Complete UI/UX redesign
- Architecture refactoring
- Layout optimization
- User feedback integration

## 🚧 Future Improvements

- [ ] State management (Provider/Riverpod/BLoC)
- [ ] Dark mode support
- [ ] Automated testing
- [ ] Token refresh mechanism
- [ ] Offline mode
- [ ] Push notifications
- [ ] File caching

## 👨‍💻 Developer

**Ahmed Mohamed (Abo Salah)**
- GitHub: [@AHMED010M](https://github.com/AHMED010M)
- Location: Egypt

## 📄 License

This project is developed for educational purposes.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

---

**Built with ❤️ for BIS Alazhar Students**
