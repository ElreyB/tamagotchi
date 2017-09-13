# _Tamagotchi_

#### _Tamagotchi: Epicodus Sinatra exercise, 09.13.2017_

#### By _**Elrey Belmonti and L. D. MacKrell**_

## Description

_This app will recreate the functionality of the toy phenomenon of the 2000s, Tamagotchi._

## Setup/Installation Requirements

* _Clone this repository(https://github.com/MacKLess/tamagotchi.git)_
* _In your terminal type "git clone (repository url)"_
* _Run "bundle install"_
* _Open in your preferred browser_

## Specifications

* _Sets the name and life levels of a new Tamagotchi._
* Example input: [my_pet.name, my_pet.food_level, my_pet.happiness_level, my_pet.awake?]
* Example output: ["puggle", 10, 10, true]
* _Select life to see if My Pet is alive._
* Example input: hunger: 0
* Example output: dead
* Example input: hunger: 10
* Example output: alive
* _Select stats to view My Pet's food, happiness, and wakefulness._
* Example input: select stats
* Example output: [hunger: 1, happiness: 3, wakefulness: true]
* _Decrease hunger meter by 1 every 3 hours_
* Example input: 12:00, 3
* Example output: 15:00, 2
* _Decrease happiness meter by 1 every 4 hours_
* Example input: 12:00, 2
* Example output: 16:00, 1
* _Return awake status (changes every 12 hours)_
* Example input: 12:00
* Example output: true
* Example input: 23:00
* Example output: false
* _Increase food meter when select food._
* Example input: select food
* Example output: hunger: 2
* _Increase happiness meter when select play._
* Example input: select play
* Example output: happiness: 4
* _Switch lights when select light_
* Example input: select light, click button
* Example output: lights off
* _Return to homepage when click button C_
* Example input: happiness: 4
* Example output: homepage




## Known Bugs 🐛🐛🐛

No known bugs

## Support and contact details

_Feel free to contact elbelmonti@gmail.com or ldmackrell@gmail.com_

## Technologies Used

* _Ruby_
* _Sinatra_

## Contributors

<!-- Contributors START
Elrey_Belmonti Elreyb https://github.com/ElreyB code doc tests design
L._D._MacKrell MacKLess https://github.com/MacKLess code doc tests design
Contributors END -->
<!-- Contributors table START -->
<!-- Contributors table END -->
This project follows the [all-contributors](https://github.com/kentcdodds/all-contributors) specification.
