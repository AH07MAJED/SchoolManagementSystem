USE [SchoolManagementSystem]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/19/2024 4:01:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](50) NULL,
	[Age] [nvarchar](max) NULL,
	[standard] [nvarchar](max) NULL,
	[Contact] [nvarchar](15) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1, N'Majed Ahmed', N'21', N'BCA ', N'9667453214', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3, N' Ahmed', N'21', N'BCA1 Yearrtt', N'9023124345', 1, 1, CAST(N'2024-11-18T12:51:29.853' AS DateTime), NULL, CAST(N'2024-11-18T15:13:08.360' AS DateTime), NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (4, N'Majed Ahmed', N'21', N'BCA', N'9992875634', 0, 1, CAST(N'2024-11-18T13:16:42.927' AS DateTime), NULL, CAST(N'2024-11-18T15:02:04.457' AS DateTime), NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5, N'Majed AHmed', N'21', N'BCA', N'9992875634', 0, 1, CAST(N'2024-11-18T15:16:03.687' AS DateTime), NULL, CAST(N'2024-11-18T15:39:52.520' AS DateTime), NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6, N'dvvv', N'22', N'12', N'1111111', 0, 1, CAST(N'2024-11-18T15:17:05.933' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (7, N'dvvv', N'22', N'12', N'1111111', 0, 1, CAST(N'2024-11-18T15:23:17.523' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (8, N'dvvv', N'22', N'12', N'1111111', 0, 1, CAST(N'2024-11-18T15:23:29.773' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (9, N'dvvv', N'22', N'12', N'1111111', 0, 1, CAST(N'2024-11-18T15:23:40.523' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (10, N'Ali', N'23', N'MCA', N'9023124345', 1, 1, CAST(N'2024-11-18T15:36:27.787' AS DateTime), NULL, CAST(N'2024-11-18T15:40:08.440' AS DateTime), NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (11, N'Salman Khan', N'24', N'MCA', N'9992875634', 0, 0, CAST(N'2024-11-18T15:40:51.750' AS DateTime), NULL, CAST(N'2024-11-19T11:54:31.590' AS DateTime), NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (12, N'Mr. Sham', N'23', N'MCA', N'9992875634', 1, 0, CAST(N'2024-11-18T16:07:36.847' AS DateTime), NULL, CAST(N'2024-11-19T11:56:13.383' AS DateTime), NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (13, N'Majed Ahmed', N'21', N'BCA', N'9023124345', 1, 1, CAST(N'2024-11-18T16:12:57.383' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (14, N'King Khan', N'27', N'PHD In Computer Applications', N'9123453344', 1, 1, CAST(N'2024-11-19T12:11:06.280' AS DateTime), NULL, CAST(N'2024-11-19T12:11:35.240' AS DateTime), NULL)
INSERT [dbo].[Student] ([Id], [StudentName], [Age], [standard], [Contact], [IsActive], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (15, N'King Khan', N'27', N'PHD In Computer Applications', N'91234533254', 1, 1, CAST(N'2024-11-19T12:21:15.713' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
ALTER TABLE [dbo].[Student] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Student] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Student] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  StoredProcedure [dbo].[DeleteStudent]    Script Date: 11/19/2024 4:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[DeleteStudent]
    @Id INT
    
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Student
    SET IsDeleted = 1
       
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[GetStudentByID]    Script Date: 11/19/2024 4:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[GetStudentByID]
@Id bigint
AS
BEGIN
    SELECT * FROM Student where Id = @Id and IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[GetStudentList]    Script Date: 11/19/2024 4:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetStudentList]
 As
 Begin 
 Select * From Student Where IsDeleted = 0;
 End 
GO
/****** Object:  StoredProcedure [dbo].[InsertStudent]    Script Date: 11/19/2024 4:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create PROCEDURE [dbo].[InsertStudent]
    @StudentName NVARCHAR(50),
    @Age NVARCHAR(max),
    @standard NVARCHAR(max),
    @Contact NVARCHAR(15),
	@IsActive BIT,
	@user bigint = null
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Id bigint;

    INSERT INTO Student (StudentName, Age, standard,Contact, CreatedDate, CreatedBy, IsActive)
    VALUES (@StudentName, @Age, @standard,@Contact, GETDATE(), @user, @IsActive);

    SET @Id = SCOPE_IDENTITY();

    SELECT @Id AS Id;
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudent]    Script Date: 11/19/2024 4:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[UpdateStudent]
    @Id BIGINT,
    @StudentName NVARCHAR(255),
    @Age NVARCHAR(50),
    @standard NVARCHAR(MAX),
    @Contact NVARCHAR(MAX),
    @user bigint = null
	

    
AS
BEGIN
    UPDATE Student
    SET StudentName = @StudentName,
        Age = @Age,
        standard = @standard,
		Contact = @Contact,
		ModifiedDate = getdate(),
		ModifiedBy = @user
           
		      

    WHERE Id = @Id;
END;
GO
