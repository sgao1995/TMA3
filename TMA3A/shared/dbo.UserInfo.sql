CREATE TABLE [dbo].[UserInfo] (
    [UserID]   INT         IDENTITY (1, 1) NOT NULL,
    [Username] NCHAR (25)  NULL,
    [Password] NCHAR (25)  NULL,
    [Email]    NCHAR (100) NULL,
    [Address]  NCHAR (500) NULL,
    [fname]    NCHAR (25)  NULL,
    [lname]    NCHAR (25)  NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC)
);

