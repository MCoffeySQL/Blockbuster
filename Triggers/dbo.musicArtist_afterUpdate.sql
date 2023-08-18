USE Blockbuster;
GO

DROP TRIGGER IF EXISTS musicArtist_afterUpdate;
GO

CREATE TRIGGER dbo.musicArtist_afterUpdate
  ON dbo.musicArtist
  AFTER UPDATE
  AS
  BEGIN
    SET NOCOUNT ON

    UPDATE dbo.musicArtist
    SET dateModified = GETDATE(),
      modifiedBy = SUSER_SNAME()
    FROM dbo.musicArtist
    INNER JOIN inserted
      ON musicArtist.id = inserted.id;
  END