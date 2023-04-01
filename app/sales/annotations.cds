using SalesOrderSrv as service from '../../srv/sales';

annotate service.Header with @odata.draft.enabled;

annotate service.Header with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Email',
            Value : Email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FirstName',
            Value : FirstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LastName',
            Value : LastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Country',
            Value : Country,
        },
    ]
);
annotate service.Header with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : Email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FirstName',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LastName',
                Value : LastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : Country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreateOn',
                Value : CreateOn,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DeliveryDate',
                Value : DeliveryDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrderStatus',
                Value : OrderStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ImageUrl',
                Value : ImageUrl,
            },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'ItemID',
            //     Value : ItemID,
            // },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'Name',
            //     Value : Name,
            // },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'Price',
            //     Value : Price,
            // },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'Quantity',
            //     Value : Quantity,
            // },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
