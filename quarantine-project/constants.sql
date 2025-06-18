-- Constant definitions for display labels used in the quarantine demo
-- This script creates simple lookup tables so developers can reference
-- the correct Vietnamese labels for each status code in the database.

------------------------------------------------------------------------------
-- 1. System state labels
------------------------------------------------------------------------------
CREATE TABLE STATE_LABELS (
    STATUS_CODE   VARCHAR2(20) PRIMARY KEY,
    DISPLAY_NAME  VARCHAR2(100)
);

INSERT INTO STATE_LABELS (STATUS_CODE, DISPLAY_NAME) VALUES ('NORMAL', 'Bình thường');
INSERT INTO STATE_LABELS (STATUS_CODE, DISPLAY_NAME) VALUES ('PANDEMIC', 'Dịch bệnh');

------------------------------------------------------------------------------
-- 2. Test result labels
------------------------------------------------------------------------------
CREATE TABLE TEST_RESULT_LABELS (
    RESULT_CODE   VARCHAR2(20) PRIMARY KEY,
    DISPLAY_NAME  VARCHAR2(100)
);

INSERT INTO TEST_RESULT_LABELS (RESULT_CODE, DISPLAY_NAME) VALUES ('PENDING', 'Đang chờ');
INSERT INTO TEST_RESULT_LABELS (RESULT_CODE, DISPLAY_NAME) VALUES ('NEGATIVE', 'Âm tính');
INSERT INTO TEST_RESULT_LABELS (RESULT_CODE, DISPLAY_NAME) VALUES ('POSITIVE', 'Dương tính');

------------------------------------------------------------------------------
-- 3. Alert flag labels
------------------------------------------------------------------------------
CREATE TABLE ALERT_FLAG_LABELS (
    ALERT_CODE    VARCHAR2(1) PRIMARY KEY,
    DISPLAY_NAME  VARCHAR2(50)
);

INSERT INTO ALERT_FLAG_LABELS (ALERT_CODE, DISPLAY_NAME) VALUES ('Y', 'Có cảnh báo');
INSERT INTO ALERT_FLAG_LABELS (ALERT_CODE, DISPLAY_NAME) VALUES ('N', 'Không cảnh báo');
