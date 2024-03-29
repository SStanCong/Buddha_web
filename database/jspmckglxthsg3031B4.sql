USE [master]
GO
/****** Object:  Database [jspmckglxthsg3031B4]    Script Date: 11/27/2018 14:18:51 ******/
CREATE DATABASE [jspmckglxthsg3031B4] ON  PRIMARY 
( NAME = N'jspmckglxthsg3031B4', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\jspmckglxthsg3031B4.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'jspmckglxthsg3031B4_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\jspmckglxthsg3031B4_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [jspmckglxthsg3031B4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET ANSI_NULLS OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET ANSI_PADDING OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET ARITHABORT OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET  DISABLE_BROKER
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET  READ_WRITE
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET RECOVERY SIMPLE
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET  MULTI_USER
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [jspmckglxthsg3031B4] SET DB_CHAINING OFF
GO
USE [jspmckglxthsg3031B4]
GO
/****** Object:  Table [dbo].[zhijianyuanxinxi]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[zhijianyuanxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[zhijianyuangonghao] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[xingbie] [varchar](50) NULL,
	[mima] [varchar](50) NULL,
	[ruzhishijian] [varchar](50) NULL,
	[shenfenzheng] [varchar](300) NULL,
	[zhaopian] [varchar](50) NULL,
	[shouji] [varchar](50) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[zhijianyuanxinxi] ON
INSERT [dbo].[zhijianyuanxinxi] ([ID], [zhijianyuangonghao], [xingming], [xingbie], [mima], [ruzhishijian], [shenfenzheng], [zhaopian], [shouji], [beizhu], [addtime]) VALUES (2, N'006', N'王x', N'女', N'006', N'2018-11-01', N'330327199100000000', N'upload/1543218790012.gif', N'13486736616', N'111', CAST(0x0000A99000F38694 AS DateTime))
SET IDENTITY_INSERT [dbo].[zhijianyuanxinxi] OFF
/****** Object:  Table [dbo].[zhijianxinxi]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[zhijianxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[zhijianriqi] [varchar](50) NULL,
	[qicaimingcheng] [varchar](50) NULL,
	[qicaiguige] [varchar](50) NULL,
	[cangkuhao] [varchar](50) NULL,
	[zhijianjieguo] [text] NULL,
	[beizhu] [varchar](500) NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[zhijianxinxi] ON
INSERT [dbo].[zhijianxinxi] ([ID], [zhijianriqi], [qicaimingcheng], [qicaiguige], [cangkuhao], [zhijianjieguo], [beizhu], [issh], [addtime]) VALUES (1, N'2018-11-01', N'xx器材', N'xxx', N'A01', N'sssss', N'q', N'是', CAST(0x0000A98F016A50BC AS DateTime))
INSERT [dbo].[zhijianxinxi] ([ID], [zhijianriqi], [qicaimingcheng], [qicaiguige], [cangkuhao], [zhijianjieguo], [beizhu], [issh], [addtime]) VALUES (2, N'2018-11-05', N'木材', N'木材', N'A02', N'111', N'111', N'是', CAST(0x0000A99000F4D490 AS DateTime))
SET IDENTITY_INSERT [dbo].[zhijianxinxi] OFF
/****** Object:  Table [dbo].[youqinglianjie]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[youqinglianjie](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[wangzhanmingcheng] [varchar](50) NULL,
	[wangzhi] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[youqinglianjie] ON
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (1, N'百度', N'http://www.baidu.com', CAST(0x0000A98F00F12033 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (2, N'谷歌', N'http://www.google.cn', CAST(0x0000A98F00F12033 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (3, N'新浪', N'http://www.sina.com', CAST(0x0000A98F00F12033 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (4, N'雅虎', N'http://www.yahoo.cn', CAST(0x0000A98F00F12033 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (5, N'腾讯', N'http://www.qq.com', CAST(0x0000A98F00F12033 AS DateTime))
SET IDENTITY_INSERT [dbo].[youqinglianjie] OFF
/****** Object:  Table [dbo].[yonghuzhuce]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yonghuzhuce](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[yonghuming] [varchar](50) NULL,
	[mima] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[xingbie] [varchar](2) NULL,
	[chushengnianyue] [varchar](50) NULL,
	[QQ] [varchar](50) NULL,
	[youxiang] [varchar](50) NULL,
	[dianhua] [varchar](50) NULL,
	[shenfenzheng] [varchar](50) NULL,
	[touxiang] [varchar](50) NULL,
	[dizhi] [varchar](300) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL,
	[issh] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[yonghuzhuce] ON
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (1, N'555', N'555', N'何升高', N'男', N'2012-07-08', N'429489354', N'gsgs@163.com', N'13186835580', N'52353253262', N'upload/1333961148718.jpg', N'龙港龙翔路1170号', N'mfgmfgmfg', CAST(0x0000A98F00F1203B AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (2, N'leejie', N'leejie', N'李龙', N'男', N'2012-05-21', N'851781333', N'fege@126.com', N'63474337', N'623632153', N'upload/1333963398718.gif', N'温州飞翔路2号', N'htrjrtjr', CAST(0x0000A98F00F1203C AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (3, N'mygod', N'mygod', N'陈德才', N'男', N'2012-02-02', N'870538338', N'gshf@yahoo.com', N'9696556', N'33253636', N'upload/1333963445546.gif', N'杭州四季青广场3号', N'hdhffd', CAST(0x0000A98F00F1203C AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (4, N'xwxxmx', N'xwxxmx', N'吴江', N'女', N'2012-03-14', N'609577616', N'jrjtr@163.com', N'34437754', N'215323262', N'upload/1333963661093.jpg', N'上海浦东区22号', N'gfdhth', CAST(0x0000A98F00F1203C AS DateTime), N'是')
SET IDENTITY_INSERT [dbo].[yonghuzhuce] OFF
/****** Object:  Table [dbo].[xinwentongzhi]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xinwentongzhi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[biaoti] [varchar](300) NULL,
	[leibie] [varchar](50) NULL,
	[neirong] [text] NULL,
	[tianjiaren] [varchar](50) NULL,
	[shouyetupian] [varchar](50) NULL,
	[dianjilv] [int] NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qicaixinxi]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qicaixinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[qicaibianhao] [varchar](50) NULL,
	[qicaimingcheng] [varchar](50) NULL,
	[qicaiguige] [varchar](300) NULL,
	[jiage] [varchar](50) NULL,
	[shuliang] [varchar](50) NULL,
	[cangkuhao] [varchar](50) NULL,
	[gongyingshangmingcheng] [varchar](50) NULL,
	[shengchandi] [varchar](300) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[qicaixinxi] ON
INSERT [dbo].[qicaixinxi] ([ID], [qicaibianhao], [qicaimingcheng], [qicaiguige], [jiage], [shuliang], [cangkuhao], [gongyingshangmingcheng], [shengchandi], [beizhu], [addtime]) VALUES (2, N'11052133554041', N'xx器材', N'xxx', N'20', N'50', N'A01', N'优品公司', N'11', N'11', CAST(0x0000A98F01638804 AS DateTime))
INSERT [dbo].[qicaixinxi] ([ID], [qicaibianhao], [qicaimingcheng], [qicaiguige], [jiage], [shuliang], [cangkuhao], [gongyingshangmingcheng], [shengchandi], [beizhu], [addtime]) VALUES (3, N'11061447391150', N'木材', N'木材', N'300', N'40', N'A02', N'优品公司', N'111', N'111', CAST(0x0000A99000F3F4BC AS DateTime))
SET IDENTITY_INSERT [dbo].[qicaixinxi] OFF
/****** Object:  Table [dbo].[pandiandan]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pandiandan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cangkuhao] [varchar](50) NULL,
	[rongliang] [varchar](50) NULL,
	[pandianriqi] [varchar](50) NULL,
	[pandianjieguo] [text] NULL,
	[beizhu] [varchar](500) NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[pandiandan] ON
INSERT [dbo].[pandiandan] ([ID], [cangkuhao], [rongliang], [pandianriqi], [pandianjieguo], [beizhu], [issh], [addtime]) VALUES (1, N'A01', N'100', N'2018-11-07', N'qqqq', N'q', N'是', CAST(0x0000A99000B2D220 AS DateTime))
INSERT [dbo].[pandiandan] ([ID], [cangkuhao], [rongliang], [pandianriqi], [pandianjieguo], [beizhu], [issh], [addtime]) VALUES (2, N'A02', N'100', N'2018-11-06', N'111', N'111', N'是', CAST(0x0000A99000F50BA4 AS DateTime))
SET IDENTITY_INSERT [dbo].[pandiandan] OFF
/****** Object:  Table [dbo].[liuyanban]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[liuyanban](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cheng] [varchar](50) NULL,
	[xingbie] [varchar](2) NULL,
	[QQ] [varchar](50) NULL,
	[youxiang] [varchar](50) NULL,
	[dianhua] [varchar](50) NULL,
	[neirong] [varchar](500) NULL,
	[addtime] [datetime] NULL,
	[huifuneirong] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[jinhuo]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jinhuo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[qicaibianhao] [varchar](50) NULL,
	[qicaimingcheng] [varchar](50) NULL,
	[qicaiguige] [varchar](50) NULL,
	[gongyingshangmingcheng] [varchar](50) NULL,
	[jinhuoshijian] [varchar](50) NULL,
	[jinhuojiage] [varchar](50) NULL,
	[jinhuoshuliang] [varchar](50) NULL,
	[jinhuojine] [varchar](50) NULL,
	[jinhuoyuan] [varchar](50) NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[jinhuo] ON
INSERT [dbo].[jinhuo] ([ID], [qicaibianhao], [qicaimingcheng], [qicaiguige], [gongyingshangmingcheng], [jinhuoshijian], [jinhuojiage], [jinhuoshuliang], [jinhuojine], [jinhuoyuan], [issh], [addtime]) VALUES (1, N'11052133554041', N'xx器材', N'xxx', N'优品公司', N'2018-10-02', N'12', N'11', N'132.0', N'002', N'是', CAST(0x0000A98F01664D00 AS DateTime))
INSERT [dbo].[jinhuo] ([ID], [qicaibianhao], [qicaimingcheng], [qicaiguige], [gongyingshangmingcheng], [jinhuoshijian], [jinhuojiage], [jinhuoshuliang], [jinhuojine], [jinhuoyuan], [issh], [addtime]) VALUES (2, N'11052133554041', N'xx器材', N'xxx', N'优品公司', N'2018-10-10', N'22', N'45', N'990.0', N'002', N'是', CAST(0x0000A98F0166DD24 AS DateTime))
INSERT [dbo].[jinhuo] ([ID], [qicaibianhao], [qicaimingcheng], [qicaiguige], [gongyingshangmingcheng], [jinhuoshijian], [jinhuojiage], [jinhuoshuliang], [jinhuojine], [jinhuoyuan], [issh], [addtime]) VALUES (3, N'11052133554041', N'xx器材', N'xxx', N'优品公司', N'2018-11-04', N'1', N'1', N'1.0', N'002', N'是', CAST(0x0000A99000BC0B74 AS DateTime))
INSERT [dbo].[jinhuo] ([ID], [qicaibianhao], [qicaimingcheng], [qicaiguige], [gongyingshangmingcheng], [jinhuoshijian], [jinhuojiage], [jinhuoshuliang], [jinhuojine], [jinhuoyuan], [issh], [addtime]) VALUES (4, N'11061447391150', N'木材', N'木材', N'线条', N'2018-11-02', N'200', N'10', N'2000.0', N'005', N'是', CAST(0x0000A99000F468C0 AS DateTime))
INSERT [dbo].[jinhuo] ([ID], [qicaibianhao], [qicaimingcheng], [qicaiguige], [gongyingshangmingcheng], [jinhuoshijian], [jinhuojiage], [jinhuoshuliang], [jinhuojine], [jinhuoyuan], [issh], [addtime]) VALUES (5, N'11052133554041', N'xx器材', N'xxx', N'优品公司', N'2018-11-01', N'30', N'10', N'300.0', N'005', N'是', CAST(0x0000A99000F498CC AS DateTime))
SET IDENTITY_INSERT [dbo].[jinhuo] OFF
/****** Object:  Table [dbo].[gongyingshangxinxi]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gongyingshangxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[gongyingshangmingcheng] [varchar](50) NULL,
	[gongyingleibie] [varchar](50) NULL,
	[dianhua] [varchar](50) NULL,
	[dizhi] [varchar](300) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[gongyingshangxinxi] ON
INSERT [dbo].[gongyingshangxinxi] ([ID], [gongyingshangmingcheng], [gongyingleibie], [dianhua], [dizhi], [beizhu], [addtime]) VALUES (1, N'优品公司', N'普通', N'13486376611', N'11', N'1', CAST(0x0000A98F010B0BAC AS DateTime))
INSERT [dbo].[gongyingshangxinxi] ([ID], [gongyingshangmingcheng], [gongyingleibie], [dianhua], [dizhi], [beizhu], [addtime]) VALUES (2, N'线条', N'普通', N'13486376611', N'111', N'111', CAST(0x0000A99000F43B0C AS DateTime))
SET IDENTITY_INSERT [dbo].[gongyingshangxinxi] OFF
/****** Object:  Table [dbo].[dx]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dx](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[leibie] [varchar](50) NULL,
	[content] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dx] ON
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (1, N'系统公告', N'<P>&nbsp;&nbsp;&nbsp; 欢迎大家登陆我站，我站主要是为广大朋友精心制作的一个系统，希望大家能够在我站获得一个好心情，谢谢！</P>
<P>&nbsp;&nbsp;&nbsp; 自强不息，海纳百川，努力学习！</P>')
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (2, N'系统简介', N'系统简介')
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (3, N'关于我们', N'&nbsp; &nbsp; 本公司坚持走:以质量求生存,以科技求发展,重合同守信用的道路,生产经营得到迅速发展。我们将以优质的产品和最完善的售后服务来真诚与各界朋友开展广泛的合作,共同创造一个美好的未来!<br />  <br />  公司行为准则:忠信仁义，以人为本。 <br />  忠：即忠诚，  包括三重含义：企业忠于国家、忠于民族；企业忠于客户；员工忠于企业。 <br />  信：即诚信，做企业要立足根本道德、信义，要诚实、讲信用。 <br />  仁：即仁爱，上司对下属要仁爱、体贴，同事之间要关怀、友爱。 <br />  义：即大义，公司在与合作伙伴、客户的交往过程中，不做损人利己的事，维护自己利益的前提是不损害他人利益；对民族、社会要共襄义举，要识大义，明是非。 <br />')
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (4, N'联系方式', N'联系人：xxxxxxxx<br />  电话：0000-0000000<br />  手机：010000000000<br />  传真：0000-0000000<br />  邮件：xxxxxxxx@163.com<br />  地址：您公司的地址<br />  网址：http://www.xxxx.com<br />')
SET IDENTITY_INSERT [dbo].[dx] OFF
/****** Object:  Table [dbo].[dingdanxinxi]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dingdanxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[dingdanbianhao] [varchar](50) NULL,
	[jine] [varchar](50) NULL,
	[dingdanneirong] [varchar](500) NULL,
	[caigouyuangonghao] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[shouji] [varchar](50) NULL,
	[beizhu] [varchar](500) NULL,
	[issh] [varchar](2) NULL,
	[iszf] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dingdanxinxi] ON
INSERT [dbo].[dingdanxinxi] ([ID], [dingdanbianhao], [jine], [dingdanneirong], [caigouyuangonghao], [xingming], [shouji], [beizhu], [issh], [iszf], [addtime]) VALUES (7, N'11052146407644', N'1122.0		', N'器材名称：xx器材 进货数量：11 进货金额：132.0器材名称：xx器材 进货数量：45 进货金额：990.0', N'002', N'张三', N'13486736616', N'111', N'是', N'是', CAST(0x0000A98F0166E684 AS DateTime))
INSERT [dbo].[dingdanxinxi] ([ID], [dingdanbianhao], [jine], [dingdanneirong], [caigouyuangonghao], [xingming], [shouji], [beizhu], [issh], [iszf], [addtime]) VALUES (8, N'11061124436786', N'1.0		', N'器材名称：xx器材 进货数量：1 进货金额：1.0', N'002', N'张三', N'13486736616', N'1', N'否', N'否', CAST(0x0000A99000BC1600 AS DateTime))
INSERT [dbo].[dingdanxinxi] ([ID], [dingdanbianhao], [jine], [dingdanneirong], [caigouyuangonghao], [xingming], [shouji], [beizhu], [issh], [iszf], [addtime]) VALUES (9, N'11061450371110', N'2300.0		', N'器材名称：木材 进货数量：10 进货金额：2000.0器材名称：xx器材 进货数量：10 进货金额：300.0', N'005', N'李x', N'13486736616', N'111', N'是', N'是', CAST(0x0000A99000F4A22C AS DateTime))
SET IDENTITY_INSERT [dbo].[dingdanxinxi] OFF
/****** Object:  Table [dbo].[chukujilu]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chukujilu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[qicaibianhao] [varchar](50) NULL,
	[qicaimingcheng] [varchar](50) NULL,
	[qicaiguige] [varchar](50) NULL,
	[jiage] [varchar](50) NULL,
	[shuliang] [varchar](50) NULL,
	[chukushuliang] [varchar](50) NULL,
	[chukuriqi] [varchar](50) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[chukujilu] ON
INSERT [dbo].[chukujilu] ([ID], [qicaibianhao], [qicaimingcheng], [qicaiguige], [jiage], [shuliang], [chukushuliang], [chukuriqi], [beizhu], [addtime]) VALUES (3, N'11052133554041', N'xx器材', N'xxx', N'20', N'56', N'6', N'2018-11-02', N'1', CAST(0x0000A98F016B4800 AS DateTime))
INSERT [dbo].[chukujilu] ([ID], [qicaibianhao], [qicaimingcheng], [qicaiguige], [jiage], [shuliang], [chukushuliang], [chukuriqi], [beizhu], [addtime]) VALUES (4, N'11061447391150', N'木材', N'木材', N'300', N'45', N'5', N'2018-11-06', N'11', CAST(0x0000A99000F408A8 AS DateTime))
SET IDENTITY_INSERT [dbo].[chukujilu] OFF
/****** Object:  Table [dbo].[cangkuyuanxinxi]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cangkuyuanxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cangkuyuangonghao] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[xingbie] [varchar](50) NULL,
	[mima] [varchar](50) NULL,
	[ruzhishijian] [varchar](50) NULL,
	[shenfenzheng] [varchar](300) NULL,
	[zhaopian] [varchar](50) NULL,
	[shouji] [varchar](50) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cangkuyuanxinxi] ON
INSERT [dbo].[cangkuyuanxinxi] ([ID], [cangkuyuangonghao], [xingming], [xingbie], [mima], [ruzhishijian], [shenfenzheng], [zhaopian], [shouji], [beizhu], [addtime]) VALUES (2, N'004', N'张x', N'男', N'004', N'2018-11-01', N'330327199100000000', N'upload/1543218838713.jpg', N'15454676543', N'111', CAST(0x0000A99000F33CC0 AS DateTime))
SET IDENTITY_INSERT [dbo].[cangkuyuanxinxi] OFF
/****** Object:  Table [dbo].[cangkuxinxi]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cangkuxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cangkuhao] [varchar](50) NULL,
	[rongliang] [varchar](50) NULL,
	[shengyurongliang] [varchar](50) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cangkuxinxi] ON
INSERT [dbo].[cangkuxinxi] ([ID], [cangkuhao], [rongliang], [shengyurongliang], [beizhu], [addtime]) VALUES (2, N'A01', N'100', N'50', N'xxx', CAST(0x0000A98F01631E8C AS DateTime))
INSERT [dbo].[cangkuxinxi] ([ID], [cangkuhao], [rongliang], [shengyurongliang], [beizhu], [addtime]) VALUES (3, N'A02', N'100', N'50', N'1', CAST(0x0000A99000F3BC7C AS DateTime))
SET IDENTITY_INSERT [dbo].[cangkuxinxi] OFF
/****** Object:  Table [dbo].[caigouyuanxinxi]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[caigouyuanxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[caigouyuangonghao] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[xingbie] [varchar](50) NULL,
	[mima] [varchar](50) NULL,
	[ruzhishijian] [varchar](50) NULL,
	[shenfenzheng] [varchar](300) NULL,
	[zhaopian] [varchar](50) NULL,
	[shouji] [varchar](50) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[caigouyuanxinxi] ON
INSERT [dbo].[caigouyuanxinxi] ([ID], [caigouyuangonghao], [xingming], [xingbie], [mima], [ruzhishijian], [shenfenzheng], [zhaopian], [shouji], [beizhu], [addtime]) VALUES (3, N'005', N'李x', N'男', N'005', N'2018-11-01', N'330327199100000000', N'upload/1543218821619.gif', N'13486736616', N'111', CAST(0x0000A99000F36498 AS DateTime))
SET IDENTITY_INSERT [dbo].[caigouyuanxinxi] OFF
/****** Object:  Table [dbo].[allusers]    Script Date: 11/27/2018 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[allusers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[pwd] [varchar](50) NULL,
	[cx] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[allusers] ON
INSERT [dbo].[allusers] ([ID], [username], [pwd], [cx], [addtime]) VALUES (1, N'hsg', N'hsg', N'超级管理员', CAST(0x0000A98F00F1201C AS DateTime))
SET IDENTITY_INSERT [dbo].[allusers] OFF
/****** Object:  Default [DF__zhijianyu__addti__7E6CC920]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[zhijianyuanxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__zhijianxin__issh__2C3393D0]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[zhijianxinxi] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__zhijianxi__addti__2D27B809]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[zhijianxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__youqingli__addti__182C9B23]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[youqinglianjie] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__yonghuzhu__addti__1DE57479]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[yonghuzhuce] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__yonghuzhuc__issh__1ED998B2]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[yonghuzhuce] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__xinwenton__tianj__1B0907CE]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[xinwentongzhi] ADD  DEFAULT ('hsg') FOR [tianjiaren]
GO
/****** Object:  Default [DF__xinwenton__addti__1BFD2C07]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[xinwentongzhi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__qicaixinx__addti__03317E3D]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[qicaixinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__pandiandan__issh__2F10007B]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[pandiandan] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__pandianda__addti__300424B4]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[pandiandan] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__liuyanban__addti__20C1E124]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[liuyanban] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__jinhuo__issh__29572725]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[jinhuo] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__jinhuo__addtime__2A4B4B5E]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[jinhuo] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__gongyings__addti__07F6335A]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[gongyingshangxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__dingdanxin__issh__09DE7BCC]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[dingdanxinxi] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__dingdanxin__iszf__0AD2A005]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[dingdanxinxi] ADD  DEFAULT ('否') FOR [iszf]
GO
/****** Object:  Default [DF__dingdanxi__addti__0BC6C43E]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[dingdanxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__chukujilu__addti__276EDEB3]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[chukujilu] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__cangkuyua__addti__0EA330E9]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[cangkuyuanxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__cangkuxin__addti__108B795B]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[cangkuxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__caigouyua__addti__1273C1CD]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[caigouyuanxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__allusers__cx__145C0A3F]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[allusers] ADD  DEFAULT ('普通管理员') FOR [cx]
GO
/****** Object:  Default [DF__allusers__addtim__15502E78]    Script Date: 11/27/2018 14:18:53 ******/
ALTER TABLE [dbo].[allusers] ADD  DEFAULT (getdate()) FOR [addtime]
GO
