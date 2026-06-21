# Paw Plan Development Guide

This project uses one shared Flutter app. Do not create separate Flutter projects for each member.

## Database Choice

Use SQLite for the final CRUD implementation.

Reason:
- It is accepted by the assignment requirement.
- It is a real local database.
- It is easier to explain in the report than temporary in-memory data.

Temporary note: `TaskStorageService` currently uses in-memory sample data so everyone can build UI first. Later, Member A can replace its internals with SQLite while keeping the same method names.

## CRUD Feature

Feature name: Study Task Management

Table name:

```text
study_tasks
```

## Unified Fields

All members should use these field names:

| Field | Type | Meaning |
| --- | --- | --- |
| id | TEXT | Unique task id |
| title | TEXT | Task title |
| subject | TEXT | Course or subject name |
| description | TEXT | Task details |
| deadline | TEXT | ISO date string |
| priority | TEXT | Low, Medium, or High |
| isCompleted | INTEGER | 0 = not completed, 1 = completed |
| createdAt | TEXT | Created time as ISO date string |
| updatedAt | TEXT | Last updated time as ISO date string |

## Unified Methods

Use these method names in `lib/services/task_storage_service.dart`:

```dart
List<StudyTask> getAllTasks()
void addTask(StudyTask task)
void updateTask(StudyTask updatedTask)
void deleteTask(String id)
```

If SQLite is added later, the async version can be:

```dart
Future<List<StudyTask>> getAllTasks()
Future<void> addTask(StudyTask task)
Future<void> updateTask(StudyTask updatedTask)
Future<void> deleteTask(String id)
```

## Member File Ownership

Member A:
- `lib/main.dart`
- `lib/models/study_task.dart`
- `lib/services/task_storage_service.dart`
- Final integration and APK build

Member B:
- `lib/screens/login_screen.dart`
- `lib/screens/register_screen.dart`
- `lib/screens/profile_screen.dart`
- Add task form if needed

Member C:
- `lib/screens/home_screen.dart`
- `lib/screens/feature_screen.dart`
- View / Retrieve task list

Member D:
- `lib/screens/settings_screen.dart`
- `lib/screens/help_screen.dart`
- Edit / Update task
- Delete task
- Report content

## GitHub Rule

Before editing:

```bash
git pull
```

After editing:

```bash
git add .
git commit -m "Describe your change"
git push
```

Avoid editing another member's files unless the group agrees first.
