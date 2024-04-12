@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RFQ Item'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSKD_R_RFQItemTP as select from ZSKD_I_RFQItem as RFQItem
 association to parent ZSKD_R_RFQHeaderTP as _Header on _Header.ReqForQuotation = $projection.ReqForQuotation
{
    key ReqForQuotation,
    key ReqForQuotationItem,
    ShortText,
    Material,
    MaterialGroup,
    Plant,
    @Semantics.quantity.unitOfMeasure: 'ReqQtyUom'
    ReqQty,
    ReqQtyUom,
    @Semantics.amount.currencyCode: 'Currency'
    Amount,
    Currency,
    /* Associations */
    _Header
}
