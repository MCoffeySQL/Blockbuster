USE Blockbuster;
GO

--Primary Key [ID]
ALTER TABLE dbo.movies
  DROP CONSTRAINT IF EXISTS pk_movies;
GO

ALTER TABLE dbo.movies
  ADD CONSTRAINT pk_movies
  PRIMARY KEY CLUSTERED (id);
GO

--Unique Key [name]
ALTER TABLE dbo.movies
  DROP CONSTRAINT IF EXISTS unq_movies_name;
GO

ALTER TABLE dbo.movies
  ADD CONSTRAINT unq_movies_name
  UNIQUE([name]);
GO

--Default [dateCreated]
ALTER TABLE dbo.movies
  DROP CONSTRAINT IF EXISTS dv_movies_dateCreated;
GO

ALTER TABLE dbo.movies
  ADD CONSTRAINT dv_movies_dateCreated
  DEFAULT GETDATE() FOR dateCreated;
GO

--Default [dateModified]
ALTER TABLE dbo.movies
  DROP CONSTRAINT IF EXISTS dv_movies_dateModified;
GO

ALTER TABLE dbo.movies
  ADD CONSTRAINT dv_movies_dateModified
  DEFAULT GETDATE() FOR dateModified;
GO

--Default [createdBy]
ALTER TABLE dbo.movies
  DROP CONSTRAINT IF EXISTS dv_movies_createdBy;
GO

ALTER TABLE dbo.movies
  ADD CONSTRAINT dv_movies_createdBy
  DEFAULT SUSER_SNAME() FOR createdBy;
GO

--Default [modifiedBy]
ALTER TABLE dbo.movies
  DROP CONSTRAINT IF EXISTS dv_movies_modifiedBy;
GO

ALTER TABLE dbo.movies
  ADD CONSTRAINT dv_movies_modifiedBy
  DEFAULT SUSER_SNAME() FOR modifiedBy;
GO