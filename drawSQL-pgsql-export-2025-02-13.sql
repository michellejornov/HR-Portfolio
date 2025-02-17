CREATE TABLE "Department"(
    "department" TEXT NOT NULL,
    "staff_budget" FLOAT(53) NOT NULL
);
ALTER TABLE
    "Department" ADD PRIMARY KEY("department");
CREATE TABLE "Employee Exit Informaiton"(
    "employee_id" FLOAT(53) NOT NULL,
    "exit_id" FLOAT(53) NOT NULL,
    "overall_experience" INTEGER NOT NULL,
    "reason_for_leaving" TEXT NOT NULL
);
ALTER TABLE
    "Employee Exit Informaiton" ADD PRIMARY KEY("employee_id");
CREATE TABLE "Position"(
    "position_id" FLOAT(53) NOT NULL,
    "department" TEXT NOT NULL,
    "level" FLOAT(53) NOT NULL,
    "job_level" FLOAT(53) NOT NULL
);
ALTER TABLE
    "Position" ADD PRIMARY KEY("position_id");
CREATE TABLE "Employee Data"(
    "employee_id" FLOAT(53) NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "birthdate" DATE NOT NULL,
    "gender" TEXT NOT NULL,
    "race" TEXT NOT NULL,
    "college_degree" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "hire_date" DATE NOT NULL,
    "leave_date" DATE NOT NULL,
    "remote" TEXT NOT NULL,
    "positon_id" TEXT NOT NULL,
    "salary" TEXT NOT NULL
);
ALTER TABLE
    "Employee Data" ADD PRIMARY KEY("employee_id");
ALTER TABLE
    "Employee Exit Informaiton" ADD CONSTRAINT "employee exit informaiton_employee_id_foreign" FOREIGN KEY("employee_id") REFERENCES "Employee Data"("employee_id");
ALTER TABLE
    "Position" ADD CONSTRAINT "position_department_foreign" FOREIGN KEY("department") REFERENCES "Department"("department");
ALTER TABLE
    "Employee Data" ADD CONSTRAINT "employee data_gender_foreign" FOREIGN KEY("gender") REFERENCES "Position"("position_id");