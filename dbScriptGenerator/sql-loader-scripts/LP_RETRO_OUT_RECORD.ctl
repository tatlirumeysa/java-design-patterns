LOAD DATA
CHARACTERSET UTF8
INFILE '..\..\MIGRATION_DATA\LP_RETRO_OUT_RECORD.csv'
TRUNCATE
INTO TABLE LP_RETRO_OUT_RECORD
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
(
RECORD_SEQ,
PARTNER,
FILE_KEY,
STATUS,
ERRORS,
AIRLINE_INFO,
RECORD_TYPE,
FFP_PROGRAM,
MEMBERSHIP_NUMBER,
TICKETED_NAME,
SURNAME,
FIRSTNAME,
NAME_CHECK,
OPERATING_AIRLINE,
OPERATING_FLIGHT_NUMBER,
MARKETING_AIRLINE,
MARKETING_FLIGHT_NUMBER,
DEPARTURE_DATE,
ORIGIN,
DESTINATION,
OPERATING_CLASS,
FLOWN_CLASS,
CREDITED_CLASS,
MARKETING_CLASS,
UPGRADE,
DOWNGRADE,
TICKET,
COUPON,
FAREBASES,
SEAT,
BOARDING,
BASE_MILES,
RETRO_AUTH,
RC1,
RC2,
RC3,
RC4,
RC5,
RC6,
CREDITING_SOURCE_TYPE,
IRNFFPA,
OAAN,
MEMBER_TIER,
GENDER,
ADDITIONAL_SEGMENT,
IRREGULAR_OPERATIONS,
FFP_ALREADY_CREDITED,
CREATED_DATE
)