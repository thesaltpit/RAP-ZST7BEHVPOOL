 @AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Definition for account details behaviorial pool'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZST7_ACCITEM_POOL
  as select from ZST7_ACCDOC_ITM
  association to parent ZST7_ACCHDR_POOL as _header on  $projection.compcode = _header.bukrs
                                                    and $projection.docno = _header.belnr
                                                    and $projection.fiscyear = _header.gjahr
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

//  key zst7accitm_tb.bukrs,
//  key zst7accitm_tb.belnr,
//  key zst7accitm_tb.gjahr,
//  key zst7accitm_tb.buzei,
//      zst7accitm_tb.bschl,
//      zst7accitm_tb.koart,
//      zst7accitm_tb.shkzg,
//      zst7accitm_tb.gsber,
//      zst7accitm_tb.mwskz,
//      zst7accitm_tb.dmbtr,
//      zst7accitm_tb.mwsts,
//      zst7accitm_tb.waers,
//      zst7accitm_tb.kostl,
//      zst7accitm_tb.lifnr,

      _header

}
