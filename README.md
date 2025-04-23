Daily Journal Project
=====================

Overview
--------

This project allows users to maintain a digital daily journal. You can add, edit, and view journal entries, which include a title, text, date, and a rating system for each entry. The application is built using SwiftUI and SwiftData, ensuring smooth and modern UI/UX design. The journal entries are stored and easily accessible in the app, with a simple navigation system for easy user interaction.

Features
--------

*   **Add New Entries**: Easily create new journal entries with a title, text, date, and rating.
    
*   **View Existing Entries**: View journal entries with a detailed view of each entry's content and metadata.
    
*   **Edit Entries**: Edit or delete existing journal entries.
    
*   **Data Persistence**: Entries are saved, and all changes persist even after the app is closed.
    

How to Run
----------

1.  bashCopygit clone https://github.com/username/daily-journal.gitcd daily-journal
    
2.  Open the project in Xcode.
    
3.  Build and run the app on a simulator or a real device.
    

Demo
----

Here’s a [link to the demo video](https://drive.google.com/file/d/1_0vAE_cKxnoSoHY33XlT7-qqHbHxH0tw/view?usp=sharing) showcasing the functionality of the app.
Detailed Review of Learnings
============================

### 1\. **Data Management with SwiftData**

*   I learned how to use **SwiftData** to manage and store data efficiently in the app. This includes creating a model for journal entries and using the **@Model** annotation to define the data structure.
    
*   The journal entries are saved using **ModelContainer**, allowing for easy retrieval and display in the app.
    

### 2\. **Building a User Interface with SwiftUI**

*   I built the entire UI using **SwiftUI**, which made it easy to design a responsive and visually appealing interface.
    
*   I created a form for adding and editing journal entries, a list to display existing entries, and detailed views for individual journal entries.
    
*   The navigation between different views was implemented using **NavigationStack**, ensuring a smooth and seamless user experience.
    

### 3\. **Working with Dates and Time**

*   I used **DatePicker** and **DateFormatter** to handle and display the date of journal entries, ensuring that each entry is time-stamped accurately.
    
*   I learned how to format and display dates properly in the app for a better user experience.
    

### 4\. **Handling User Input**

*   The project involved handling various types of user input, including text fields for titles and text, a slider for ratings, and a date picker for selecting the date.
    
*   I utilized **State** variables to manage user input and pass data between views.
    

### 5\. **Model-View-Controller (MVC) Design Pattern**

*   The app follows the **MVC** design pattern, where the journal entries serve as the model, the views are the UI components built with SwiftUI, and the controller manages the interaction between the model and the views.
    
*   The separation of concerns makes the codebase more maintainable and easier to scale in the future.
    

### 6\. **Navigation and Views**

*   I implemented a navigation system using **NavigationLink** to navigate between views, such as from the journal entry list to the detailed view or editing view of an entry.
    
*   The **sheet** modifier was used to display the create journal entry view, making the interaction more intuitive.
    

### 7\. **Model Persistence**

*   The journal entries are stored persistently using **SwiftData**'s ModelContainer, meaning that even when the app is closed and reopened, the data is preserved.
    
*   I learned how to work with **@Query** to fetch data from the model and display it in a list in the UI.
    

### 8\. **App Navigation and Flow**

*   I developed an intuitive navigation system, allowing users to add, view, and edit entries easily.
    
*   I implemented **editMode** to toggle between viewing and editing modes for journal entries, improving user interaction.
    

### 9\. **Refining UI Components**

*   I created reusable SwiftUI components, such as the **Journalentryrowview**, to display journal entries in a clean and organized manner.
    
*   The design of the **JournalEntryDetailView** and **EditJournalEntryView** ensured that users could interact with the content in a clear and user-friendly way.
    

Project Structure
-----------------

*   **JournalEntry.swift**: Defines the data model for a journal entry.
    
*   **ContentView.swift**: The main view for displaying the list of journal entries.
    
*   **createJournalEntryView.swift**: The view for creating new journal entries.
    
*   **EditJournalEntryView.swift**: The view for editing existing journal entries.
    
*   **Journalentryrowview.swift**: A reusable view for displaying a journal entry in a list.
    
*   **JournalEntryDetailView.swift**: A detailed view of a journal entry.
    
*   **Daily\_JournalApp.swift**: The entry point of the app, initializing the data container and the app’s main view.
