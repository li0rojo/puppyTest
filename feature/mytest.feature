Feature: Puppies Site puppies.erokuapp

Description: Test puppies.herokuapp

#Scenerio1 #AdoptOnePuppy
Scenario Outline: Adopt one Puppy
   Given Open the browser on puppies
    Then Select puppies from <view details>
     And click on <adopt me>
     And click on <Complete the Adoption>
    Then you complete Please Enter Your Details <name>, <Address>, <email> <pay type>
     And verify the system display message "Thank you for adopting a puppy!"

Examples:
    | Name    | Address   | Email         | Pay type|
    | Lizardo | Av. shief | li0@gmail.com | <Check> |

#Scenerio2 #AdoptTwoPuppies
Scenario: Adopt one Puppy
   Given Open the browser on puppies
    Then Select puppies from "view details"
     And click on "Adopt Another Puppy"
    Then Select puppies from "view details"
    And click on "adopt me"
     And click on "Complete the Adoption"
    Then you complete Please Enter Your Details <name>, <Address>, <email> <pay type>
     And verify the system display message "Thank you for adopting a puppy!"

Examples:
    | Name    | Address   | Email         | Pay type|
    | Lizardo | Av. shief | li0@gmail.com | <Check> |


#Scenerio3 #Adopt three puppies
Scenario: Adopt three Puppy
   Given Open the browser on "puppies"
    Then Select puppies from "view details"
     And click on "adopt me"
     And click on "Adopt Another Puppy"
    Then Select puppies from "view details"
    And click on "adopt me"
     And click on "Adopt Another Puppy"
    Then Select puppies from "view details"
     and Verify how many rows are in Your Litter
     And click on "Complete the Adoption"
    Then you complete Please Enter Your Details <name>, <Address>, <email> <pay type>
     And verify the system display message "Thank you for adopting a puppy!"

Examples:
    | Name    | Address   | Email         | Pay type|
    | Lizardo | Av. shief | li0@gmail.com | <Check> |


#scenario4 #Two puppies adoption correct amount
Scenario: correct amount
   Given Open the browser on "puppies"
    Then Select puppies from "view details"
     And click on "Adopt Another Puppy"
    Then Select puppies from "view details"
     And click on "adopt me"
    Then verify if match amount with <petshop price> plus <products/service>

#scenario 5 #correct amount plus items
Scenario: correct amount plus item
   Given Open the browser on "puppies"
    Then Select puppies from "view details"
     And click on "adopt me"
     And click on "Adopt Another Puppy"
    Then Select puppies from "view details"
     And click on "adopt me"
   When you are in your litter select a less one <product/service>
    Then verify if match amount with <petshop price> plus <products/service>
