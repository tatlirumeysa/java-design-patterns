LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\LP_STATEMENT_FUTURE_EXPIRY.csv'
TRUNCATE
INTO TABLE LP_STATEMENT_FUTURE_EXPIRY
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
RECORD_SEQ,
MEMBERSHIP_NUMBER,
STATEMENT_DATE,
EXPIRY_DATE,
UNITS_TO_EXPIRY
)