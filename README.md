# Rails Workshop: Blog Api
Sample project to get started for part 2 of our rails workshop

## Setup

1) Clone the project

  ```bash
  git clone https://github.com/felixbr/rails-workshop-blog.git
  ```

2) Go into the project root

  ```bash
  cd rails-workshop-blog
  ```

3) Setup the dependencies

  ```bash
  bundle
  ```

**Note:** If you get an error saying that bundler is not installed run
`gem install bundler`

4) Setup the database

  ```bash
  rake db:setup
  ```

5) Test if it's working

  ```bash
  rails server
  ```

  Afterwards open [localhost:3000](http://localhost:3000) in your browser.

6) Run the test suite

  ```bash
  bundle exec rspec
  ```

**Tip:** You can specify a file after `rspec` to only run those specs