LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\Cobrand_Subscription.csv'
TRUNCATE
INTO TABLE COBRAND_SUBSCRIPTION
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
ACTION_TYPE,
RECORD_SEQ,
ACCT_SEQ,
OWNER,
ACCT_NO,
COMPANY,
START_DATE,
ACCOUNT_TYPE,
INSERTED_BY,
INSERT_DATE,
AMENDED_BY,
AMEND_DATE,
ACTIVE,
CLOSE_DATE,
MASKED_CREDIT_CARD_NO,
ACCOUNT_HOLDER_INFO
)
