# API Documentation

## Base URL
```
https://api.bisalazhar.edu.eg
```

## Authentication

All authenticated endpoints require a Bearer token in the Authorization header:
```
Authorization: Bearer {token}
```

---

## Authentication Endpoints

### Login
```http
POST /auth/login
```

**Request Body:**
```json
{
  "university_id": "20240001",
  "password": "password123"
}
```

**Response:**
```json
{
  "token": "eyJhbGciOiJIUzI1NiIs...",
  "user": {
    "id": 1,
    "university_id": "20240001",
    "full_name": "Ahmed Mohamed",
    "avatar_type": "male"
  }
}
```

### Register
```http
POST /auth/register
```

**Request Body:**
```json
{
  "university_id": "20240001",
  "full_name": "Ahmed Mohamed",
  "password": "password123",
  "avatar_type": "male"
}
```

---

## Study Endpoints

### Get Schedule
```http
GET /study/schedule
```

**Response:**
```json
[
  {
    "id": 1,
    "subject_name": "Data Structures",
    "day": "Sunday",
    "time": "09:00 AM",
    "location": "Lab 101"
  }
]
```

### Get Subjects
```http
GET /study/subjects
```

**Response:**
```json
[
  {
    "id": 1,
    "name": "Data Structures",
    "year": "Second Year",
    "term": "Fall",
    "description": "Advanced data structures course"
  }
]
```

### Get Files
```http
GET /study/files?subject_id={subject_id}
```

---

## Notes Endpoints

### Get Notes
```http
GET /notes
```

**Response:**
```json
[
  {
    "id": 1,
    "subject_name": "Operating Systems",
    "description": "Complete lecture notes",
    "price": 50.00,
    "image_url": "https://..."
  }
]
```

### Order Note
```http
POST /notes/order
```

**Request Body:**
```json
{
  "note_id": "1"
}
```

---

## Forum Endpoints

### Get Forum Subs
```http
GET /forum/subs
```

### Get Posts
```http
GET /forum/posts?sub_id={sub_id}
```

**Response:**
```json
[
  {
    "id": 1,
    "user_id": 5,
    "user_name": "Ahmed",
    "title": "Study Group",
    "content": "Anyone interested in forming a study group?",
    "upvotes_count": 12,
    "comments_count": 5,
    "created_at": "2026-01-30T10:00:00Z",
    "is_upvoted": false
  }
]
```

### Create Post
```http
POST /forum/posts
```

**Request Body:**
```json
{
  "title": "Study Group",
  "content": "Anyone interested?",
  "sub_id": "1"
}
```

### Get Comments
```http
GET /forum/comments?post_id={post_id}
```

### Create Comment
```http
POST /forum/comments
```

**Request Body:**
```json
{
  "post_id": "1",
  "content": "I'm interested!"
}
```

### Upvote Post
```http
POST /forum/posts/{post_id}/upvote
```

---

## User Endpoints

### Get User Profile
```http
GET /me
```

**Response:**
```json
{
  "id": 1,
  "university_id": "20240001",
  "full_name": "Ahmed Mohamed",
  "avatar_type": "male",
  "email": "ahmed@example.com",
  "phone": "+20123456789"
}
```

### Update Profile
```http
PUT /me
```

**Request Body:**
```json
{
  "full_name": "Ahmed Mohamed",
  "email": "newemail@example.com",
  "phone": "+20123456789"
}
```

---

## Notifications Endpoints

### Get Notifications
```http
GET /notifications
```

**Response:**
```json
[
  {
    "id": 1,
    "message": "New assignment posted",
    "is_read": false,
    "created_at": "2026-01-30T10:00:00Z"
  }
]
```

### Mark Notification as Read
```http
POST /notifications/{notification_id}/read
```

---

## Error Responses

### 400 Bad Request
```json
{
  "error": "Invalid request parameters"
}
```

### 401 Unauthorized
```json
{
  "error": "Invalid or expired token"
}
```

### 404 Not Found
```json
{
  "error": "Resource not found"
}
```

### 500 Internal Server Error
```json
{
  "error": "Internal server error"
}
```
