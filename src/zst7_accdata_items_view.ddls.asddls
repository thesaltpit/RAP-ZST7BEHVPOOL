@EndUserText.label: 'Consumption view on items'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZST7_ACCDATA_ITEMS_VIEW
  as projection on ZST7_ACCITEM_POOL
{

key compcode,
key docno,
key fiscyear,
linenum,
postkey,
acctype,
dbcrindc,
bussarea,
amount,
taxcode,
taxamt,
currcode,
costcntr,
vendornum,
acctypdesc,
bussareadesc,
dbcrtext,

//  key compcode     as compcd,
//  key docno        as docno,
//  key fiscyear     as fiscyr,
//      linenum      as linenum,
//      postkey      as poskey,
//      acctype      as acctyp,
//      dbcrindc     as dbcrind,
//      bussarea     as bussarea,
//      amount       as amt,
//      taxcode      as taxcd,
//      taxamt       as taxamt,
//      currcode     as currcd,
//      costcntr     as costcntr,
//      vendornum    as vendno,
//      acctypdesc   as acctypdesc,
//      bussareadesc as bussareadesc,
//      dbcrtext     as dbcrtxt,

      /* Associations */
      _header : redirected to parent ZST7_ACCDATA_CONS_VIEW
}
