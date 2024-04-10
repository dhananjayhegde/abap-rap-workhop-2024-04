@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RFQ Bidder'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #L,
    dataClass: #MIXED
}
define view entity ZSKD_I_RFQBidder
  as select from zskd_rfq_bidder as Bidder
{
  key Bidder.ebeln  as RequestForQuotation,
  key Bidder.bidder as Bidder
}
