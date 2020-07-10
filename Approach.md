# Approach


# Overview
We approached this challenge by prioritising good teamwork, group-learning, and high-quality processes. 

We began the week by creating a Team Charter to clarify the values we had as a team and ensure that our goals were aligned. We also defined four team roles - Leader, Scribe, Challenger, and Helper - and we rotated them each day to ensure that we all gained experience in each skill set. 

In order to prioritise our learning we used Github’s Wiki feature, you can find it [here](https://github.com/NikitaDouglas/acebook-Kindred/wiki) - when a team member felt that the work they had learnt something they wrote a Wiki to summarise their findings so that we could use the knowledge again inf future projects. This also helped to achieve our goal of learning as a group - one member’s knowledge could be shared with all members.

We worked in an Agile way - the project was two-weeks long and we worked in two-day sprints; every day we had a morning stand-up, a lunchtime alignment meeting, and an afternoon/evening retro. 

We used Trello to manage our workload, estimating the length of time a feature would take to create, assigning team members to take ownership of a feature, and breaking those features down into smaller tasks - researching the technologies, test driving the feature, and writing our code, 

## Week 1

### Heroku

We chose Heroku to deploy our app - we followed Heroku’s own guide for Rails projects and were able to deploy our fledgling project fairly swiftly - we wrote about it here. 

Testing, Test Coverage, and Linting

We used RSpec and Capybara as our testing tools, and Simplecov to give us visibility on our test coverage. We used Rubocop to lint our code. 

Travis CI

We chose Travis CI as our continuous integration tool and wrote about our experience with it here. 

Initially we wanted to use Code Climate to link our test coverage to Travis, but this proved difficult as we were unable to get our test reports to pull through to CC, so we reverted to connecting RSpec and Simplecov to Travis in our `.travis.yml` file.

Rails

This was the first time any of us had used Rails and it has a very steep learning curve - in the middle of our first week we all took some time apart to learn about the structure of Rails, how it related to the MVC pattern, and how databases linked to it. We then reconvened to share our learnings. 

User Authentication

We chose to use Devise to manage user authentication in our app. The setup was fairly straightforward, and it managed the creation on the relevant models, controllers, and views as well as email verification and password encryption. 


Week 2

Likes Feature

On Monday of Week 2 we were given a new feature by our client, to prioritise above all others - implementing a likes button on our posts. 

To maintain high test coverage we ensured our tests were passing for user authentication before we moved on to this feature. 

While working on this feature and took the time to understand rails routes, resources and how a sub-controller for likes worked with the main posts controller. 

We then wrote feature tests for a user logging in and creating a post and being able to see the like button.

We worked hard to ensure we maintained high test coverage but the model/controller was retrospective tested as we spiked the backend code

Posts

Once we had good progress on the likes feature we made a start on adding extra features to posts, including the user being able to add a name, as well as linking the user to their post (via a foreign key in the database) . This allowed the form to pull through their email and the date of the post. 

Bootstrap/Styling
We wanted to learn a css framework and chose bootstrap to do this 
We added a navigation bar to the website looking how we wanted it which we later extracted into a partial to DRY out our views. 
We added styling to the posts to make them appear as cards and styled them accordingly. We added the like button which changed dependant on the user action, the post also had a likes counter on the post and used js to update date the button and counter on click

Wireframe 

