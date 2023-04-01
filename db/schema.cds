namespace com.logali;

using {managed} from '@sap/cds/common';

define type Dec : Decimal(12, 2);
type Dats       : DateTime;
type Char36     : String(36);
type Char40     : String(40);
type Quan       : Decimal(15, 3);
type Dec16      : Decimal(16, 2);
type ZDE_MEINS  : String(2);


//  entity header @(
//      Capabilities : {
//          InsertRestrictions.Insertable : true,
//          UpdateRestrictions.Updatable  : true,
//          DeleteRestrictions.Deletable  : true,
//          //Insertable,
//      }
//  ) {
entity header {
        //key ID : UUID;
    key ID           : String(36);
        Email        : String(30);
        FirstName    : String(30);
        LastName     : String;
        Country      : String(30);
        CreateOn     : Date;
        DeliveryDate : DateTime;
        OrderStatus  : Integer;
        ImageUrl     : String;
        Item         : Association to items on Item.Header = $self;
}

entity items {
    key ID               : Char36;
        //key ID : UUID;
        Name             : Char40;
        Description      : Char40;
        ReleaseDate      : Dats;
        DiscontinuedDate : Dats;
        Price            : Dec;
        Height           : Quan;
        Width            : Quan;
        Depth            : Dec;
        Quantity         : Dec16;
        //Asoc administrada
        UnitOfMeasure    : Association to UnitOfMeasure;
        Header           : Association to header; // on Header.Item = $self;

}

entity UnitOfMeasure {
    key ID          : String(2);
        Description : String;
}
