# Drawer Counter Task
This repo is a task for testing flutter job applicants for Al-Jad.


# Task Details
We provide you with 2 api endpoints:
| Method | Endpoint |Parameter : type|Parameter Value|
|--|--|--|--|
| GET | http://api.ibaity.com/v1/config | N/A | N/A|
| PATCH | http://api.ibaity.com/v1/config/count | `count` : form-url-encoded | integer value represent the updated count value |

You should create with flutter:
 1. a **drawer**
 2. a **button**

### Drawer Details
it should contains titles and a number like this:
> count (19)

 the titles and the numbers should be read from the **GET** endpoint.
 
### Button Details
the button should be in the center of the main screen.
it should use the **PATCH** endpoint to increase the count by one.

## App Behavior
The drawer should update the count value whenever the button is clicked while the drawer is not in the screen view. Then when the drawer is opened we should see the new value for count.

# Task Submitting  (Completion)
We accept two methods of submitting the task and mark it for completion.

 1. You can push your code to a new branch. The new branch's name should be the same as the applicant name.
 2. You can fork the repo and send a pull request after you finish the repo.

# Things to follow
Using these packages is a plus, but they are not mandatory:

 1. [dio](https://pub.dev/packages/dio)
 2. [mobx](https://pub.dev/packages/mobx)
 3. [freezed](https://pub.dev/packages/freezed)
