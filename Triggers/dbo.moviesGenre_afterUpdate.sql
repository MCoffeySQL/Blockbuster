USE Blockbuster;
GO

DROP TRIGGER IF EXISTS moviesGenre_afterUpdate;
GO

CREATE TRIGGER dbo.moviesGenre_afterUpdate
  ON dbo.moviesGenre
  AFTER UPDATE
  AS
  BEGIN
    SET NOCOUNT ON

    UPDATE dbo.moviesGenre
    SET dateModified = GETDATE(),
      modifiedBy = SUSER_SNAME()
    FROM dbo.moviesGenre
    INNER JOIN inserted
      ON moviesGenre.id = inserted.id;
  END