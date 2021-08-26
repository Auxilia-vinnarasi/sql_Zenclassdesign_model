CREATE TABLE IF NOT EXISTS `zenclass_model`.`projects` (
  `project_id` INT NOT NULL,
  `project_name` VARCHAR(45) NULL,
  `project_duration` VARCHAR(45) NULL,
  `technology_used` VARCHAR(45) NULL,
  `project_url` VARCHAR(45) NULL,
  `student_student_id` INT NOT NULL,
  PRIMARY KEY (`project_id`, `student_student_id`),
  INDEX `fk_projects_user_info1_idx` (`student_student_id` ASC) VISIBLE,
  CONSTRAINT `fk_projects_student_info1`
    FOREIGN KEY (`student_student_id`)
    REFERENCES `zenclass_model`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `zenclass_model`.`course_info` (
  `course_info_id` INT NOT NULL,
  `course_name` VARCHAR(45) NULL,
  `course_duration` VARCHAR(45) NULL,
  `student_student_id` INT NOT NULL,
  PRIMARY KEY (`course_info_id`, `student_student_id`),
  INDEX `fk_course_info_user_info1_idx` (`student_student_id` ASC) VISIBLE,
  CONSTRAINT `fk_course_info_student_info1`
    FOREIGN KEY (`student_student_id`)
    REFERENCES `zenclass_model`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `zenclass_model`.`skills` (
  `skill_id` INT NOT NULL,
  `skill_name` VARCHAR(45) NULL,
  `skill_exp` VARCHAR(45) NULL,
  `student_student_id` INT NOT NULL,
  PRIMARY KEY (`skill_id`, `student_student_id`),
  INDEX `fk_skills_user_info_idx` (`student_student_id` ASC) VISIBLE,
  CONSTRAINT `fk_skills_student_info`
    FOREIGN KEY (`student_student_id`)
    REFERENCES `zenclass_model`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB


CREATE TABLE IF NOT EXISTS `zenclass_model`.`student` (
  `student_id` INT NOT NULL,
  `student_name` VARCHAR(45) NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `batch_id` INT NOT NULL,
  PRIMARY KEY (`student_id`, `batch_id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE,
  INDEX `fk_student_batch_id_idx` (`batch_id` ASC) VISIBLE,
  CONSTRAINT `fk_student_batch_id`
    FOREIGN KEY (`batch_id`)
    REFERENCES `zenclass_model`.`student_batch` (`batch_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `zenclass_model`.`student_work_exp` (
  `work_exp_id` INT NOT NULL,
  `company_name` VARCHAR(45) NULL,
  `years_of_exp` VARCHAR(45) NULL,
  `join_date` VARCHAR(45) NULL,
  `relieving_date` VARCHAR(45) NULL,
  `designation` VARCHAR(45) NULL,
  `current_ctc` VARCHAR(45) NULL,
  `work_department` VARCHAR(45) NULL,
  `student_student_id` INT NOT NULL,
  PRIMARY KEY (`work_exp_id`, `student_student_id`),
  INDEX `fk_user_work_exp_user_info1_idx` (`student_student_id` ASC) VISIBLE,
  CONSTRAINT `fk_student_work_exp_student_info1`
    FOREIGN KEY (`student_student_id`)
    REFERENCES `zenclass_model`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `zenclass_model`.`student_batch` (
  `batch_id` INT NOT NULL,
  `batch_name` VARCHAR(45) NULL,
  `mentor_name` VARCHAR(45) NULL,
  `batch_type` VARCHAR(45) NULL,
  PRIMARY KEY (`batch_id`))
ENGINE = InnoDB