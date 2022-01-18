LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\LP_MEMBER_EXPIRY.csv'
TRUNCATE
INTO TABLE LP_MEMBER_EXPIRY
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
RECORD_SEQ,
MEMBERSHIP_NUMBER,
EXPIRY_DATE,
EXPIRED_MILES,
STATEMENT_DATE,
LAST_UPDATE_BY,
LAST_UPDATE_ON
)