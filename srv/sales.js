const cds = require("@sap/cds");
const { header, items } = cds.entities("com.logali");

module.exports = (srv) => {

    srv.before("*", (req) => {
        console.log("Method MR: ", req.method);
        console.log("local :", req.user.locale);
        //console.log("Target MR: ", req.target);
    } );


    // srv.on("READ", "Header", async (req) => {
    //     //console.log("Read Header : ", " Read to header");
    //     return await SELECT.from(header);
    // } );

    // srv.on("CREATE", "Header", async (req) => {    
    //     console.log("ON CREATE header MR");    
    //     let returnData = await cds.transaction(req).run(            
    //         INSERT.into(header).entries({
    //             ID: req.data.ID,
    //             Email: req.data.Email,
    //             FirstName: req.data.FirstName,
    //             LastName: req.data.LastName,
    //             Country: req.data.Country,
    //             CreateOn: req.data.CreateOn,
    //             DeliveryDate: req.data.DeliveryDate,
    //             OrderStatus: req.data.OrderStatus,
    //             ImageUrl: req.data.ImageUrl
    //         })
    //     ).then((resolve, reject) => {            
    //         if (typeof resolve != "undefined") {
    //             return req.data;
    //         } else {
    //             req.error(409, "Registro no insertado.");
    //         }
    //     }).catch((err) => {
    //         console.log("Error : ", err);
    //         req.error(err.code, err.message);
    //     });
    //     console.log("Antes del return Create: ", returnData);
    //     return returnData;        
    // } );

    // srv.on("UPDATE","Header", async (req) => {        
    //     console.log("ON UPD header MR");
    //     let returnData = await cds.transaction(req).run(
    //         UPDATE(header, req.data.ID).set({
    //             Email : req.data.Email,
    //             FirstName : req.data.FirstName,
    //             LastName : req.data.LastName,
    //             Country : req.data.Country,
    //             DeliveryDate : req.data.DeliveryDate,
    //             OrderStatus : req.data.OrderStatus
    //         })
    //     ).then( (resolve, reject) => {
    //         if(resolve[0] == 0){
    //             req.error(409,"El registro no fue encontrado");
    //         }
    //     }).catch( (err) => {
    //         //req.error(err.code, err.message);
    //         req.error(err.code,"error upd mr");
    //     });        
    //     console.log("Antes del return UPD: ", returnData);
    //     return returnData;
    // } );

    // srv.on("DELETE", "Header", async (req) => {       
    //     console.log("ON DEL header MR"); 
    //     let returnData = await cds.transaction(req).run(
    //         DELETE.from(header).where({
    //             ID : req.data.ID
    //         })
    //     ).then( (resolve, reject) => {
    //         if( resolve !== 1 ){
    //             req.error(409, "Registro no existe.");
    //         }}
    //     ).catch( (err) => {
    //         req.error(err.code, err.message);
    //     });
    //     return returnData;
    // });

    //Draft
    // srv.before("CREATE", "Header", async (req) =>{
    //     console.log("Begin before Create draft MR", req.data);        
    // });

    // srv.before("UPDATE", "Header", async (req) =>{
    //     console.log("Begin Update SAVE draft MR", req.data);        
    // });

    // srv.before("SAVE", "Header", async (req) =>{
    //     console.log("Begin before SAVE draft MR", req.data);        
    // });

    // srv.before("EDIT", "Header", async (req) =>{
    //     console.log("Edit SAVE draft MR", req.data);        
    // });

    // srv.before("NEW", "Header", async (req) =>{
    //     console.log("Begin NEW draft MR", req.data);
    // });

    // srv.on("draftActivate", async (req) =>{
    //     console.log("draf Activate ON MR", req.data);
    // } );

};