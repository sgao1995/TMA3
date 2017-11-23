CREATE TABLE [dbo].[OrderInfo] (
    [OrderId] INT         IDENTITY (1, 1) NOT NULL,
    [UserID]  INT         NOT NULL,
    [CPU]     NCHAR (100) NULL,
    [Mobo]    NCHAR (100) NULL,
    [Memory]  NCHAR (500) NULL,
    [Storage] NCHAR (500) NULL,
    [VideoC]  NCHAR (100) NULL,
    [Case]    NCHAR (200) NULL,
    [OS]      NCHAR (100) NULL,
    [PSU]     NCHAR (200) NULL,
    [tPrice]  INT         NULL,
    PRIMARY KEY CLUSTERED ([OrderId] ASC),
    FOREIGN KEY ([UserID]) REFERENCES [dbo].[UserInfo] ([UserID])
);

