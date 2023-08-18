USE Blockbuster;
GO

DROP TRIGGER IF EXISTS musicAlbumTrack_afterUpdate;
GO

CREATE TRIGGER dbo.musicAlbumTrack_afterUpdate
  ON dbo.musicAlbumTrack
  AFTER UPDATE
  AS
  BEGIN
    SET NOCOUNT ON

    UPDATE dbo.musicAlbumTrack
    SET dateModified = GETDATE(),
      modifiedBy = SUSER_SNAME()
    FROM dbo.musicAlbumTrack
    INNER JOIN inserted
      ON musicAlbumTrack.id = inserted.id;
  END