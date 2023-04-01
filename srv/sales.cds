using{ com.logali as logali } from '../db/schema';

define service SalesOrderSrv{
   
    //entity header as projection on logali.header;
       
    //@odata.draft.enabled : true
    // @Capabilities.InsertRestrictions : {
    //     $Type : 'Capabilities.InsertRestrictionsType',
    //     Insertable,
    // }
    entity Header as
        select from logali.header{
            ID @mandatory,
            Email @mandatory,
            FirstName,
            LastName,
            Country,
            CreateOn,
            DeliveryDate,
            OrderStatus,
            ImageUrl
            ,
            Item//,
            // Item.ID as ItemID,
            // Item.Name,
            // Item.Price,
            // Item.Quantity
        }
        actions { 
            action createOrder() returns String;
            action updateOrder() returns String;
            action deleteOrder() returns String;
        };

    //@odata.draft.enabled : true
    entity Items as projection on logali.items;
    entity UnitOfMeasure as projection on logali.UnitOfMeasure;
}
