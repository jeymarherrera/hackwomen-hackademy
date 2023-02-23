require("dotenv").config(); // modulo que carga variaables de entorno desde un archivo .env a process.env
//sustituir valores de host, userm name, password con los process.env una vez que tengamos el archivo .env con los valores a sustituir
module.exports ={
    PORT: process.env.PORT || 5000,
    DB:{
        PORT:process.env.DB_PORT || 5432,
        HOST: process.env.DB_HOST || "localhost",
        USER: process.env.DB_USER,
        NAME: process.env.DB_NAME,
        PASSWORD: process.env.DB_PASSWORD,
        DIALECT: "postgres",
        ENV: process.env.ENV || "development",
    },
    CLUDINARY:{
        NAME:process.env.CLOUD_NAME,
        API_KEY:process.env.CLOUD_API_KEY,
        SECRET: process.env.CLOUD_SECRET,
     },
}



