# Simple Rest Api With Ruby On Rails

author : Faisal Ihsanul Fikri

### Setup

- Clone this repository
- make new database with name "mylibrary"
- run this
  ```sh
  $ bundle install
  $ rails s
  ```
- Rest api will ran on http://localhost:3000
- For example http://localhost:3000/api/v1/library for get all data

### Sample API

- Get all data

  ```sh
  GET - http://localhost:3000/api/v1/library
  ```

- Get single data

  ```sh
  GET - http://localhost:3000/api/v1/library/1
  ```

- Create data

  ```sh
  POST - http://localhost:3000/api/v1/library/1
  with body
    {
        "title" : "title for test",
        "description" : "description for test"
    }
  ```

- Update data

  ```sh
  PUT - http://localhost:3000/api/v1/library/1
  with body
    {
        "title" : "title for edit",
        "description" : "description for edit"
    }
  ```

- Delete data

  ```sh
  DELETE - http://localhost:3000/api/v1/library/1
  ```
