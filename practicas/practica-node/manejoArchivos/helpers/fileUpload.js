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