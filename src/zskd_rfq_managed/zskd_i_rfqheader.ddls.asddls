@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RFQ Header basic view'

@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #L,
    dataClass: #MIXED
}

define view entity ZSKD_I_RFQHeader
  as select from zskd_rfq_header
{
  key ebeln             as ReqForQuotation,
      bsart             as DocumentType,
      description       as Description,
      qtn_deadline_date as QuotationDeadlineDate,
      ekgrp             as PurchasingGroup,
      ekorg             as PurchasingOrg,
      bukrs             as CompanyCode,
      netwr             as NetOrderValue,
      currency          as Currency
}
