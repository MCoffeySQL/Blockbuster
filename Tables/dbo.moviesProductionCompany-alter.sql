USE Blockbuster;
GO

--Primary Key [ID]
ALTER TABLE dbo.moviesProductionCompany
  DROP CONSTRAINT IF EXISTS pk_moviesProductionCompany;
GO

ALTER TABLE dbo.moviesProductionCompany
  ADD CONSTRAINT pk_moviesProductionCompany
  PRIMARY KEY CLUSTERED (id);
GO

--Unique Key [name]
ALTER TABLE dbo.moviesProductionCompany
  DROP CONSTRAINT IF EXISTS u_moviesProductionCompany_name;
GO

ALTER TABLE dbo.moviesProductionCompany
  ADD CONSTRAINT u_moviesProductionCompany_name
  UNIQUE([name]);
GO

--Default [dateCreated]
ALTER TABLE dbo.moviesProductionCompany
  DROP CONSTRAINT IF EXISTS dv_moviesProductionCompany_dateCreated;
GO

ALTER TABLE dbo.moviesProductionCompany
  ADD CONSTRAINT dv_moviesProductionCompany_dateCreated
  DEFAULT GETDATE() FOR dateCreated;
GO

--Default [dateModified]
ALTER TABLE dbo.moviesProductionCompany
  DROP CONSTRAINT IF EXISTS dv_moviesProductionCompany_dateModified;
GO

ALTER TABLE dbo.moviesProductionCompany
  ADD CONSTRAINT dv_moviesProductionCompany_dateModified
  DEFAULT GETDATE() FOR dateModified;
GO

--Default [createdBy]
ALTER TABLE dbo.moviesProductionCompany
  DROP CONSTRAINT IF EXISTS dv_moviesProductionCompany_createdBy;
GO

ALTER TABLE dbo.moviesProductionCompany
  ADD CONSTRAINT dv_moviesProductionCompany_createdBy
  DEFAULT SUSER_SNAME() FOR createdBy;
GO

--Default [modifiedBy]
ALTER TABLE dbo.moviesProductionCompany
  DROP CONSTRAINT IF EXISTS dv_moviesProductionCompany_modifiedBy;
GO

ALTER TABLE dbo.moviesProductionCompany
  ADD CONSTRAINT dv_moviesProductionCompany_modifiedBy
  DEFAULT SUSER_SNAME() FOR modifiedBy;
GO