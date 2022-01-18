LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\Balance.csv'
TRUNCATE
INTO TABLE LP_RETRO_IN_HEADER
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
RECORD_SEQ,
FILE_KEY,
PARTNER,
STATUS,
HEADER_RECORD_TYPE,
FILE_TYPE,
SEQUENCE,
FROM_SYSTEM,
FROM_AIRLINE,
TO_AIRLINE,
CREATED_DATE,
VERSION,
FILE_REFERENCE,
DETAIL_RECORD_TYPE,
RECORDS
)