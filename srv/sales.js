const cds = require("@sap/cds");
const { header, items } = cds.entities("com.logali");

module.exports = (srv) => {

    // srv.on("READ", "Header", async (req) => {
    //     //console.log("Read Header : ", " Read to header");
    //     return await SELECT.from(header);
    // } );

    srv.on("CREATE", "Header", async (req) => {
        console.log("Creando la header...");
        let returnData = await cds.transaction(req).run(
            
            INSERT.into(header).entries({
                ID: req.data.ID,
                Email: req.data.Email,
                FirstName: req.data.FirstName,
                LastName: req.data.LastName,
                Country: req.data.Country,
                CreateOn: req.data.CreateOn,
                DeliveryDate: req.data.DeliveryDate,
                OrderStatus: req.data.OrderStatus,
                ImageUrl: req.data.ImageUrl
            })

        ).then((resolve, reject) => {
            console.log("Resolve Header ...: ", resolve);
            console.log("Reject : ", reject);
            if (typeof resolve != "undefined") {
                return req.data;
            } else {
                req.error(409, "Registro no insertado.");
            }

        }).catch((err) => {
            console.log("Error : ", err);
            req.error(err.code, err.message);
        });

        console.log("Antes de terminar : ", returnData)
        return returnData;        
    } );

    srv.on("UPDATE","Header", async (req) => {
        console.log("Actualizando el Header ...");
        let returnData = await cds.transaction(req).run(
            UPDATE(header, req.data.ID).set({
                Email : req.data.Email,
                FirstName : req.data.FirstName,
                LastName : req.data.LastName,
                Country : req.data.Country,
                DeliveryDate : req.data.DeliveryDate,
                OrderStatus : req.data.OrderStatus
            }) 

        ).then( (resolve, reject) => {
            if(resolve[0] == 0){
                req.error(409,"El registro no fue encontrado");
            }
        }).catch( (err) => {
            req.error(err.code, err.message);
        });
        //console.log("Antes de Actualizar : ",returnData);
        return returnData;

    } );

    srv.on("DELETE", "Header", async (req) => {
        console.log("Borrando el Header ...");
        let returnData = await cds.transaction(req).run(
            DELETE.from(header).where({
                ID : req.data.ID
            })
        ).then( (resolve, reject) => {
            if( resolve !== 1 ){
                req.error(409, "Registro no existe.");
            }}
        ).catch( (err) => {
            req.error(err.code, err.message);
        });
        return returnData;
    });


    //Acciones
    srv.on("createOrder", async (req) => {
        console.log("Aqui se creará el objeto");
        let returnData = await cds.transaction(req).run(

            INSERT.into(header).entries({
                ID: req.ID,
                Email: req.data.Email,
                FirstName: req.data.FirstName,
                LastName: req.data.LastName,
                Country: req.data.Country,
                CreateOn: req.data.CreateOn,
                DeliveryDate: req.data.DeliveryDate,
                OrderStatus: req.data.OrderStatus,
                ImageUrl: req.data.ImageUrl
            })

        ).then((resolve, reject) => {
            console.log("Resolve : ", resolve);
            console.log("Reject : ", reject);
            if (typeof resolve != "undefined") {
                return req.data;
            } else {
                req.error(409, "Registro no insertado.");
            }

        }).catch((err) => {
            console.log("Error : ", err);
            req.error(err.code, err.message);
        });

        console.log("Antes de terminar : ", returnData)
        return returnData;        
    });

    srv.on("updateOrder", async (req) => {
        console.log("Aqui se Actualizará el objeto");
        let returnData = await cds.transaction(req).run(
            UPDATE(header, req.data.ID).set({
                Email : req.data.Email,
                FirstName : req.data.FirstName,
                LastName : req.data.LastName,
                Country : req.data.Country,
                DeliveryDate : req.data.DeliveryDate,
                OrderStatus : req.data.OrderStatus
            }) 

        ).then( (resolve, reject) => {
            if(resolve[0] == 0){
                req.error(409,"El registro no fue encontrado");
            }
        }).catch( (err) => {
            req.error(err.code, err.message);
        });
        console.log("Antes de Actualizar : ",returnData);
        return returnData;
    });

    srv.on("deleteOrder", async (req) => {
        console.log("Aqui se eliminará el objeto");
    });

};