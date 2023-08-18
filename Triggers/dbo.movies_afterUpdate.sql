USE Blockbuster;
GO

DROP TRIGGER IF EXISTS movies_afterUpdate;
GO

CREATE TRIGGER dbo.movies_afterUpdate
  ON dbo.movies
  AFTER UPDATE
  AS
  BEGIN
    SET NOCOUNT ON

    UPDATE dbo.movies
    SET dateModified = GETDATE(),
      modifiedBy = SUSER_SNAME()
    FROM dbo.movies
    INNER JOIN inserted
      ON movies.id = inserted.id;
  END