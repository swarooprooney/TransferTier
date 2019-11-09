CREATE TABLE [dbo].[TierByPlayer]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [JournalistId] INT NOT NULL, 
    [PlayerId] INT NOT NULL, 
    [TierId] INT NOT NULL, 

    [CreatedDate] DATETIME2 NOT NULL DEFAULT GETUTCDATE(), 
[LastModified]DATETIME2 NOT NULL DEFAULT GETUTCDATE(),
    CONSTRAINT [FK_TierByPlayer_Journalist] FOREIGN KEY ([JournalistId]) REFERENCES [Journalist]([Id]),
    CONSTRAINT [FK_TierByPlayer_Player] FOREIGN KEY ([PlayerId]) REFERENCES [Player]([Id]),
    CONSTRAINT [FK_TierByPlayer_Tier] FOREIGN KEY ([TierId]) REFERENCES [Tier]([Id])
)
