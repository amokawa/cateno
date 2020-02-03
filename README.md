<h4 align="center">
  📝 Some challenges suggested by cateno / Stefanini
</h4>
<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/amokawa/cateno">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/amokawa/cateno">
  
  <a href="https://github.com/amokawa/cateno/commits/master">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/amokawa/cateno">
  </a>
</p>

## Projects

### front-end
It's a project using Ruby, RSpec, Capybara and Cucumber.
Tasks:
- Simulates a user sign up
- Simulates a item purchase

#### Setup
- Pre-requisites: Ruby
- It assumes the "chromedriver" is already installed
- `cd front-end && bundle install`

#### Tests
Find the tests described at `front-end/features/scenarios`.

#### Run
Run `cd front-end && cucumber`

#### Evidences
Check the screenshots and the test summary report at `cd front-end/reports`.

#### Next steps
- Create more testing scenarios
- Create the page objects using SitePrism

### back-end
It's  a project using Rspec, HttParty, and Json-schema.
Tasks:
- It should validate the response json schema
- It should validate the response status code
- It should validate the fragments "estado_info" and "cidade_info"

#### Setup
- `cd back-end && bundle install`

#### Run
Run `cd back-end && rspec --format html --out reports/report.html`

#### Evidences
Check test summary report at `cd back-end/reports`.