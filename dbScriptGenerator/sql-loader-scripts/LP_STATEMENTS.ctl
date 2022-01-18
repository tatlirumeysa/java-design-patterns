LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\LP_STATEMENTS.csv'
TRUNCATE
INTO TABLE LP_STATEMENTS
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
RECORD_SEQ,
MEMBERSHIP_NUMBER,
STATEMENT_DATE,
PREVIOUS_STATEMENT_DATE,
OPENING_BALANCE,
BASE_MILES_STATEMENT_PERIOD,
BONUS_MILES_STATEMENT_PERIOD,
REDEMPTION_MILES_STATEMENT_PERIOD,
EXPIRED_MILES_STATEMENT_PERIOD,
CLOSING_BALANCE,
CURRENT_TIER,
ACCOUNT_STATUS,
PRINT/SEND_STATUS,
TIER_MILES_OPENING_BALANCE,
TIER_MILES_ADDED,
TIER_MILES_REMOVED,
TIER_MILES_CLOSING_BALANCE
)