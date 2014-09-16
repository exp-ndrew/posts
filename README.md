# posts

## About

Twitter clone for quick note-taking or posting.

## Currently working on

* CRUD on Posts

## Future

### Near

* CRUD on Posts
* Followers/Following
* Preferences section
  * add ability to change user color
  * delete your own account
  * change email and password (R/U on User)

### Far

* @user support (calling a user with @ in front of their user name)
* Hashtag support (hashtag objects with many-to-many relation to posts, check uniqueness on creation, etc)
* Feed with posts from all users on homepage

## To Fix

* login/signup forms look funky
* nav bar in xs/sm responsive layouts: should show user information and links without hamburger button

## Setup

1. Clone the repository using `$ git clone`
1. Run `$ rake db:create`, `$ rake db:migrate`, and `$ rake db:seed` from the directory you cloned into
1. Run `$ rails server`
1. Go to [http://localhost:3000/](http://localhost:3000/) in a web browser to use the program.

## Meta

15 September 2014

[Matthew Williams](http://github.com/mattwilliams85) and [Andrew M Westling](http://github.com/expandrew)
via [Epicodus](http://www.learnhowtoprogram.com/lessons/twitter-clone)

## License
MIT
