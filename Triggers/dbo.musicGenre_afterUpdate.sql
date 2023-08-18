USE Blockbuster;
GO

DROP TRIGGER IF EXISTS musicGenre_afterUpdate;
GO

CREATE TRIGGER dbo.musicGenre_afterUpdate
  ON dbo.musicGenre
  AFTER UPDATE
  AS
  BEGIN
    SET NOCOUNT ON

    UPDATE dbo.musicGenre
    SET dateModified = GETDATE(),
      modifiedBy = SUSER_SNAME()
    FROM dbo.musicGenre
    INNER JOIN inserted
      ON musicGenre.id = inserted.id;
  END