import React from 'react'
import ReactDOM from 'react-dom'
import Clock from 'Clock'

document.addEventListener('turbolinks:load', function() {

var element = document.getElementById("clock");
    ReactDOM.render(<Clock />, element);

});