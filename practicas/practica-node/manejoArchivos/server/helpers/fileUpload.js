const fs = require("fs");
const path = require("path");
const fileUpload = async (file, namePath) =>{
    try {
        //recibe la imagen en base 64, desde frontend. Decodificarlo y enviarlo
        //validar a partir de funciones request
        let matches = file.match(/^data:(.+);base64,(.+)$/)
        if(matches.length !== 3) return new Error('El archivo es invalido');

        let response = {};
        response.type = matches[1];
        console.log(`TYPE FILE: ${matches[1]}`)
        console.log(`DATA FILE: ${matches[2]}`)
        response.data = buffer.from(matches[2], "base64");
        let extension = response.type.split("/");
        extension = extension[1].split("+");
        extension = extension[0];

        if(

            !fs.existsSync(
                `${path.dirname(require.main.filename)}/manejoArchivos/public${namePath}`
                // `${path.dirname(require.main.filename)}/server/public${namePath}`
            )
          ) {
            fs.mkdirSync(
                `${path.dirname(require.main.filename)}/manejoArchivos/public${namePath}`,
                //`${path.dirname(require.main.filename)}/server/public${namePath}`,
                true
            );
          }
            
          let fileRoute = `${namePath}/${new Date().getTime()}.${extension}`;

          fs.writeFileSync(
            `${path.dirname(require.main.filename)}/manejoArchivos/public${fileRoute}`,
            response.data,
            {
                encoding: "utf8",
            }
          );
        
    } catch (error) {
        throw new Error(error);
    }
};

module.exports = {fileUpload};
//usar cloudinary

///install cloudinary package
//npm install cloudinary
//realizar configuracion  en .env
// CLOUD_NAME=""
// CLOUD_API_KEY=""
// CLOUD_SECRET=""

//En config > config.js
// CLUDINARY:{
//     NAME:process.env.CLOUD_NAME,
//     API_KEY:process.env.CLOUD_API_KEY,
//     SECRET: process.env.CLOUD_SECRET,
// },