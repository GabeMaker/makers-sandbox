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