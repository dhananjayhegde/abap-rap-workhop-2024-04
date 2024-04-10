@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RFQ Item Basic View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSKD_I_RFQItem
  as select from zskd_rfq_item
  association [1..1] to ZSKD_I_RFQHeader as _Header on $projection.ReqForQuotation = _Header.ReqForQuotation
{
  key ebeln            as ReqForQuotation,
  key ebelp            as ReqForQuotationItem,
      short_text       as ShortText,
      material         as Material,
      mat_grp          as MaterialGroup,
      plant            as Plant,
      @Semantics.quantity.unitOfMeasure : 'ReqQtyUom'
      req_qty          as ReqQty,
      req_qty_uom      as ReqQtyUom,
      @Semantics.amount.currencyCode: 'Currency'
      amount           as Amount,

      _Header.Currency as Currency,
      
      _Header
}
