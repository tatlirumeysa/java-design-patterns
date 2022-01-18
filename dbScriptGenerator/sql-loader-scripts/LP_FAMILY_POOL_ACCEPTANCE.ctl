LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\LP_FAMILY_POOL_ACCEPTANCE.csv'
TRUNCATE
INTO TABLE LP_FAMILY_POOL_ACCEPTANCE
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
RECORD_SEQ,
MEMBERSHIP_NUMBER_HEAD,
MEMBERSHIP_NUMBER_MEMBER,
MEMBERSHIP_NUMBER_APPROVE,
CREATION_DATE,
APPROVAL_DATE,
REJECTION_DATE,
PREVIOUS_POOL_STATUS,
DISSOLVED_,
LAST_UPDATE_BY,
LAST_UPDATE_ON
)