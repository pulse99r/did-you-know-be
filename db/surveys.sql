\c data_wharehouse_dev;

INSERT INTO dyk_user_basic_info (fname, lname, phone, email, city, state, zip_code, country, create_dt) 
VALUES 
  ('Kenti','Johnson','123-456-7890','email1@domain.com','Mount Vernon','NY','10553','USA',NOW),
  ('Clark','Kent','123-456-7890','ckent@red_s.com','Smallville','NY','10553','USA',NOW),
  ('Peter','Parker','123-456-7890','peter@webslinger.com','Manhattan','NY','10001','USA',NOW),
  ('Matt','Murdock','123-456-7890','matt@daredevil.com','Central City','NY','10553','USA',NOW);

INSERT INTO dyk_survey_ques (survey_name, question, created_by, keywords) VALUES
  ()