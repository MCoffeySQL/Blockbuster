USE Blockbuster;
GO

DROP TRIGGER IF EXISTS musicAlbum_afterUpdate;
GO

CREATE TRIGGER dbo.musicAlbum_afterUpdate
  ON dbo.musicAlbum
  AFTER UPDATE
  AS
  BEGIN
    SET NOCOUNT ON

    UPDATE dbo.musicAlbum
    SET dateModified = GETDATE(),
      modifiedBy = SUSER_SNAME()
    FROM dbo.musicAlbum
    INNER JOIN inserted
      ON musicAlbum.id = inserted.id;
  END