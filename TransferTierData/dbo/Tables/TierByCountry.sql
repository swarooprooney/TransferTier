CREATE TABLE [dbo].[TierByCountry]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [JournalistId] INT NOT NULL, 
    [CountryId] INT NOT NULL, 
    [TierId] INT NOT NULL, 


    [CreatedDate] DATETIME2 NOT NULL DEFAULT GETUTCDATE(), 
[LastModified]DATETIME2 NOT NULL DEFAULT GETUTCDATE(),
    CONSTRAINT [FK_TierByCountry_Journalist] FOREIGN KEY ([JournalistId]) REFERENCES [Journalist]([Id]),
CONSTRAINT [FK_TierByCountry_Country] FOREIGN KEY ([CountryId]) REFERENCES [Country]([Id]),
CONSTRAINT [FK_TierByCountry_Tier] FOREIGN KEY ([TierId]) REFERENCES [Tier]([Id]),

)
