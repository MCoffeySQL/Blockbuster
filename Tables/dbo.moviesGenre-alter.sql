USE Blockbuster;
GO

--Primary Key [ID]
ALTER TABLE dbo.moviesGenre
  DROP CONSTRAINT IF EXISTS pk_moviesGenre;
GO

ALTER TABLE dbo.moviesGenre
  ADD CONSTRAINT pk_moviesGenre
  PRIMARY KEY CLUSTERED (id);
GO

--Unique Key [name]
ALTER TABLE dbo.moviesGenre
  DROP CONSTRAINT IF EXISTS u_moviesGenre_name;
GO

ALTER TABLE dbo.moviesGenre
  ADD CONSTRAINT u_moviesGenre_name
  UNIQUE([name]);
GO

--Default [dateCreated]
ALTER TABLE dbo.moviesGenre
  DROP CONSTRAINT IF EXISTS dv_moviesGenre_dateCreated;
GO

ALTER TABLE dbo.moviesGenre
  ADD CONSTRAINT dv_moviesGenre_dateCreated
  DEFAULT GETDATE() FOR dateCreated;
GO

--Default [dateModified]
ALTER TABLE dbo.moviesGenre
  DROP CONSTRAINT IF EXISTS dv_moviesGenre_dateModified;
GO

ALTER TABLE dbo.moviesGenre
  ADD CONSTRAINT dv_moviesGenre_dateModified
  DEFAULT GETDATE() FOR dateModified;
GO

--Default [createdBy]
ALTER TABLE dbo.moviesGenre
  DROP CONSTRAINT IF EXISTS dv_moviesGenre_createdBy;
GO

ALTER TABLE dbo.moviesGenre
  ADD CONSTRAINT dv_moviesGenre_createdBy
  DEFAULT SUSER_SNAME() FOR createdBy;
GO

--Default [modifiedBy]
ALTER TABLE dbo.moviesGenre
  DROP CONSTRAINT IF EXISTS dv_moviesGenre_modifiedBy;
GO

ALTER TABLE dbo.moviesGenre
  ADD CONSTRAINT dv_moviesGenre_modifiedBy
  DEFAULT SUSER_SNAME() FOR modifiedBy;
GO