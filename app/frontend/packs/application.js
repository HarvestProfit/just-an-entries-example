import Ujs from '@rails/ujs';
import { Collapse, Toast } from 'bootstrap';
import flatpickr from 'flatpickr';
import Turbolinks from 'turbolinks';

import 'flatpickr/dist/flatpickr.min.css'

import '../styles/index.scss';

Ujs.start();
Turbolinks.start();

window.Toast = Toast;
window.flatpickr = flatpickr;

