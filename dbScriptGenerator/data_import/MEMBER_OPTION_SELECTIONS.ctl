LOAD DATA
CHARACTERSET UTF8
INFILE 'F:\AIC\MEMBER_OPTION_SELECTIONS_20211022.pipe'
TRUNCATE
INTO TABLE MEMBER_OPTION_SELECTIONS
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
ACTION_TYPE,
RECORD_SEQ,
ID,
PREFERENCE_TYPE,
VALUE,
INSERTED_BY,
INSERT_DATE,
AMENDED_BY,
AMEND_DATE
)