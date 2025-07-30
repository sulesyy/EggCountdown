This project is my version of the popular Egg Timer Challenge from Angela Yu’s iOS course, rewritten and enhanced using Swift and UIKit. The goal is to build a user-friendly and functional countdown timer that adjusts based on different egg boiling times.

App Features

Three boiling time options: Soft, Medium, and Hard with predefined short durations (in seconds for testing purposes).

Starts countdown based on user selection, displaying the remaining time every second.

Visual progress tracking using a UIProgressView.

Displays “DONE!” message when the countdown finishes.

Cancels any previous timer to allow quick switching between choices.

What I Learned

Using Timer: How to create and manage timers with Timer.scheduledTimer to perform second-by-second countdowns.

Memory Management: Using [weak self] in timer closures to avoid retain cycles and manage memory correctly.

Storyboard Connections: Effectively connecting UI elements with code via IBOutlet and IBAction.

Data Structures: Organizing egg boiling times in a dictionary for clean and efficient data handling.

UI Updates: Updating labels and progress bars in real time as the timer runs.

User Experience: Cancelling and resetting timers smoothly when the user changes their selection.

 About the Project

This application is a reimplementation of Angela Yu’s original Egg Timer project, created to deepen my understanding of Swift programming and UIKit development. The app demonstrates essential timer functionality, user interface updates, and state management in iOS. While the current boiling times are set in seconds for testing convenience, they can easily be adjusted to reflect real-world cooking durations in minutes.
<img width="447" height="960" alt="Ekran Resmi 2025-07-30 19 54 26" src="https://github.com/user-attachments/assets/56bcc604-1fd2-4660-b530-4c02cd7ac104" />
<img width="447" height="960" alt="Ekran Resmi 2025-07-30 19 54 47" src="https://github.com/user-attachments/assets/acd2ae97-beb4-44e7-9301-0f3e1522f496" />
<img width="447" height="960" alt="Ekran Resmi 2025-07-30 19 54 57" src="https://github.com/user-attachments/assets/df1add08-de43-4aec-bcb6-9dc07b4238fa" />

