USE blockbuster;
GO

DROP TABLE IF EXISTS dba.stage_movies;
GO

CREATE TABLE dba.stage_movies(
  id INT IDENTITY(1,1) NOT NULL,
  sourceFilePathFull VARCHAR(255) NOT NULL
);