**Problem:** Blank Slate Syndrome

**Solution:** read through challenge

**Problem:** BSS again: how to turn features into anything. What should my workflow be?

**Solution:** Break it down. I'm being asked for 5 features:
- sign up
- log in
- log out
- post a message
- view messages in order

The first 3 were definitely done in bookmark manager. Posting a message is a bit like adding a link. Ordering them shouldn't be too hard, but I won't even think about that before doing at least some of the first ones.

**Problem:** I don't know how to start

**Solution:** I won't always have a walkthrough, but it's early days and I do have one now, so why not use it? These are also pretty standard things I'll likely have to do many times. My next step is to truncate the walkthrough to clear steps. Then see if I want to follow them in this new project


## Steps in walkthrough:

- Write user stories / features
- Produce user interface experience sketch

- Create an empty Sinatra app
- Install ORM and ensure it works with db engine (postgres)

- Create first model (things that will be going into a table e.g. links/tweets)

- Create database

- Ensure that controller/server knows where db is

- Demo test of first model (and cleaning the db)

- First integration test (signing up)


### Signing up

First step is to write a feature test. This will involve entering:
- email
- password (confirmation can wait at this stage)
- name
- user name

Then being greeted by user name and being confirmed as signed up

**Now is a good time to try writing some code, following these steps as best I can**

#Progress Log:

- created skeleton server.rb then tried to run rackup/shotgun
- **Problem:**

configuration /Makers-sandbox/config.ru not found

configuration config.ru not found

- **Tried:** creating blank config.ru in same directory. Works for shotgun. Rackup throwing:

/Users/Gabriel/.rvm/gems/ruby-2.2.0/gems/rack-1.6.0/lib/rack/builder.rb:146:in `to_app': missing run or map statement (RuntimeError)

- create user.rb

- **Problem:** Sinatra not displaying webpage:

> Boot Error

> Something went wrong while loading config.ru

> RuntimeError: missing run or map statement


- **Tried:** opening up previous examples of config.ru files; googling config.ru

Don't know what file to use the 'run' command in abscence of a line like "class SimpleApp < Sinatra::Base"

- **Tried:** not using rackup or sinatra, deleted .ru file for now

This worked.

**Next error:** $ ruby server.rb
> /Users/Gabriel/.rvm/gems/ruby-2.2.0/gems/dm-core-1.2.1/lib/dm-core/model.rb:865:in `assert_valid_key': User must have a key to be valid (DataMapper::IncompleteModelError)

- added id property to user

**Next error:** $ ruby server.rb

> /Users/Gabriel/.rvm/gems/ruby-2.2.0/gems/data_objects-0.10.15/lib/data_objects/connection.rb:79:in `initialize': could not connect to server: Connection refused (DataObjects::ConnectionError)

- need to set up database? Tried starting my PostgreSQL desktop client.

**Next error:** $ ruby server.rb

> /Users/Gabriel/.rvm/gems/ruby-2.2.0/gems/data_objects-0.10.15/lib/data_objects/connection.rb:79:in `initialize': FATAL:  database "chitter" does not exist (DataObjects::ConnectionError)

- Now it's time to create the chitter database in psql.

- Trying to add a user to database via irb

**Next error:** $ user = User.create("u","n","e","p")

> NoMethodError: undefined method `each' for "u":String from /Users/Gabriel/.rvm/gems/ruby-2.2.0/gems/dm-core-1.2.1/lib/dm-core/resource.rb:332:in `attributes='

- Will try to look at how tutorial deals with creating new instances of model classes. **solved** needed to require server.rb (which requires users too) rather than just requiring users.rb

###Commit
"Can manipulate db in irb": Next step to start integration tests with this very basic set-up

**ERROR**

Having huge difficulties with taking the 'classic' Sinatra approach, rather than modular

>Failure/Error: visit '/'
>ArgumentError:
>rack-test requires a rack application, but none was given

**SOLUTION**
inserted in spec file: Capybara.app = Sinatra::Application