
    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON time not null,
        WORKING_HOURS_PER_DAY tinyblob,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON time not null,
        WORKING_HOURS_PER_DAY tinyblob,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON time not null,
        WORKING_HOURS_PER_DAY tinyblob,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON time not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON time not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON time not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);

    create table T_APPOINTMENT (
       ID varchar(255) not null,
        STATUS varchar(255),
        STARTS_ON datetime(6) not null,
        PATIENT varchar(255),
        TIME_SCHEDULE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        TYPE varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_DOCTOR_TIME_SCHEDULE (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DAYS_OF_WEEK varchar(255) not null,
        MAX_APPOINTMENTS integer,
        STARTS_ON datetime(6) not null,
        WORKING_MINUTES_PER_DAY integer,
        DOCTOR varchar(255) not null,
        primary key (ID)
    ) engine=InnoDB;

    create table T_PATIENT (
       ID varchar(255) not null,
        ACTIVE bit not null,
        DATE_OF_BIRTH datetime(6) not null,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        GENDER varchar(255),
        LAST_NAME varchar(255) not null,
        PHONE varchar(255),
        SOCIAL_SECURITY_NUMBER varchar(255),
        primary key (ID)
    ) engine=InnoDB;

    alter table T_APPOINTMENT 
       add constraint FKj5y96wrdqixpwxwd9ky1roh3c 
       foreign key (PATIENT) 
       references T_PATIENT (ID);

    alter table T_APPOINTMENT 
       add constraint FK95ritp7fig3jn3nnitvo11urx 
       foreign key (TIME_SCHEDULE) 
       references T_DOCTOR_TIME_SCHEDULE (ID);

    alter table T_DOCTOR_TIME_SCHEDULE 
       add constraint FK33xohmoui3704boni6ff4npih 
       foreign key (DOCTOR) 
       references T_DOCTOR (ID);
