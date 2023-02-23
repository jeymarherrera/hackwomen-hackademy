const models = require("../../database/models");
const {httpError, response} = require("../helpers/constants.js");
const { clientNotFound, clientDeleted } = require("../helpers/constants.js");
const {fileUpload} = require("../helpers/fileUpload");
const cloudinary = require("../../config/cloudinary");
const path = require("path")
//EP to get all clients
const getClients = async (req, res) => {};

//EP to get all clients
const getClientById = async (req, res) => {};

const addlient = async (req, res) =>{
    try {
        const {body} = req;
        let profile = await fileUpload(body.profile, "/profiles");
        console.log(profile);

        cloudinary.uploader
        .upload(path.join(__dirname, `.../public${profile}`), {
            resouce_type: "image",
        }) 
        .then((response)=> {
            console.log(JSON.stringify(response));
            //Guardando en la BD
        }).catch((error) => {
            console.error();
        });
       
        const client = await REPL_MODE_SLOPPY.clients.create({
            name: body.name,
            lastName: body.lastName,
            phone: body.phone,
        })
        
        return res.status(200).send(client);
    } catch (error) {
        throw new Error(error);
        httpError(req, res);
    }
};

//EP to update client
const updateClient = async(req, res) =>{
};

//EP to delete client in this case is soft delete, change the value statusDelete true
const deleteClient = async(req, res) =>{
};

module.exports = {
getClients,
getClientById,
addClient,
updateClient,
deleteClient,
};