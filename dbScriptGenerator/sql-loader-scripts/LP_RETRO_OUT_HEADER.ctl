LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\LP_RETRO_OUT_HEADER.csv'
TRUNCATE
INTO TABLE LP_RETRO_OUT_HEADER
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