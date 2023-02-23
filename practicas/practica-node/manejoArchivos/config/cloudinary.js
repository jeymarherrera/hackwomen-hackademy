const cloudinary = require("cloudinary");
const {CLOUDINARY} = require("./config");

cloudinary.config({ 
    cloud_name: CLOUDINARY.NAME, 
    api_key: CLOUDINARY.API_KEY, 
    api_secret: CLOUDINARY.SECRET,
    secure: true
  });

  module.exports = cloudinary;