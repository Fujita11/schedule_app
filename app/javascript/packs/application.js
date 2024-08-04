import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.min.css';

// Turbolinks がページをロードするたびに Flatpickr を初期化する
document.addEventListener('turbolinks:load', () => {
  flatpickr('.datepicker', {
    // ここに Flatpickr のオプションを設定
  });
});



import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
// import "channels";

Rails.start();
Turbolinks.start();
ActiveStorage.start();

import $ from 'jquery';
import 'moment';
import 'bootstrap-material-datetimepicker';
import 'bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css';

document.addEventListener('turbolinks:load', function() {
  $('#start_date').bootstrapMaterialDatePicker({
    format: 'YYYY-MM-DD HH:mm',
    minDate: new Date()
  });
  $('#end_date').bootstrapMaterialDatePicker({
    format: 'YYYY-MM-DD HH:mm',
    minDate: new Date()
  });
});

// flatpickr の初期化
document.addEventListener('DOMContentLoaded', () => {
  flatpickr('.your-datepicker-class', {
    // オプションをここに設定
  });
});
