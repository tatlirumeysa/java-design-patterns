LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\MERGE_POINTERS.csv'
TRUNCATE
INTO TABLE MERGE_POINTERS
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
ACTION_TYPE,
RECORD_SEQ,
MERGE_SEQ,
FROM_ID,
TO_ID,
INSERTED_BY,
INSERT_DATE,
AMENDED_BY,
AMEND_DATE,
REPLICA_TS
)