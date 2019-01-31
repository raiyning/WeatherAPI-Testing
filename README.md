# WeatherAPI-UnitTesting
### Description

This is an attempt to create a Test which on the https://openweathermap.org/current and https://openweathermap.org/forecast5 API service with limited documentation on the website. The program will test a different parameter to the JSON file recieved from the website. The tests are created on rspec with a TDD approach. Stored within included is the ability to retrieve the cityID with city name with country initials. 
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
2. open https://openweathermap.org/current and create your own API key to use
3. Create a empty .env file and type out
> API_KEY= {insert_your_api_key_without_brackets}
4. Save file (You may want to create a gitignore to avoid exposure of api keys)
2. Within terminal type rspec 
3. Tests should then display in the terminal, whether they're correct or incorrect with associated contexts

## How to Use Parse_Json_Cities Method for any cityID
1. Copy services file folder within your project
> lib -> generator -> services
2. Copy the city_list.json
3. Require relative to the class file 
3. To create the object to use, instanciate the Parse_json_cities
```ruby
test = Parse_json_cities.new
```
4. After instanciating, execute the get_id_by_name method using 

```ruby
test.get_id_by_name('london','GB')
```

6. This will return with cityID number usable with weather API
>'2643743'

### Challenges 
1. Deciding the degree of testing required in each parameters
2. Inconsistent parameter recieved from the API
3. Definition of done testing
4. Taking time factor to consideration


### Learning points
1. Developed my experience of using an API with limited documentation 