USE Blockbuster;
GO

DROP TRIGGER IF EXISTS dbo.movies_setModified;
GO

CREATE OR ALTER TRIGGER dbo.movies_setModified
ON dbo.movies
AFTER UPDATE
AS 
  UPDATE dbo.movies
  SET dateModified = GETDATE()
  FROM dbo.movies
  JOIN inserted AS inserted
    ON movies.id = inserted.id;
GO

ALTER TABLE dbo.movies
ENABLE TRIGGER movies_setModified
GO


