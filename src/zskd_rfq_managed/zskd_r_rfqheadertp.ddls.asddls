@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RFQ Header'
define root view entity ZSKD_R_RFQHeaderTP
  as select from ZSKD_I_RFQHeader
  composition [1..*] of ZSKD_R_RFQItemTP   as _Item
  composition [1..*] of ZSKD_R_RFQBidderTP as _Bidder
{
  key ReqForQuotation,
      DocumentType,
      Description,
      QuotationDeadlineDate,
      PurchasingGroup,
      PurchasingOrg,
      CompanyCode,
      NetOrderValue,
      Currency,
      _Item,
      _Bidder
}
