LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\LP_MEMBER_VERIFICATIONS.csv'
TRUNCATE
INTO TABLE LP_MEMBER_VERIFICATIONS
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
RECORD_SEQ,
MEMBERSHIP_NUMBER,
VERIFICATION_TYPE,
VERIFICATION_STATUS,
EXPIRY_DATE,
VALIDATE_KEY,
SEQUENCE,
LAST_UPDATE_BY,
LAST_UPDATE_ON
)