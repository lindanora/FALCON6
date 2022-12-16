import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {
   @track location = {
      city: "Dallas",
      country: "United States",
      postalCode: "6474888"
   };

   handleChange(event) {
      this.location.city = event.target.value;
   }
}