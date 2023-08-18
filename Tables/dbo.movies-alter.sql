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

--Foreign Key [genreID]
ALTER TABLE dbo.movies
  DROP CONSTRAINT IF EXISTS fk_movies_genreID;
GO

ALTER TABLE dbo.movies
  ADD CONSTRAINT fk_movies_genreID FOREIGN KEY (genreID)
  REFERENCES dbo.moviesGenre (id)
  ON DELETE SET NULL
  ON UPDATE CASCADE;
GO

--Foreign Key [productionCompanyID]
ALTER TABLE dbo.movies
  DROP CONSTRAINT IF EXISTS fk_movies_productionCompanyID;
 GO

 ALTER TABLE dbo.movies 
   ADD CONSTRAINT fk_movies_productionCompanyID FOREIGN KEY (productionCompanyID)
   REFERENCES dbo.moviesProductionCompany (id)
   ON DELETE SET NULL
   ON UPDATE CASCADE;
GO

--Unique Key [name]
ALTER TABLE dbo.movies
  DROP CONSTRAINT IF EXISTS u_movies_name;
GO

ALTER TABLE dbo.movies
  ADD CONSTRAINT u_movies_name
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