﻿CREATE TABLE [dbo].[Employees] (
    [Emp_id]     INT           NOT NULL,
    [Job_id]     INT           NOT NULL,
    [First_name] NVARCHAR (50) NOT NULL,
    [Last_name]  NVARCHAR (50) NOT NULL,
    [Salary]     FLOAT (53)    NOT NULL,
    PRIMARY KEY CLUSTERED ([Emp_id] ASC),
    CONSTRAINT [FK_Employees_Jobs] FOREIGN KEY ([Job_id]) REFERENCES [dbo].[Jobs] ([Job_id])
);

