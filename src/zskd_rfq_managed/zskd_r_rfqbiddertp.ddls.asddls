@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RFQ Bidder'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSKD_R_RFQBidderTP as select from ZSKD_I_RFQBidder
association to parent ZSKD_R_RFQHeaderTP as _Header on _Header.ReqForQuotation = $projection.RequestForQuotation
{
    key RequestForQuotation,
    key Bidder,
    _Header

}
