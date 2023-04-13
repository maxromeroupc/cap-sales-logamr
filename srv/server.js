const cds = require('@sap/cds')

const cors = require("cors");

// const proxy = require('@sap/cds-odata-v2-adapter-proxy')

cds.on('bootstrap', app => {
    app.use(cors());
    app.get("/alive", (_,res) => {
        res.status(200).send("Servidor iniciado...");
    } );
    //app.use(proxy())
});

if(process.env.NODE_ENV !== 'production'){
    const swagger = require("cds-swagger-ui-express");
    cds.on("bootstrap", (app) => {
        app.use(swagger());
    });
}

module.exports = cds.server;