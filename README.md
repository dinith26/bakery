# README

This README would normally document whatever steps are necessary to get the
application up and running.

ruby version '2.6.5'
rails version '~> 6.0.4'

Create mysql databse before run migrations 
Change configurations in config -> database.yml file

## Commands

# Install all dependencies and compile assets file usinf following commands
```
bundle install
rails assets:clobber
rails webpacker:compile
```

# run migrations
```
rails db:migrate
```

# run seed files
```
rails products:seed_genres
rails packages:seed_packs
```

# run the development server and services
```
rails server
```
