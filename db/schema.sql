\c data_wharehouse_dev;

DROP TABLE IF EXISTS dyk_user_basic_info;
CREATE TABLE dyk_user_basic_info (
  id SERIAL PRIMARY KEY,	
  fname VARCHAR(20), 
  lname VARCHAR(20),
  phone VARCHAR(15),
  email VARCHAR(40),
  city VARCHAR(50) NOT NULL,	
  state VARCHAR(2) NOT NULL,	
  zip_code VARCHAR(9) NOT NULL,	
  country VARCHAR(3) NOT NULL, 
  create_dt TIMESTAMP DEFAULT NOW()
);

DROP TABLE IF EXISTS dyk_survey_ques;
CREATE TABLE dyk_survey_ques (
  id SERIAL PRIMARY KEY,	
  survey_name TEXT, 
  question TEXT[],	
  created_by INT,
  keywords TEXT[],	
  create_dt TIMESTAMP DEFAULT NOW()
);

DROP TABLE IF EXISTS dyk_update_log;
CREATE TABLE dyk_update_log (
  id SERIAL PRIMARY KEY,
  survey_id INT,
  last_updated TIMESTAMP DEFAULT NOW()
);

DROP TABLE IF EXISTS dyk_survey_res;
CREATE TABLE dyk_survey_res (
  id SERIAL PRIMARY KEY,
  user_id INT,	
  survey_id INT, 
  question_id INT,
  response  TEXT,	
  keywords TEXT[],	
  create_dt TIMESTAMP DEFAULT NOW()
);

DROP TABLE IF EXISTS dyk_survey_likes;
CREATE TABLE dyk_survey_likes (
  id SERIAL PRIMARY KEY,
  user_id INT,
  survey_ids INT[],
  last_updated date
);

DROP TABLE IF EXISTS dyk_permissions;
CREATE TABLE dyk_permissions (
  id SERIAL PRIMARY KEY,
  user_id INT,
  survey_ids INT[],
  last_updated date
);
