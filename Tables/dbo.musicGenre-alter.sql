USE Blockbuster;
GO

--Primary Key [ID]
ALTER TABLE dbo.musicGenre
  DROP CONSTRAINT IF EXISTS pk_musicGenre;
GO

ALTER TABLE dbo.musicGenre
  ADD CONSTRAINT pk_musicGenre
  PRIMARY KEY CLUSTERED (id);
GO

--Unique Key [name]
ALTER TABLE dbo.musicGenre
  DROP CONSTRAINT IF EXISTS u_musicGenre_name;
GO

ALTER TABLE dbo.musicGenre
  ADD CONSTRAINT u_musicGenre_name
  UNIQUE([name]);
GO

--Default [dateCreated]
ALTER TABLE dbo.musicGenre
  DROP CONSTRAINT IF EXISTS dv_musicGenre_dateCreated;
GO

ALTER TABLE dbo.musicGenre
  ADD CONSTRAINT dv_musicGenre_dateCreated
  DEFAULT GETDATE() FOR dateCreated;
GO

--Default [dateModified]
ALTER TABLE dbo.musicGenre
  DROP CONSTRAINT IF EXISTS dv_musicGenre_dateModified;
GO

ALTER TABLE dbo.musicGenre
  ADD CONSTRAINT dv_musicGenre_dateModified
  DEFAULT GETDATE() FOR dateModified;
GO

--Default [createdBy]
ALTER TABLE dbo.musicGenre
  DROP CONSTRAINT IF EXISTS dv_musicGenre_createdBy;
GO

ALTER TABLE dbo.musicGenre
  ADD CONSTRAINT dv_musicGenre_createdBy
  DEFAULT SUSER_SNAME() FOR createdBy;
GO

--Default [modifiedBy]
ALTER TABLE dbo.musicGenre
  DROP CONSTRAINT IF EXISTS dv_musicGenre_modifiedBy;
GO

ALTER TABLE dbo.musicGenre
  ADD CONSTRAINT dv_musicGenre_modifiedBy
  DEFAULT SUSER_SNAME() FOR modifiedBy;
GO