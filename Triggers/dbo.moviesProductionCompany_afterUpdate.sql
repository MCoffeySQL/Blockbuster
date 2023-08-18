USE Blockbuster;
GO

DROP TRIGGER IF EXISTS moviesProductionCompany_afterUpdate;
GO

CREATE TRIGGER dbo.moviesProductionCompany_afterUpdate
  ON dbo.moviesProductionCompany
  AFTER UPDATE
  AS
  BEGIN
    SET NOCOUNT ON

    UPDATE dbo.moviesProductionCompany
    SET dateModified = GETDATE(),
      modifiedBy = SUSER_SNAME()
    FROM dbo.moviesProductionCompany
    INNER JOIN inserted
      ON moviesProductionCompany.id = inserted.id;
  END