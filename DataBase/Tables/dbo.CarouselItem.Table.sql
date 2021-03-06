/****** Object:  Table [dbo].[CarouselItem]    Script Date: 2016/6/1 星期三 16:15:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarouselItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[CarouselID] [int] NULL,
	[CarouselWidgetID] [nvarchar](100) NULL,
	[TargetLink] [nvarchar](255) NULL,
	[ImageUrl] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[CreateBy] [nvarchar](255) NULL,
	[CreatebyName] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[LastUpdateBy] [nvarchar](255) NULL,
	[LastUpdateByName] [nvarchar](255) NULL,
	[LastUpdateDate] [datetime] NULL,
 CONSTRAINT [PK_CarouselItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CarouselItem]  WITH CHECK ADD  CONSTRAINT [FK_CarouselItem_Carousel] FOREIGN KEY([CarouselID])
REFERENCES [dbo].[Carousel] ([ID])
GO
ALTER TABLE [dbo].[CarouselItem] CHECK CONSTRAINT [FK_CarouselItem_Carousel]
GO
ALTER TABLE [dbo].[CarouselItem]  WITH CHECK ADD  CONSTRAINT [FK_CarouselItem_CarouselWidget] FOREIGN KEY([CarouselWidgetID])
REFERENCES [dbo].[CarouselWidget] ([ID])
GO
ALTER TABLE [dbo].[CarouselItem] CHECK CONSTRAINT [FK_CarouselItem_CarouselWidget]
GO
