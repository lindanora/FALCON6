import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
   name; //undefined
   fullName = "Salesforce Developer"; //string
   age = 30; //number
   location = {
      city: "Houston",
      country: "United States",
      postalCode: "26374848"
   };
   fruits = ["Banana", "Orange", "Pomegranate", "Pineapple"]; //array

   // write methods
   getLocation() {
      return this.location.city;
   }
}