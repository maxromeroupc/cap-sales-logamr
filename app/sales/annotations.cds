using SalesOrderSrv as service from '../../srv/sales';

annotate service.Header with @(    
    UI.LineItem                     : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ID}',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Email}',
            Value : Email,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ImageUrl}',
            Value : ImageUrl,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>FirstName}',
            Value : FirstName,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>LastName}',
            Value : LastName,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Country}',
            Value : Country,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>CreateOn}',
            Value : CreateOn,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>DeliveryDate}',
            Value : DeliveryDate,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>OrderStatus}',
            Value : OrderStatus,
        }
    ]
);

annotate service.Header with @(UI.HeaderInfo : {
    TypeName       : '{i18n>Header}',
    TypeNamePlural : '{i18n>Headers}',
    Title          : {Value : FirstName},
    Description    : {Value : Email}
});

annotate service.Header with {
    ImageUrl @(UI.IsImageURL : true)
};

annotate service.Header with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ID}',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Email}',
                Value : Email,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>FirstName}',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>LastName}',
                Value : LastName,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Country}',
                Value : Country,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>CreateOn}',
                Value : CreateOn,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>DeliveryDate}',
                Value : DeliveryDate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OrderStatus}',
                Value : OrderStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ImageUrl}',
                Value : ImageUrl,
            },
        ],
    },
    UI.FieldGroup #GroupItem       : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ItemId}',
                Value : ItemID,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Name}',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Description}',
                Value : Description,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ReleaseDate}}',
                Value : ReleaseDate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>DiscontinuedDate}}}',
                Value : DiscontinuedDate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Price}',
                Value : Price,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Height}}',
                Value : Height,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Width}}',
                Value : Width,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Depth}}',
                Value : Depth,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Quantity}',
                Value : Quantity,
            },
        ]
    },
    UI.Facets                      : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'GeneratedFacet1',
        Label  : '{i18n>OrderInformation}',
        Target : '@UI.FieldGroup#GeneratedGroup1',
    },
    {
        $Type  : 'UI.ReferenceFacet',
        ID     : 'ItemFacet',
        Label  : '{i18n>ItemInformation}',
        Target : '@UI.FieldGroup#GroupItem'
    }
    ]
);

// annotate service.Item with @(
//     UI.LineItem              : [
//         {
//             $Type : 'UI.DataField',
//             Label : '{i18n>ItemId}',
//             Value : ItemID,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : '{i18n>Name}',
//             Value : Name,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : '{i18n>ImageUrl}',
//             Value : Description,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : '{i18n>DiscontinuedDate}',
//             Value : DiscontinuedDate,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : '{i18n>Price}',
//             Value : Price,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : '{i18n>Height}',
//             Value : Height,
//         },
//     ],

//     UI.FieldGroup #GroupItem : {
//         $Type : 'UI.FieldGroupType',
//         Data  : [
//             {
//                 $Type  : 'UI.DataFieldForAction',
//                 Label  : 'Create Item MR',
//                 Action : 'SalesOrderSrv.createOrder',
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : '{i18n>ItemId}',
//                 Value : ItemID,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : '{i18n>Name}',
//                 Value : Name,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : '{i18n>Price}',
//                 Value : Price,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : '{i18n>Quantity}',
//                 Value : Quantity,
//             },
//         ]
//     },
//     UI.Facets                : [{
//         $Type  : 'UI.ReferenceFacet',
//         ID     : 'ItemFacet',
//         Label  : '{i18n>ItemInformation}',
//         Target : '@UI.FieldGroup#GroupItem'
//     }]
// );
