LOAD DATA
CHARACTERSET UTF8
INFILE 'F:\AIC\RELATIONSHIP_DETAIL_20211022.pipe'
TRUNCATE
INTO TABLE RELATIONSHIP_DETAIL
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
ACTION_TYPE,
RECORD_SEQ,
ISN,
RELATIONSHIP_MASTER_ISN,
SUB_MEMBER_ID,
START_DATE,
END_DATE,
INSERTED_BY,
INSERT_DATE,
AMENDED_BY,
AMEND_DATE,
RELATIONSHIP_SUB_TYPE_ISN,
STATUS,
ACCEPTANCE_DATE,
APPROVAL_DATE
)