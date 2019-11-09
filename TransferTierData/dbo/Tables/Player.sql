CREATE TABLE [dbo].[Player]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [ClubId] INT NOT NULL, 
    [LoanClubId] INT NULL, 
    [CountryId] INT NOT NULL, 

    [CreatedDate] DATETIME2 NOT NULL DEFAULT GETUTCDATE(), 
[LastModified]DATETIME2 NOT NULL DEFAULT GETUTCDATE(),
    CONSTRAINT [FK_Player_Club] FOREIGN KEY ([ClubId]) REFERENCES [Club]([Id]),
    CONSTRAINT [FK_Player_LoanClub] FOREIGN KEY ([LoanClubId]) REFERENCES [Club]([Id]),
    CONSTRAINT [FK_Player_Country] FOREIGN KEY ([CountryId]) REFERENCES [Country]([Id])
)
