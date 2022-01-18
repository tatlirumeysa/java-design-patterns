LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\LP_EXPIRY_EXTEND_REINSTATE.csv'
TRUNCATE
INTO TABLE LP_EXPIRY_EXTEND_REINSTATE
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
RECORD_SEQ,
MEMBERSHIP_NR,
RECOD_SEQ,
OLD_EXP_DATE,
NEW_EXPIRY_DATE,
MILES_EXTENDED,
EXTENTION_TYPE,
TRANSACTION_REFERENCE,
PAYMENT_REFERENCE,
LAST_UPDATE_BY,
LAST_UPDATE_ON
)