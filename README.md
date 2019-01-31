# WeatherAPI-UnitTesting
### Description

This is an attempt to create a Test which on the https://openweathermap.org/current and https://openweathermap.org/forecast5 API service with limited documentation on the website. The program will test a different parameter to the JSON file recieved from the website. The tests are created on rspec with a TDD approach.

### Languages used
* Ruby 

### Frameworks, Libraries and Gems used used
* Rspec
* HTTParty
* Json
* DotENV

### How to download
1. To download a copy click on 'clone or download' and you can download it as a zip file.
2. Unzip the file
3. Open up the folder
4. make sure you're in the directory of API-RandomPGenerator

### How to test
1. Make sure you have rspec gem install beforehand 
2. When installed, within terminal type rspec 
3. Tests should then display in the terminal, whether they're correct or incorrect with associated contexts

## How to Use Generator Method
1. Copy lib file and insert folder within your project
2. Require relative to the Generator class file 
3. To create the object to use, instanciate the generator
```ruby
test = Generator.new
```
4. After instanciating the postcodes on the generator into a new variable 

```ruby
test.postcodes
```

5. For example execute the postcode methods using

```ruby
test.random_array(random_int_value)
```
6. This will create an array populated with an array of postcodes with random_int_value being the interger of your choice 
or for a random number:

```ruby
rand(1..100)
```
This will give you any number between 1 to 100

### Challenges 
1. Deciding the degree of testing required in each parameters
2. Inconsistent parameter recieved from the API
3. 


### Learning points
1. Developed my understanding of dealing with an API unit testing