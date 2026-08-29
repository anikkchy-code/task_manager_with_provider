# Task Manager App

A Flutter application that demonstrates state management using the Provider package. The application adheres to Flutter best practices by separating concerns into Model, Provider, Screens, and Widgets without utilizing `setState()` for task data management.

## Features

- **Task List:** Displays all tasks with their titles, descriptions, and current completion status.
- **Add Task:** A dialog interface to input and immediately add a new task title and description.
- **Update Task:** Instantly toggle tasks between Completed and Incomplete with automatic UI updates.
- **Delete Task:** Remove tasks dynamically from the list with real-time UI synchronization.
- **Task Statistics:** Live dashboard tracking and updating Total, Completed, and Pending tasks.
- **Empty State UI:** A clean, user-friendly visual layout shown when no tasks are present.

## Project Structure

```text
lib/
├── models/
│   └── task_model.dart          # Data structure for a Task
├── providers/
│   └── task_provider.dart       # State management logic extending ChangeNotifier
├── screens/
│   └── task_manager_screen.dart # Main application container and AppBar setup
├── widgets/
│   ├── add_task_dialog.dart     # Input dialog using context.read()
│   ├── statistics_section.dart  # Consumer widget for live task stats
│   └── task_list_section.dart   # Consumer widget for list builder and empty state
└── main.dart                    # Application entry and ChangeNotifierProvider setup
```

## Getting Started

### Prerequisites

- Flutter SDK (v3.0.0 or higher)
- Android Studio / VS Code / Cursor

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com
   ```

2. Navigate to the project directory:
   ```bash
   cd task_manager_with_provider
   ```

3. Install the dependencies:
   ```bash
   flutter pub get
   ```

4. Run the application:
   ```bash
   flutter run
   ```

## State Management Architecture

This project strictly utilizes the **Provider** package to handle the application state:
- `TaskProvider` extends `ChangeNotifier` to hold business logic and task states.
- `notifyListeners()` triggers reactive changes across UI consumers.
- `Consumer` and `context.watch()` are used to listen to state modifications.
- `context.read()` is implemented for discrete event dispatches like adding or deleting tasks without causing unnecessary widget rebuilds.
