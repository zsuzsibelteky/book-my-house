# Dear candidate!

At this stage of the interview process, you'll be introduced to a very simple Ruby on Rails application, on which you'll have to do a number of exercises. Our goal with this is to examine the various skillsets you have. Let me just point that out, that you do NOT need to finish all the exercises in order to succeed. We'd rather like to learn the way you think, solve problems and your general knowledge on the topic by watching you work, than to just discuss the sheer number of LoC you wrote.

The application you'll be working with today is practically a "guesthouse management app". You can book for a specific date, which will then be displayed on the main page. You're encouraged to try out it's functionality before starting any of the exercises.

If you come across an obstacle which proves to be difficult, feel encouraged to ask us anything! We'll be glad to answer or ask some leading questions. (Or just utilize Google, StackOverflow or https://guides.rubyonrails.org/ to your liking.)

I wish you success!

## Let's begin!
0. Run the server
    1. open up https://paiza.cloud/en/ in your browser
    2. sign in with your google account or create on with an email
    3. create a new server: { name: "book-my-house", Web application development: "Ruby on Rails", Database: "PostgreSQL" }
    4. open the menu in the to left corner of the screen and select 'git'>>'clone' and then this project repo
    5. open a terminal window
        - run these commands from /home/ubuntu/book-my-house (you might already be there, so it's worth cheking with 'echo $PWD')
        - 'sudo gem install bundler'
        - 'bundle install'
        - 'yarn install --check-files'
        - 'rails db:setup'
        - 'rails server'
    6. open the app via the 'localhost' popup

1. Add a new number_of_guests field to Bookings
    1. create a new migration
    2. create a validation to allow only between 1-8
    3. add an input field to the booking form
    4. customize the error message on the page if the input is invalid

2. Style the UI of the app!
    1. install the [bootstrap gem](https://github.com/twbs/bootstrap-rubygem)
    2. change the application.css file's extension to .scss
    3. import bootstrap there

3. Create an occupation page
    1. create a new route and a new controller for the occupations
    2. display the booked days like so: 4_2019.08.03 where '4' is the number of guests (if you've done the first exercise) and the rest is just the booking date separated by dots
    3. primarily order the list by the number of guests, and secondarily shuffle the dates

4. Add pagination to /bookings
    1. use a gem to do this! We suggest 'pagy'. browse [here](https://www.ruby-toolbox.com/categories/pagination)
    2. make it so, that every page only displays four bookings
    
