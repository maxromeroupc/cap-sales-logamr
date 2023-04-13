namespace com.logali;

using { cuid, managed } from '@sap/cds/common';

define type Dec : Decimal(12, 2);
type Dats       : DateTime;
type Char36     : String(36);
type Char40     : String(40);
type Quan       : Decimal(15, 3);
type Dec16      : Decimal(16, 2);
type ZDE_MEINS  : String(2);


entity header : cuid {        
        Email        : String(30);
        FirstName    : String(30);
        LastName     : String;
        Country      : String(30);
        CreateOn     : Date;
        DeliveryDate : DateTime;
        OrderStatus  : Integer;
        ImageUrl     : String;
        Item         : Composition of items on Item.Header = $self;
}

entity items : cuid {    
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

// entity Headers : cuid {        
//         Email        : String(30);
//         FirstName    : String(30);
//         LastName     : String;
//         Country      : String(30);
//         CreateOn     : Date;
//         DeliveryDate : DateTime;
//         OrderStatus  : Integer;
//         ImageUrl     : String;        
// }

// entity Itemss : cuid {    
//         Name             : Char40;
//         Description      : Char40;
//         ReleaseDate      : Dats;
//         DiscontinuedDate : Dats;
//         Price            : Dec;
//         Height           : Quan;
//         Width            : Quan;
//         Depth            : Dec;
//         Quantity         : Dec16;
//         //Asoc administrada
//         UnitOfMeasure    : Association to UnitOfMeasure;
//         HeaderID : UUID;
//         ToHeaders : Association to one Headers on ToHeaders.ID = HeaderID;
// }