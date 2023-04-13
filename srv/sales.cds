using {com.logali as logali} from '../db/schema';

define service SalesOrderSrv {

    //@odata.draft.enabled
    entity Header as
        select from logali.header {
            ID    @mandatory,
            Email @mandatory,
            FirstName,
            LastName,
            Country,
            CreateOn,
            DeliveryDate,
            OrderStatus,
            ImageUrl,
            Item,
            Item.ID as ItemID,
            Item.Name,            
            Item.Description,
            Item.ReleaseDate,
            Item.DiscontinuedDate,
            Item.Price,
            Item.Height,
            Item.Width,
            Item.Depth,
            Item.Quantity
        };

    //@odata.draft.enabled
    entity Item as projection on logali.items;

    entity UnitOfMeasure as projection on logali.UnitOfMeasure;

    // @odata.draft.enabled
    // entity Headers as projection on logali.Headers 
    // actions{ 
    //     action createOrders() returns String;
    // };
    // entity Itemss as projection on logali.Itemss;
}
