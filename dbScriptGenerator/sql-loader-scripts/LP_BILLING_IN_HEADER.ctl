LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\LP_BILLING_IN_HEADER.csv'
TRUNCATE
INTO TABLE LP_BILLING_IN_HEADER
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
RECORD_SEQ,
FILE_KEY,
PARTNER,
STATUS,
HEADER_RECORD_TYPE,
DETAIL_RECORD_TYPE,
FILE_TYPE,
SEQUENCE,
FROM_SYSTEM,
FROM_AIRLINE,
TO_AIRLINE,
START_DATE,
END_DATE,
CREATED_DATE,
VERSION,
ISO_CURRENCY_CODE,
RECORDS,
BILLING_AMOUNT,
TOTAL_BASE_MILES,
TOTAL_PROMOTIONAL_MILES,
TOTAL_TIER_MILES
)
