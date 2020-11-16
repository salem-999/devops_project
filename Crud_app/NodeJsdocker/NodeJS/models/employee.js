const mongoose = require('mongoose');

var Employee = mongoose.model('Employee', {
  username: { type: String },
  fullname: { type: String },
  birthdate: { type: String },
  email: { type: String },
  password: { type: String }
});

module.exports = { Employee };
