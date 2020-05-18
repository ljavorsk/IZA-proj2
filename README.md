# IZA second project
# StudentRating
**Author:** Lukas Javorsky  
**Student ID:** xjavor20  
**School:** BUT FIT  
**Subject:** IZA (Programming Apple Devices)  
**Application language:** SwiftUI

## Purpose
This application is a school project that is targeted to exercise and try application creation in Swift language.  
In my case I wanted to try new perspection of Swift programming that is called SwiftUI.  
Also another thing that was ment to be tried is CoreData library.  
I've used it in Subject view. Every record of the student is stored in database.  

## Aplication usage
The aplication is ment to be used as a interactive dictionary for student rating.  
For example, as a teacher you have a scoring exercice, and you want to note the scores of every individual in your class, you use this app to do that.  
The records of student and his rating are stored in a database, that is linked with this application. It means that data are persistent.  

## Application windows
### Onboarding screen
<img src="https://user-images.githubusercontent.com/52954689/82213085-e42ffd00-9913-11ea-9599-1c066fb66cb1.jpeg" alt="onboarding" width="250" height="500">
This screen is displayed just once, when the application is first launched.  
It should help the user to have some kind of idea, how to use the app.  

---
### Main screen
<img src="https://user-images.githubusercontent.com/52954689/82213549-9d8ed280-9914-11ea-94c7-cb5841b0191e.jpg" alt="main" width="250" height="500">

This screen is shown at every application launch.  
It's just a template for future application development.  

---
### Subject screen
<img align=left src="https://user-images.githubusercontent.com/52954689/82213801-0e35ef00-9915-11ea-8710-76e6bbabbcf2.jpg" alt="adding" width="250" height="500">

#### Adding new student

In the top section you can write student's name, and by draging the slider, choose his score.  
Simply by clicking at the **plus** button, the record will be added to the database (haptic response will be triggered).  

---
<img align=left src="https://user-images.githubusercontent.com/52954689/82213840-1db53800-9915-11ea-8159-52f381bc0047.jpg" alt="editing" width="250" height="500">

#### Editing the records of the students

There are **two ways** of deleting the student's record.  
**First** is to click an `edit` button, then select your record and click at `delete`.  
**Second** is to slide the record to the left and it will be automaticly deleted.  
