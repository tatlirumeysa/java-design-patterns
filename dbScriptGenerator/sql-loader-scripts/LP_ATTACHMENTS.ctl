LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\LP_ATTACHMENTS.csv'
TRUNCATE
INTO TABLE LP_ATTACHMENTS
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
RECORD_SEQ,
MEMBERSHIP_NUMBER,
NOTE_INDEX,
FILENAME,
UNIQUE_FILENAME,
PATH,
LAST_UPDATE_BY,
LAST_UPDATE_ON
)
