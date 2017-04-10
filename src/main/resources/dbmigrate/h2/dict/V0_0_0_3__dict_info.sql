

-------------------------------------------------------------------------------
--  dict info
-------------------------------------------------------------------------------
CREATE TABLE DICT_INFO(
        ID BIGINT NOT NULL,
        NAME VARCHAR(200),
	VALUE VARCHAR(200),
	PRIORITY INT,
	TYPE_ID BIGINT,
        CONSTRAINT PK_DICT_INFO PRIMARY KEY(ID),
	CONSTRAINT FK_DICT_INFO_TYPE FOREIGN KEY(TYPE_ID) REFERENCES DICT_TYPE(ID)
);

COMMENT ON TABLE DICT_INFO IS '数据字典';
COMMENT ON COLUMN DICT_INFO.ID IS '唯一主键';
COMMENT ON COLUMN DICT_INFO.NAME IS '名称';
COMMENT ON COLUMN DICT_INFO.VALUE IS '数据';
COMMENT ON COLUMN DICT_INFO.PRIORITY IS '排序';
COMMENT ON COLUMN DICT_INFO.TYPE_ID IS '外键，DICT_TYPE';


