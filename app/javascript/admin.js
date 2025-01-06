import 'flowbite'
import 'flowbite-datepicker'
import { Datepicker } from 'flowbite';

const datepickerEl = document.getElementById('datepicker-autohide');
console.log(datepickerEl)
new Datepicker(datepickerEl, {
    // options
}); 