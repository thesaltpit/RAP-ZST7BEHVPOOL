@EndUserText.label: 'Consumption view'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity ZST7_ACCDATA_CONS_VIEW
  as projection on ZST7_ACCHDR_POOL
{
  key bukrs as compcd,
  key belnr as docno,
  key gjahr as fiscyr,
      blart as doctyp,
      bldat as docdate,
      usnam as usernm,
      bktxt as hdrtxt,
      tcode as tcode,
      xblnr as refdoc,

      /* Associations */
      _items : redirected to composition child ZST7_ACCDATA_ITEMS_VIEW
}
