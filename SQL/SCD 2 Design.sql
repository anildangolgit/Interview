use schema Lithia_Customer;

//Insert into LITHIA_CUSTOMER.DimMDMCustomerMasterHistory


SELECT MATCHGROUP AS ORIGINALMATCHGROUP,MATCHGROUP,MATCHSTATUS,ID,CustomerHashKey,DataSource from MARKETING.STAGING_DIM_CUSTOMER_MDM;

SHOW TABLES MARKETING.STAGING_DIM_CUSTOMER_MDM;


Merge DimMDMCustomerMasterHistory Dest
Using MARKETING_STAGING.STAGING_DIM_CUSTOMER_MDM Source
on Dest.CustomerHashKey=Dest.CustomerHashKey and Dest.MatchGroup=Source.MatchGroup and Dest.Id=Source.Id
when not Matched and Source.CustomerHashKey is not null //Recover was never seen in history table. Also Make Sure you are not touching the master record
Insert (
OriginalMatchGroup,
MatchGroup,
MatchStatus,
Id,
CustomerHashKey,
DataSource,
EffectiveDate,
EndDate,
IsActive)
values
(
Source.MatchGroup,
Source.MatchGroup,
Source.MatchStatus,
Source.Id,
Source.CustomerHashKey,
Source.DataSource,
current_date(),
Null,
1
)
when matched //Record has been updated in the source. So invalidate the old Record
update Dest.EndDate=current_date(),
Dest.IsActive=False


Insert into  DimMDMCustomerMasterHistory// Add the new record for invalided record
(
OriginalMatchGroup,
MatchGroup,
MatchStatus,
Id,
CustomerHashKey,
DataSource,
EffectiveDate,
EndDate,
IsActive
)
Select
Dest.ORIGINALMATCHGROUP,
Source.MATCHGROUP,
Source.MATCHSTATUS,
Source.Id,
Source.CUSTOMERHASHKEY,
Source.DATASOURCE,
Current_date(),
null,
1
From MARKETING_STAGING.STAGING_DIM_CUSTOMER_MDM Source
JOIN DimMDMCustomerMasterHistory Dest DEST
ON Source.CustomerHashKey=Dest.CUSTOMERHASHKEY and Source.MatchGroup<>Dest.ORIGINALMATCHGROUP and Source.id<>Dest.Id

