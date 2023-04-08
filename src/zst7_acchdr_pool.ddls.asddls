@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Definition for account header behaviorial pool'
@Metadata.allowExtensions: true
define root view entity ZST7_ACCHDR_POOL as select from zst7acchdr_tb
composition [0..*] of ZST7_ACCITEM_POOL as _items
//trying association
association [1..1] to ZST7_COMPCD_DESCR as _compCdDesc on $projection.bukrs = _compCdDesc.compcd
{
  key bukrs, //as Bukrs,
  key belnr, //as Belnr,
  key gjahr, //as Gjahr,
  blart, //as Blart,
  bldat, //as Bldat,
  usnam, //as Usnam,
  bktxt, //as Bktxt,
  tcode, //as Tcode,
  xblnr, //as Xblnr  
  
  _items
  
}
