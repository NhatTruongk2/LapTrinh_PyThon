USE [master]
GO
/****** Object:  Database [testball]    Script Date: 5/22/2024 1:31:36 PM ******/
CREATE DATABASE [testball]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testball', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\testball.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'testball_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\testball_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [testball] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testball].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [testball] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [testball] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [testball] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [testball] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [testball] SET ARITHABORT OFF 
GO
ALTER DATABASE [testball] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [testball] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [testball] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [testball] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [testball] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [testball] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [testball] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [testball] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [testball] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [testball] SET  DISABLE_BROKER 
GO
ALTER DATABASE [testball] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [testball] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [testball] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [testball] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [testball] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [testball] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [testball] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [testball] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [testball] SET  MULTI_USER 
GO
ALTER DATABASE [testball] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [testball] SET DB_CHAINING OFF 
GO
ALTER DATABASE [testball] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [testball] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [testball] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [testball] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [testball] SET QUERY_STORE = ON
GO
ALTER DATABASE [testball] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [testball]
GO
/****** Object:  Table [dbo].[TopScorers]    Script Date: 5/22/2024 1:31:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopScorers](
	[Rank] [int] IDENTITY(1,1) NOT NULL,
	[PlayerName] [nvarchar](255) NULL,
	[NumberOfGoals] [int] NULL,
	[Position] [nvarchar](255) NULL,
	[Nationality] [nvarchar](255) NULL,
	[DateOfBirth] [date] NULL,
	[TeamName] [nvarchar](255) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TopScorers] ON 

INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (1, N'Alexander Sørloth', 23, N'Offence', N'Norway', CAST(N'1995-12-05' AS Date), N'Villarreal CF')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (2, N'Artem Dovbyk', 21, N'Offence', N'Ukraine', CAST(N'1997-06-21' AS Date), N'Girona FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (3, N'Jude Bellingham', 19, N'Midfield', N'England', CAST(N'2003-06-29' AS Date), N'Real Madrid CF')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (4, N'Robert Lewandowski', 18, N'Offence', N'Poland', CAST(N'1988-08-21' AS Date), N'FC Barcelona')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (5, N'Antoine Griezmann', 16, N'Offence', N'France', CAST(N'1991-03-21' AS Date), N'Club Atlético de Madrid')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (6, N'Ante Budimir', 16, N'Offence', N'Croatia', CAST(N'1991-07-22' AS Date), N'CA Osasuna')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (7, N'Youssef En-Nesyri', 15, N'Offence', N'Morocco', CAST(N'1997-06-01' AS Date), N'Sevilla FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (8, N'Álvaro Morata', 15, N'Offence', N'Spain', CAST(N'1992-10-23' AS Date), N'Club Atlético de Madrid')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (9, N'Vinicius Junior', 15, N'Offence', N'Brazil', CAST(N'2000-07-12' AS Date), N'Real Madrid CF')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (10, N'Borja Mayoral', 15, N'Offence', N'Spain', CAST(N'1997-04-05' AS Date), N'Getafe CF')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (11, N'Erling Haaland', 27, N'Offence', N'Norway', CAST(N'2000-07-21' AS Date), N'Manchester City FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (12, N'Cole Palmer', 22, N'Midfield', N'England', CAST(N'2002-05-06' AS Date), N'Chelsea FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (13, N'Alexander Isak', 21, N'Midfield', N'Sweden', CAST(N'1999-09-21' AS Date), N'Newcastle United FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (14, N'Dominic Solanke', 19, N'Offence', N'England', CAST(N'1997-09-14' AS Date), N'AFC Bournemouth')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (15, N'Phil Foden', 19, N'Midfield', N'England', CAST(N'2000-05-28' AS Date), N'Manchester City FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (16, N'Ollie Watkins', 19, N'Offence', N'England', CAST(N'1995-12-30' AS Date), N'Aston Villa FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (17, N'Mohamed Salah', 18, N'Offence', N'Egypt', CAST(N'1992-06-15' AS Date), N'Liverpool FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (18, N'Heung-min Son', 17, N'Midfield', N'South Korea', CAST(N'1992-07-08' AS Date), N'Tottenham Hotspur FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (19, N'Bukayo Saka', 16, N'Offence', N'England', CAST(N'2001-09-05' AS Date), N'Arsenal FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (20, N'Jarrod Bowen', 16, N'Offence', N'England', CAST(N'1996-01-01' AS Date), N'West Ham United FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (21, N'Harry Kane', 36, N'Offence', N'England', CAST(N'1993-07-28' AS Date), N'FC Bayern München')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (22, N'Sehrou Guirassy', 28, N'Offence', N'Guinea', CAST(N'1996-03-12' AS Date), N'VfB Stuttgart')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (23, N'Loïs Openda', 24, N'Offence', N'Belgium', CAST(N'2000-02-16' AS Date), N'RB Leipzig')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (24, N'Deniz Undav', 18, N'Offence', N'Germany', CAST(N'1996-07-19' AS Date), N'VfB Stuttgart')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (25, N'Maximilian Beier', 16, N'Offence', N'Germany', CAST(N'2002-10-17' AS Date), N'TSG 1899 Hoffenheim')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (26, N'Andrej Kramarić', 15, N'Offence', N'Croatia', CAST(N'1991-06-19' AS Date), N'TSG 1899 Hoffenheim')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (27, N'Ermedin Demirovic', 15, N'Offence', N'Bosnia-Herzegovina', CAST(N'1998-03-25' AS Date), N'FC Augsburg')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (28, N'Victor Boniface', 14, N'Offence', N'Nigeria', CAST(N'2000-12-23' AS Date), N'Bayer 04 Leverkusen')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (29, N'Benjamin Šeško', 14, N'Offence', N'Slovenia', CAST(N'2003-05-31' AS Date), N'RB Leipzig')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (30, N'Donyell Malen', 13, N'Offence', N'Netherlands', CAST(N'1999-01-19' AS Date), N'Borussia Dortmund')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (31, N'Kylian Mbappé', 27, N'Offence', N'France', CAST(N'1998-12-20' AS Date), N'Paris Saint-Germain FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (32, N'Alexandre Lacazette', 19, N'Offence', N'France', CAST(N'1991-05-28' AS Date), N'Olympique Lyonnais')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (33, N'Jonathan David', 19, N'Offence', N'Canada', CAST(N'2000-01-14' AS Date), N'Lille OSC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (34, N'Pierre-Emerick Aubameyang', 17, N'Offence', N'Gabon', CAST(N'1989-06-18' AS Date), N'Olympique de Marseille')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (35, N'Wissam Ben Yedder', 16, N'Offence', N'France', CAST(N'1990-08-12' AS Date), N'AS Monaco FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (36, N'Thijs Dallinga', 14, N'Offence', N'Netherlands', CAST(N'2000-08-03' AS Date), N'Toulouse FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (37, N'Georges Mikautadze', 13, N'Offence', N'Georgia', CAST(N'2000-10-31' AS Date), N'FC Metz')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (38, N'Terem Moffi', 11, N'Offence', N'Nigeria', CAST(N'1999-05-25' AS Date), N'OGC Nice')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (39, N'Gonçalo Ramos', 11, N'Offence', N'Portugal', CAST(N'2001-06-20' AS Date), N'Paris Saint-Germain FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (40, N'Arnaud Kalimuendo', 10, N'Offence', N'France', CAST(N'2002-01-20' AS Date), N'Stade Rennais FC 1901')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (41, N'Erling Haaland', 27, N'Offence', N'Norway', CAST(N'2000-07-21' AS Date), N'Manchester City FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (42, N'Cole Palmer', 22, N'Midfield', N'England', CAST(N'2002-05-06' AS Date), N'Chelsea FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (43, N'Alexander Isak', 21, N'Midfield', N'Sweden', CAST(N'1999-09-21' AS Date), N'Newcastle United FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (44, N'Dominic Solanke', 19, N'Offence', N'England', CAST(N'1997-09-14' AS Date), N'AFC Bournemouth')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (45, N'Phil Foden', 19, N'Midfield', N'England', CAST(N'2000-05-28' AS Date), N'Manchester City FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (46, N'Ollie Watkins', 19, N'Offence', N'England', CAST(N'1995-12-30' AS Date), N'Aston Villa FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (47, N'Mohamed Salah', 18, N'Offence', N'Egypt', CAST(N'1992-06-15' AS Date), N'Liverpool FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (48, N'Heung-min Son', 17, N'Midfield', N'South Korea', CAST(N'1992-07-08' AS Date), N'Tottenham Hotspur FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (49, N'Bukayo Saka', 16, N'Offence', N'England', CAST(N'2001-09-05' AS Date), N'Arsenal FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (50, N'Jarrod Bowen', 16, N'Offence', N'England', CAST(N'1996-01-01' AS Date), N'West Ham United FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (51, N'Erling Haaland', 27, N'Offence', N'Norway', CAST(N'2000-07-21' AS Date), N'Manchester City FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (52, N'Cole Palmer', 22, N'Midfield', N'England', CAST(N'2002-05-06' AS Date), N'Chelsea FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (53, N'Alexander Isak', 21, N'Midfield', N'Sweden', CAST(N'1999-09-21' AS Date), N'Newcastle United FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (54, N'Dominic Solanke', 19, N'Offence', N'England', CAST(N'1997-09-14' AS Date), N'AFC Bournemouth')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (55, N'Phil Foden', 19, N'Midfield', N'England', CAST(N'2000-05-28' AS Date), N'Manchester City FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (56, N'Ollie Watkins', 19, N'Offence', N'England', CAST(N'1995-12-30' AS Date), N'Aston Villa FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (57, N'Mohamed Salah', 18, N'Offence', N'Egypt', CAST(N'1992-06-15' AS Date), N'Liverpool FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (58, N'Heung-min Son', 17, N'Midfield', N'South Korea', CAST(N'1992-07-08' AS Date), N'Tottenham Hotspur FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (59, N'Bukayo Saka', 16, N'Offence', N'England', CAST(N'2001-09-05' AS Date), N'Arsenal FC')
INSERT [dbo].[TopScorers] ([Rank], [PlayerName], [NumberOfGoals], [Position], [Nationality], [DateOfBirth], [TeamName]) VALUES (60, N'Jarrod Bowen', 16, N'Offence', N'England', CAST(N'1996-01-01' AS Date), N'West Ham United FC')
SET IDENTITY_INSERT [dbo].[TopScorers] OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertTopScorers]    Script Date: 5/22/2024 1:31:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertTopScorers]
    @jsonData NVARCHAR(MAX) = NULL,
    @action NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF @action IS NULL
        BEGIN
            -- Kiểm tra nếu @jsonData là NULL
            IF @jsonData IS NULL
            BEGIN
                RAISERROR('JSON data is null', 16, 1);
                RETURN;
            END

            -- Bảng tạm thời để lưu trữ dữ liệu JSON đã được phân tích cú pháp
            CREATE TABLE #tempTable (
                PlayerName NVARCHAR(255),
                NumberOfGoals INT,
                Position NVARCHAR(255),
                Nationality NVARCHAR(255),
                DateOfBirth DATE,
                TeamName NVARCHAR(255)
            );

            -- Chèn dữ liệu JSON vào bảng tạm thời
            INSERT INTO #tempTable (PlayerName, NumberOfGoals, Position, Nationality, DateOfBirth, TeamName)
            SELECT 
                PlayerName,
                NumberOfGoals,
                Position,
                Nationality,
                DateOfBirth,
                TeamName
            FROM OPENJSON(@jsonData)
            WITH (
                PlayerName NVARCHAR(255) '$.PlayerName',
                NumberOfGoals INT '$.NumberOfGoals',
                Position NVARCHAR(255) '$.Position',
                Nationality NVARCHAR(255) '$.Nationality',
                DateOfBirth DATE '$.DateOfBirth',
                TeamName NVARCHAR(255) '$.TeamName'
            );

            -- Chèn dữ liệu từ bảng tạm thời vào bảng chính
            INSERT INTO TopScorers (PlayerName, NumberOfGoals, Position, Nationality, DateOfBirth, TeamName)
            SELECT PlayerName, NumberOfGoals, Position, Nationality, DateOfBirth, TeamName
            FROM #tempTable;

            -- Xóa bảng tạm thời
            DROP TABLE #tempTable;
        END
        ELSE IF @action = 'LietKeTopScorers'
        BEGIN
            DECLARE @json NVARCHAR(MAX);

            -- Trả về danh sách 10 cầu thủ ghi bàn hàng đầu dưới dạng JSON
            SELECT @json = 
                N'{"ok":1,"msg":"ok","data":' +
                (SELECT PlayerName, NumberOfGoals, Position, Nationality, DateOfBirth, TeamName
                 FROM (SELECT TOP 10 * FROM TopScorers ORDER BY [Rank] DESC) AS Last10Records
                 FOR JSON PATH) + 
                N'}';

            -- Trả về chuỗi JSON
            SELECT @json AS result;
        END
    END TRY
    BEGIN CATCH
        -- Ghi lại thông tin lỗi chi tiết
        DECLARE @ErrorMessage NVARCHAR(4000), @ErrorSeverity INT, @ErrorState INT;
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END
GO
USE [master]
GO
ALTER DATABASE [testball] SET  READ_WRITE 
GO
