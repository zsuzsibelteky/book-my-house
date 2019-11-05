# Hello candidate!

We are happy to meet you in this interview process! This is our code skill test application. It is a simple Ruby on Rails app very similar to our products.

What does this app do? It is a guesthouse management app for a given house. You can book a house for a given day, list the bookings and even query whether a day is already booked.

Objective: Finish one or more tasks to convince us about your problem solving skills. We also added subtasks to see the steps needed. It is enough if you finish one of the 6 tasks, but if you have fun you might continue until there is no task left. 

Important notice: We would like to see how you think. Feel free to ask us in any channel! One more note - don't spend more than two weeks on this.

## Useful websites:
* https://guides.rubyonrails.org for Rails related general knowledge
* https://apidock.com/rails for searching documentation
* http://ruby-toolbox.com if you are interested about library support
* https://www.railstutorial.org/book a good but $9 priced Rails tutorial, worth it

## First of all, let's run the server locally!
1. Install the prerequisites:
    - Node.js with Yarn (https://riptutorial.com/node-js/example/29249/yarn-installation)
    - Ruby 2.5.1 (https://solarianprogrammer.com/2018/09/22/install-ruby-macos-windows-ubuntu/)
2. Clone this repo
3. Install bundler: run `gem install bundler`
4. Go to the projects main directory and run `bundle install` to install the dependencies listed in the Gemfile
5. Run `rails db:setup` to create the local database
6. Run `rails server`, then you can access the app on `localhost:3000`
7. Run `rails test` to see the test code results

## Tasks:
1. Add a new number_of_people field to the Bookings
    1. [must] Create a new migration
    2. [must] Create a validation to allow only between 1-8
    3. [must] Add this field to the new booking form
    4. [optional] Display an error message at the page if the input is not valid 
    5. [optional] Write automated tests
2. Add an email field to the Bookings.
    1. [must] Create a new migration
    2. [must] Send a confirmation email to the given address when the Booking is saved
    3. [optional] Create a validation to allow only email addresses
    4. [optional] Use a ruby gem to automatically open the sent email during development (https://www.ruby-toolbox.com/categories/EMail_Fake_Servers)
    5. [optional] Write automated tests
3. Style the UI of the app!
    1. [must] Use any front-end tools to make this application a bit nicer
4. Create a statistics page
    1. [must] Create a new route and a new controller for the statistics
    2. [must] Display the summary of the booked days
    3. [optional] Display the monthly summary
    4. [optional] Write automated tests
5. Add pagination into the /bookings page using the pagy ruby gem
    1. [must] Add pagination to the bookings list. Every page should display 10 bookings
    2. [optional] Use one of the ruby gems to achieve it (https://www.ruby-toolbox.com/categories/pagination)
    3. [optional] Write automated tests
6. Deploy this application to Heroku
    1. [must] Deploy this simple application to Heroku and use their Postgresql database in production (https://devcenter.heroku.com/articles/getting-started-with-rails6)
    2. [optional] Add addons for log handling, error monitoring, etc
    
    
See you in two weeks!
