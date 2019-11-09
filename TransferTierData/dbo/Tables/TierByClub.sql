CREATE TABLE [dbo].[TierByClub]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [JournalistId] INT NOT NULL, 
    [ClubId] INT NOT NULL, 
    [TierId] INT NOT NULL, 

    [CreatedDate] DATETIME2 NOT NULL DEFAULT GETUTCDATE(), 
[LastModified]DATETIME2 NOT NULL DEFAULT GETUTCDATE(),
    CONSTRAINT [FK_TierByClub_Journalist] FOREIGN KEY ([JournalistId]) REFERENCES [Journalist]([Id]),
CONSTRAINT [FK_TierByClub_Club] FOREIGN KEY ([ClubId]) REFERENCES [Club]([Id]),
CONSTRAINT [FK_TierByClub_Tier] FOREIGN KEY ([TierId]) REFERENCES [Tier]([Id])
)
