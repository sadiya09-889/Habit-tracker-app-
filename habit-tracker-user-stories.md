Build a simple mobile Time Tracker / Habit Tracker app using Flutter.

The app should allow users to track time entries for different projects and tasks and store the data locally.

Core Requirements

1. Home Screen
- Display a list of time entries.
- If there are no entries, show an empty state message: "No time entries yet."
- Include a tab option to group entries by Projects.
- Support grouping entries by project.
- Each entry should display:
  - total time
  - project name
  - task name
  - notes
  - date
- Support swipe-to-delete or a delete button.

2. Add Time Entry Screen
- Form fields:
  - Total Time (number)
  - Project Name (dropdown)
  - Task Name (dropdown)
  - Notes (text field)
  - Date (date picker)
- Button: "Add Time Entry"
- Before submission, all fields should be filled.

3. Dropdown Lists
- Project dropdown should show existing projects.
- Task dropdown should show existing tasks.

4. Hamburger Menu
Include a side drawer menu with:
- Home
- Projects
- Tasks

5. Project Management Screen
- List of projects
- Floating Action Button (+)
- Clicking + opens a dialog to add a new project

6. Task Management Screen
- List of tasks
- Floating Action Button (+)
- Clicking + opens a dialog to add a new task

7. Local Storage
- Use local storage (SharedPreferences or Hive).
- Store:
  - projects
  - tasks
  - time entries
- Ensure entries persist after app restart.

8. UI Features
- Material Design layout
- Floating Action Button for adding entries
- Swipe to delete entries
- Dropdowns for project and task selection

9. Screens Needed (Important for screenshots)
The app must allow taking screenshots for the following states:

home-empty
- Home screen showing empty state message with no entries

home-empty-group
- Projects tab showing empty grouped entries

entry-project-list
- Project dropdown open

entry-task-list
- Task dropdown open

entry-add
- Add TimeEntry form filled but not submitted

home-entries
- Home screen showing multiple entries

home-entries-group
- Entries grouped by project

entry-delete
- Swipe delete action or delete icon visible

menu
- Hamburger drawer open showing Home, Projects, Tasks

project-management
- Project list screen with floating (+) button

project-add
- Dialog open to add a new project

task-management
- Task list screen with floating (+) button

task-add
- Dialog open to add a new task

local-storage-empty
- Local storage showing empty entries

local-storage-filled
- Local storage showing saved entries

10. Keep the app simple and minimal UI but functional.

Generate:
- Flutter project structure
- Dart files
- Widgets for all screens
- Local storage logic
- Sample UI styling