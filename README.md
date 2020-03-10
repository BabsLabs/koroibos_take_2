# Koroibos

## About
Koroibos is an application that returns statistics on olympic athletes and events based off data collected from the 2016 olympics. This applicaiton uses Ruby on Rails to process CSV data and return it as an API.

![Korobois API Example](https://user-images.githubusercontent.com/38663414/76343282-c9c81a80-62f7-11ea-85c8-94186ac72bd8.png)

## Setup
1. Clone repo
1. Change into project directory
1. Install dependancies with `bundle install`
1. Create database `rails db:create`
1. Migrate `rails db:migrate"`
1. Migrate `rails db:migrate RAILS_ENV=test"`
1. Import CSV data to development database `rake import`
1. import CSV data to test database `rake import_test`

## Testing
Testing is done with Rspec

### Running all tests
All tests can be run with `rspec`

### Running an individual test
An individual test can be run with `rspec /PATH/TO/TEST`

## How to Use / Endpoints

### Versioning
This is the first version of this API. All endpoints are prepended with `/api/v1`

### Available Endpoints
#### Olympians
As a user I can send a `GET` request to `api/v1/olympians`

```
//Response Format
{
  "olympians":
    [
      {
        "name": "Maha Abdalsalam",
        "team": "Egypt",
        "age": 18,
        "sport": "Diving"
        "total_medals_won": 0
      },
      {
        "name": "Ahmad Abughaush",
        "team": "Jordan",
        "age": 20,
        "sport": "Taekwondo"
        "total_medals_won": 1
      },
      {...}
    ]
}
```

#### Youngest Olympian
As a User I can send a `GET` request to `api/v1/olympians?age=youngest`

```
//Response Format
{
  "olympians":
    [
      {
        "name": "Ana Iulia Dascl",
        "team": "Romania",
        "age": 13,
        "sport": "Swimming"
        "total_medals_won": 0
      }
    ]
}
```

#### Oldest Olympian
As a user I can send a `GET` request to `api/v1/olympians?age=oldest`

```
//Response Format
{
  "olympians":
    [
      {
        "name": "Julie Brougham",
        "team": "New Zealand",
        "age": 62,
        "sport": "Equestrianism"
        "total_medals_won": 0
      }
    ]
}
```

#### Olympian Stats
As a User I can send a `GET` request to `api/v1/olympian_stats`

```
// response format
  {
    "olympian_stats": {
      "total_competing_olympians": 3120
      "average_weight:" {
        "unit": "kg",
        "male_olympians": 75.4,
        "female_olympians": 70.2
      }
      "average_age:" 26.2
    }
  }

```

#### Events
As a User I can send a `GET` request to `api/v1/events`

```
//Response Format
{
  "events":
    [
      {
        "sport": "Archery",
        "events": [
          "Archery Men's Individual",
          "Archery Men's Team",
          "Archery Women's Individual",
          "Archery Women's Team"
        ]
      },
      {
        "sport": "Badminton",
        "events": [
          "Badminton Men's Doubles",
          "Badminton Men's Singles",
          "Badminton Women's Doubles",
          "Badminton Women's Singles",
          "Badminton Mixed Doubles"
        ]
      },
      {...}
    ]
}
```

#### Medalist by Event ID
As a User I can send a `GET` request to `api/v1/events/:id/medalists`

```
//Response Format
{
  "event": "Badminton Mixed Doubles",
  "medalists": [
      {
        "name": "Tontowi Ahmad",
        "team": "Indonesia-1",
        "age": 29,
        "medal": "Gold"
      },
      {
        "name": "Chan Peng Soon",
        "team": "Malaysia",
        "age": 28,
        "medal": "Silver"
      }
    ]
}
```

## Known Issues
None so far!

## How to Contribute
Contact @babslabs on github

## Core Contributors
@babslabs

## Schema Design

## Tech Stack
- Ruby
- Rails
- Rspec
- Shoulda-matchers
- Pry

## Dependancies
- Ruby 2.4.1 or greater
- Rails 5.2.4.1 or greater
