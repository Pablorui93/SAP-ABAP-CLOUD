@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZTFLIGHT_CA3'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_TFLIGHT_CA3
  provider contract transactional_query
  as projection on ZR_TFLIGHT_CA3
  association [1..1] to ZR_TFLIGHT_CA3 as _BaseEntity on $projection.CarrierID = _BaseEntity.CarrierID and $projection.ConnectionID = _BaseEntity.ConnectionID and $projection.FlightDate = _BaseEntity.FlightDate
{
  key CarrierID,
  key ConnectionID,
  key FlightDate,
  @Semantics: {
    amount.currencyCode: 'CurrencyCode'
  }
  Price,
  @Consumption: {
    valueHelpDefinition: [ {
      entity.element: 'Currency', 
      entity.name: 'I_CurrencyStdVH', 
      useForValidation: true
    } ]
  }
  CurrencyCode,
  @Semantics: {
    user.createdBy: true
  }
  LocalCreateBy,
  @Semantics: {
    systemDateTime.createdAt: true
  }
  LocalCreatedAt,
  @Semantics: {
    user.localInstanceLastChangedBy: true
  }
  LocalLastChangedBy,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  LocalLastChangedAt,
  @Semantics: {
    systemDateTime.lastChangedAt: true
  }
  LastChangedAt,
  _BaseEntity
}
