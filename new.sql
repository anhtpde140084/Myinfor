
Create database MyProfile
Go
USE [MyProfile]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 4/13/2021 8:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Img_Front] [varchar](max) NULL,
	[Create_date] [date] NULL,
	[Tag] [nvarchar](100) NULL,
	[Viewer] [int] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InforAcc]    Script Date: 4/13/2021 8:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InforAcc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Birthday] [nvarchar](100) NULL,
	[Age] [int] NULL,
	[Country] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[Email] [nvarchar](max) NULL,
	[Username] [varchar](100) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_InforAcc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([Id], [Title], [Content], [Img_Front], [Create_date], [Tag], [Viewer]) VALUES (1, N'Ajax là gì? Vì sao nên sử dụng Ajax cho web app?', N'<div class="post-content">
<blockquote class="mb-30">
<h6>C&oacute; bao giờ bạn thắc mắc tại sao khi tương t&aacute;c, submit form... m&agrave; trang web đ&oacute; kh&ocirc;ng reload kh&ocirc;ng? C&ugrave;ng m&igrave;nh t&igrave;m hiểu l&yacute; do nh&eacute;!</h6>
</blockquote>
<div class="row justify-content-center"><img src="https://res.cloudinary.com/satellite1012/image/upload/v1610099855/upload_7d4b90c1_03b3_4b9f_add5_4ca4d9f7c6d2_00000081.png" width="948" height="455" /></div>
</div>
<div id="blog-content" class="post-content">
<h2 id="ajax-l&agrave;-g&igrave;"><span id="ajax-la-gi">#Ajax l&agrave; g&igrave;?</span></h2>
<p>Ajax (Asynchronous JavaScript and XML) l&agrave; một kỹ thuật gi&uacute;p cho ứng dụng web bất đồng bộ.</p>
<p>Kỹ thuật n&agrave;y gi&uacute;p bạn c&oacute; thể tạo ra trang web động với nội dung c&oacute; thể thay đổi m&agrave; kh&ocirc;ng cần phải reload trang. Ch&iacute;nh v&igrave; kh&ocirc;ng reload trang, n&ecirc;n gi&uacute;p người d&ugrave;ng sẽ cảm thấy website mượt m&agrave; hơn, ngo&agrave;i ra Ajax c&ograve;n gi&uacute;p tiết kiệm t&agrave;i nguy&ecirc;n mạng.</p>
<p><strong>*</strong><strong>Asynchronous:</strong>&nbsp;Dịch lại l&agrave; bất đồng bộ. Kỹ thuật bất đồng bộ tức l&agrave; chương tr&igrave;nh sẽ xử l&yacute; c&aacute;c h&agrave;m kh&ocirc;ng theo một tr&igrave;nh tự từ tr&ecirc;n xuống. Chương tr&igrave;nh cho tất cả c&aacute;c h&agrave;m được gọi v&agrave;o một stack. H&agrave;m n&agrave;o xong trước th&igrave; trả kết quả trước, kh&ocirc;ng ai phải chờ ai cả.&nbsp;</p>
<p><strong>*JavaScript</strong>:&nbsp;một ng&ocirc;n ngữ lập tr&igrave;nh nổi tiếng. D&ugrave;ng&nbsp;để viết ra kỹ thuật Ajax.</p>
<p>&nbsp;<strong>*XML</strong>: L&agrave; định dạng dữ liệu theo kiểu tag, giống như HTML. Hiện nay c&oacute; 2 kiểu dịnh dạng dữ liệu l&agrave; JSON v&agrave; XML.</p>
<p><strong>Sơ đồ hoạt động:</strong></p>
<p>&nbsp;</p>
<p><img src="https://cnx.org/resources/2bf232950a9cc41bcbdbb7d12bcf50c0d4eb5a30/graphics1.jpg" alt="" width="490" height="219" /></p>
<p><strong>Với m&ocirc; h&igrave;nh th&ocirc;ng thường ( Normal HTTP Request ) :&nbsp;</strong></p>
<ol>
<li>HTTP được gửi từ tr&igrave;nh duyệt l&ecirc;n m&aacute;y chủ.</li>
<li>M&aacute;y chủ nhận, sau đ&oacute; phản truy xuất th&ocirc;ng tin.</li>
<li>Server gửi dữ liệu được y&ecirc;u cầu lại cho tr&igrave;nh duyệt.</li>
<li>Tr&igrave;nh duyệt nhận dữ liệu v&agrave; tải lại trang để hiển thị dữ liệu l&ecirc;n.</li>
</ol>
<p><strong>Với m&ocirc; h&igrave;nh AJAX:</strong></p>
<ol>
<li>Từ tr&igrave;nh duyệt của client, ta c&oacute; một sự kiện để gọi ajax. Khi đ&oacute; javascript sẽ tạo n&ecirc;n một đối tượng XMLHttpRequest.&nbsp;Ở dưới nền, tr&igrave;nh duyệt tạo một y&ecirc;u cầu HTTP gửi l&ecirc;n server.</li>
<li>Khi server nhận được HttpRequest từ đ&oacute; sẽ xử l&yacute; request v&agrave; trả về response cho web.</li>
<li>Tr&igrave;nh duyệt nhận dữ liệu v&agrave; tải lại trang để hiển thị dữ liệu l&ecirc;n. Kh&ocirc;ng cần tải lại to&agrave;n bộ trang..
<p><strong>Ajax l&agrave; một bộ kỹ thuật chứ kh&ocirc;ng phải ng&ocirc;n ngữ lập tr&igrave;nh, n&oacute; bao gồm:&nbsp;</strong></p>
<ul>
<li><strong>HTML/XHTML</strong>&nbsp;l&agrave;m ng&ocirc;n ngữ ch&iacute;nh v&agrave; CSS để tạo phong c&aacute;ch.</li>
<li><strong>The Document Object Model (DOM)</strong>&nbsp;để hiển thị dữ liệu động v&agrave; tạo tương t&aacute;c.</li>
<li><strong>XML</strong>&nbsp;để trao đổi dự liệu nội bộ v&agrave; XSLT để xử l&yacute; n&oacute;. Nhiều lập tr&igrave;nh vi&ecirc;n đ&atilde; thay thế bằng&nbsp;<strong>JSON</strong>&nbsp;v&igrave; n&oacute; gần với JavaScript hơn.</li>
<li><strong>XMLHttpRequest</strong>&nbsp;object để giao tiếp bất đồng bộ.</li>
<li>Cuối c&ugrave;ng,&nbsp;<strong>JavaScript</strong>&nbsp;l&agrave;m ng&ocirc;n ngữ lập tr&igrave;nh để kết nối to&agrave;n bộ c&aacute;c c&ocirc;ng nghệ tr&ecirc;n lại.</li>
</ul>
<p><strong>Lợi &iacute;ch của Ajax:</strong></p>
<p><img src="https://kiemtienblog.com/wp-content/uploads/2020/05/Ajax-780x470.jpg" alt="Kh&aacute;i niệm Ajax l&agrave; g&igrave;? t&igrave;m hiểu chi tiết về Ajax - Kiếm Tiền Blog" /></p>
<ul>
<li>AJAX được sử dụng để thực hiện một callback. Được d&ugrave;ng để thực hiện việc truy xuất dữ liệu hoặc lưu trữ dữ liệu m&agrave; kh&ocirc;ng cần phải reload lại to&agrave;n bộ trang web. Với những server nhỏ th&igrave; việc n&agrave;y cũng tiết kiệm được băng th&ocirc;ng cho ch&uacute;ng ta hơn.</li>
<li>Cần g&igrave; th&igrave; chỉ gửi dữ liệu phần đ&oacute;, load lại 1 phần nhỏ để cập nhật th&ocirc;ng tin chứ kh&ocirc;ng load cả trang. Bằng c&aacute;ch n&agrave;y th&igrave; c&oacute; thể giảm thiểu được tốc độ tải trang gi&uacute;p người d&ugrave;ng c&oacute; trải nghiệm tốt hơn.</li>
<li>Trang web bạn tạo ra cũng sẽ đa dạng v&agrave; động hơn.</li>
</ul>
<p><img alt="" /></p>
<p>V&iacute; dụ thực tế của AJAX:</p>
<p><strong>Đ&aacute;nh gi&aacute; xếp hạng:</strong></p>
<p>&nbsp;Chắc hẳn ai trong c&aacute;c bạn cũng từng mua h&agrave;ng online qua c&aacute;c website shopee, lazada...vv..Vậy c&oacute; khi n&agrave;o bạn từng đ&aacute;nh gi&aacute; sản phẩm (rate star) hoặc b&igrave;nh luận sản phẩm chưa? Cả 2 hoạt động đ&oacute; chắc hẳn sử dụng Ajax. Khi bạn click v&agrave;o n&uacute;t đ&aacute;nh gi&aacute; hay b&igrave;nh luận, website sẽ nhận kết quả nhưng to&agrave;n trang web vẫn kh&ocirc;ng đổi.&nbsp;</p>
<p>&nbsp;</p>
<p><strong>Loading newsfeed tr&ecirc;n Facebook</strong></p>
<p>Nếu c&aacute;c bạn để &yacute;, mỗi lần c&oacute; b&agrave;i viết mới hay tin tức mới, facebook sẽ tự cập nhật&nbsp;news&nbsp;m&agrave; kh&ocirc;ng load lại to&agrave;n bộ trang. Hoặc nếu bạn refresh th&igrave; n&oacute; chỉ load lại mỗi phần tin tức ở center chứ kh&ocirc;ng phải to&agrave;n bộ.&nbsp;</p>
<p>-------------------------------------------------------------------------------------------------------------------------</p>
<p>&nbsp;</p>
<p>AJAX tuy mang lại cho ta nhiều lợi &iacute;ch nhưng kh&ocirc;ng phải c&aacute;i g&igrave; ta cũng sử dụng AJAX được. B&ecirc;n cạnh đ&oacute; n&oacute; cũng c&oacute; mặt hạn chế nhất định của n&oacute;. V&igrave; vậy ch&uacute;ng ta cũng n&ecirc;n c&acirc;n nhắc xem sử dụng thế n&agrave;o? N&ecirc;n sử dụng ở đ&acirc;u cho hợp l&yacute;. Một trang web d&ugrave;ng qu&aacute; nhiều AJAX qu&aacute; cũng kh&ocirc;ng tốt, khi c&oacute; nhiều người d&ugrave;ng như thế sẽ l&agrave;m cho server nhận được qu&aacute; nhiều request c&oacute; thể g&acirc;y chết server. Ta n&ecirc;n sử dụng ở những chức năng nhỏ như l&agrave; v&iacute; dụ tr&ecirc;n, vote b&agrave;i viết, comment, rate, ...</p>
<p>Cảm ơn c&aacute;c bạn đ&atilde; đọc b&agrave;i viết.</p>
</li>
</ol>
</div>', N'https://res.cloudinary.com/satellite1012/image/upload/v1610099855/upload_7d4b90c1_03b3_4b9f_add5_4ca4d9f7c6d2_00000081.png', CAST(N'2021-04-13' AS Date), N'javascript', 29)
INSERT [dbo].[Blog] ([Id], [Title], [Content], [Img_Front], [Create_date], [Tag], [Viewer]) VALUES (2, N'Top những IDE tốt nhất dùng để lập trình JAVA', N'<div class="post-content">
<blockquote class="mb-30">
<h6>M&igrave;nh thấy c&aacute;c bạn hay thắc mắc c&acirc;u hỏi n&agrave;y, m&igrave;nh sẽ t&oacute;m gọn những IDE m&igrave;nh d&ugrave;ng v&agrave; biết, c&ugrave;ng m&igrave;nh t&igrave;m hiểu nh&eacute;.</h6>
</blockquote>
<div class="row justify-content-center"><img src="https://res.cloudinary.com/satellite1012/image/upload/v1609235298/upload_d54d295d_bab3_48fc_8d5b_bf9d6830c390_00000018.png" /></div>
</div>
<div id="blog-content" class="post-content">
<p><strong>Java</strong>&nbsp;l&agrave; một ng&ocirc;n ngữ lập tr&igrave;nh tốt nhất. N&oacute; cực kỳ phổ biến v&agrave; c&oacute; lợi cho sự ph&aacute;t triển l&acirc;u d&agrave;i của Lập tr&igrave;nh vi&ecirc;n từ ứng dụng Desktop, ứng dụng doanh nghiệp, ứng dụng di động đến ứng dụng web.</p>
<p>C&oacute; rất nhiều&nbsp;<strong>IDE</strong>,&nbsp;<strong>Phần mềm lập tr&igrave;nh Java</strong>&nbsp;m&agrave; bạn c&oacute; thể lựa chọn.</p>
<p><img src="https://media.geeksforgeeks.org/wp-content/cdn-uploads/20191129172715/What-Will-Be-The-Best-Java-IDEs-in-2020.png" alt="What Will Be The Best Java IDE''s in 2020? - GeeksforGeeks" width="811" height="478" /></p>
<p>B&agrave;i n&agrave;y m&igrave;nh sẽ chọn ra 5 phần mềm lập tr&igrave;nh Java tốt nhất.<br /><br /></p>
<p>IDE l&agrave; g&igrave;?&nbsp;</p>
<p>IDE viết tắt của (<strong>I</strong>ntegrated&nbsp;<strong>D</strong>evelopment&nbsp;<strong>E</strong>nvironment) l&agrave; một m&ocirc;i trường ph&aacute;t triển t&iacute;ch hợp d&ugrave;ng để viết code. N&oacute; được thiết kế để gi&uacute;p c&aacute;c lập tr&igrave;nh vi&ecirc;n ph&aacute;t triển ứng dụng với một m&ocirc;i trường v&agrave; c&aacute;c c&ocirc;ng cụ cần thiết.</p>
<p>&nbsp;</p>
<p>Một&nbsp;<strong>M&ocirc;i trường ph&aacute;t triển t&iacute;ch hợp</strong>&nbsp;(Integrated Development Environment - Viết tắt l&agrave;&nbsp;<strong>IDE</strong>) l&agrave; một ứng dụng tạo điều kiện đầy đủ để lập tr&igrave;nh.</p>
<p><strong>IDE</strong>&nbsp;t&iacute;ch hợp sẵn tr&igrave;nh bi&ecirc;n dịch hoặc tr&igrave;nh th&ocirc;ng dịch b&ecirc;n trong n&oacute; gi&uacute;p bạn thực thi code trực tiếp khi đang lập tr&igrave;nh ứng dụng.</p>
<p><br />Để lựa chọn IDE hay phần mềm lập tr&igrave;nh Java tốt nhất c&ograve;n phụ thuộc v&agrave;o nhiều thứ như: Ng&ocirc;n ngữ hỗ trợ, Hệ điều h&agrave;nh, Chi ph&iacute; li&ecirc;n quan...<br /><br /><strong>#1 Netbeans: Phần mềm lập tr&igrave;nh java cho người mới.</strong></p>
<p><img src="https://cwiki.apache.org/confluence/download/attachments/67635710/Logo-NetBeans-160401-03.jpg?version=1&amp;modificationDate=1482352437000&amp;api=v2" alt="Confluence Mobile - Apache Software Foundation" width="842" height="269" /></p>
<p><a title="NetBean&nbsp;" href="https://netbeans.org/" target="_blank" rel="noopener"><strong>NetBean</strong></a><a title="NetBean&nbsp;" href="https://netbeans.org/" target="_blank" rel="noopener">&nbsp;</a>l&agrave; một IDE quan trọng nhất của Java. N&oacute; l&agrave; IDE ch&iacute;nh thức của Java 8.<br /><br />NetBeans cho ph&eacute;p c&aacute;c ứng dụng c&oacute; thể được ph&aacute;t triển từ một bộ th&agrave;nh phần gọi l&agrave; Modules. N&oacute; chạy tr&ecirc;n Windows, macOS, Linux....</p>
<h3 id="ưu-điểm-của-netbeans"><strong>Ưu điểm của NetBeans:</strong></h3>
<ul>
<ul>
<ul>
<li>NetBeans l&agrave; một IDE nguồn mở, c&oacute; thể chạy tr&ecirc;n hệ điều h&agrave;nh kh&aacute;c nhau, dễ d&agrave;ng c&agrave;i đặt v&agrave; sử dụng.</li>
<li>NetBeans cũng cho ph&eacute;p c&agrave;i th&ecirc;m c&aacute;c plugin của nh&agrave; ph&aacute;t triển thứ 3.</li>
</ul>
<ul>
<li>Mỗi phi&ecirc;n bản mới của ch&uacute;ng đi k&egrave;m với tr&igrave;nh soạn thảo được cải tiến mới.</li>
<li>Phần soạn thảo Java của NetBeans gi&uacute;p c&aacute;c lập tr&igrave;nh vi&ecirc;n dễ d&agrave;ng t&ugrave;y chỉnh phần mềm, highlighting cả về c&uacute; ph&aacute;p v&agrave; ngữ nghĩa.</li>
<li>Th&ecirc;m c&aacute;c c&ocirc;ng cụ t&aacute;i cấu tr&uacute;c m&atilde;, gỡ lỗi.</li>
<li>Chỉnh sửa m&atilde; nguồn th&ocirc;ng minh, gi&uacute;p tăng hiệu suất l&agrave;m việc.</li>
<li>T&iacute;nh năng t&igrave;m kiếm nhanh QuickSearch trong File Explorer, hỗ trợ tự động bi&ecirc;n dịch,c&aacute;c framework cho website,..</li>
<li>&nbsp;</li>
<li>&nbsp;</li>
<li>&nbsp;</li>
<li><strong>#2 Eclipse: Phần mềm Lập tr&igrave;nh Java được y&ecirc;u th&iacute;ch h&agrave;ng đầu.</strong><br /><strong><img src="https://www.iri.com/blog/wp-content/uploads/2012/06/eclipse-logo-730x350.png" alt="Eclipse: A Brief History - IRI" /></strong><strong><a title="Eclipse&nbsp;" href="https://www.eclipse.org/" target="_blank" rel="noopener">Eclipse</a><a title="Eclipse&nbsp;" href="https://www.eclipse.org/" target="_blank" rel="noopener">&nbsp;</a>l&agrave; một phần mềm đa nền tảng, m&atilde; nguồn mở v&agrave; được ph&acirc;n phối MIỄN PH&Iacute; cho c&aacute;c lập tr&igrave;nh vi&ecirc;n ph&aacute;t triển ứng dụng web.<br /><br /><br />Năm 1998,&nbsp;<a href="https://www.ibm.com/">IBM</a>&nbsp;năm đ&atilde; muốn tạo ra một phần mềm hỗ trợ c&aacute;c lập tr&igrave;nh c&oacute; thể dẫn đầu thị trường.<br /><br /><br />V&agrave; điều đ&oacute; đ&atilde; dẫn đến sự ra đời của Eclipse như l&agrave; một trong những IDE tốt nhất để lập tr&igrave;nh web với Java.<br /><br /><br />Đ&acirc;y l&agrave; một IDE Java chuy&ecirc;n dụng, phổ biến c&oacute; sẵn trong cả phi&ecirc;n bản&nbsp; Desktop v&agrave; Cloud.<br /><br /><br />Phi&ecirc;n bản Cloud của Eclipse c&oacute; t&ecirc;n l&agrave; Eclipse Che v&agrave; n&oacute; cho ph&eacute;p c&aacute;c lập tr&igrave;nh vi&ecirc;n lập tr&igrave;nh ngay tr&ecirc;n c&aacute;c tr&igrave;nh duyệt web.<br /><br /><br />V&agrave; thật th&uacute; vị,&nbsp;Bản th&acirc;n Eclipse l&agrave; một v&iacute; dụ tốt nhất về ứng dụng Java v&igrave; n&oacute; hầu như được viết bằng Java.<br /></strong>
<h3 id="c&aacute;c-ưu-điểm-ch&iacute;nh-của-eclipse-ide"><strong>C&aacute;c ưu điểm ch&iacute;nh của Eclipse IDE:</strong></h3>
</li>
<li>Tạo thuận lợi cho t&iacute;ch hợp liền mạch c&aacute;c c&ocirc;ng cụ b&ecirc;n trong mỗi một v&agrave; xuy&ecirc;n qua nhiều kiểu nội dung v&agrave; c&aacute;c nh&agrave; cung cấp c&ocirc;ng cụ kh&aacute;c nhau.</li>
<li>Hỗ trợ việc x&acirc;y dựng nhiều c&ocirc;ng cụ.</li>
<li>Hỗ trợ một tập hợp kh&ocirc;ng hạn chế c&aacute;c nh&agrave; cung cấp c&ocirc;ng cụ, bao gồm cả c&aacute;c nh&agrave; cung cấp phần mềm độc lập (ISV).</li>
<li>Hỗ trợ c&aacute;c c&ocirc;ng cụ thao t&aacute;c c&aacute;c kiểu nội dung bất kỳ (bao gồm cả HTML, Java, C, JSP, EJB, XML, v&agrave; GIF).</li>
<li>Hỗ trợ cả m&ocirc;i trường ph&aacute;t triển ứng dụng GUI lẫn kh&ocirc;ng dựa tr&ecirc;n GUI.</li>
<li>Chạy tr&ecirc;n nhiều hệ điều h&agrave;nh, bao gồm cả Windows v&agrave; Linux.</li>
<li>Lợi dụng t&iacute;nh phổ biến của ng&ocirc;n ngữ Java để viết c&aacute;c c&ocirc;ng cụ.</li>
<li>Do sử dụng SWT/JFace n&ecirc;n c&oacute; lẽ load nhanh hơn</li>
</ul>
</ul>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>
<h2 id="3-intellij-idea-phần-mềm-lập-tr&igrave;nh-java-phổ-biến-nhất"><strong>#3: IntelliJ IDEA: Phần mềm lập tr&igrave;nh Java phổ biến nhất</strong></h2>
<p>&nbsp;</p>
<p><strong><a title="IntelliJ IDEA" href="https://www.jetbrains.com/idea/download/" target="_blank" rel="noopener">IntelliJ IDEA</a>&nbsp;cũng được coi như l&agrave; một trong những tốt nhất của Java.</strong></p>
<p><strong><img src="https://ossmalta.eu/wp-content/uploads/2019/07/intellij-idea-ue-icon.png" alt="IntelliJ IDEA 2019.2 Released with Java 13 (Preview) Support | Open Source  Society Malta" width="322" height="329" /></strong></p>
<p><strong>N&oacute; c&oacute; sẵn trong 2 phi&ecirc;n bản kh&aacute;c nhau, một phi&ecirc;n bản cộng đồng (Community Edition) do Apache 2 cấp ph&eacute;p v&agrave; phi&ecirc;n bản thương mại Utimate, đ&acirc;y l&agrave; một phi&ecirc;n bản trả tiền với hỗ trợ đầy đủ hơn.<br /><br /><br />Để cho ph&eacute;p c&aacute;c lập tr&igrave;nh vi&ecirc;n đi s&acirc;u hơn v&agrave;o lập tr&igrave;nh Java, IntelliJ IDEA cung cấp c&aacute;c t&iacute;nh năng như t&aacute;i cấu tr&uacute;c ng&ocirc;n ngữ, ph&acirc;n t&iacute;ch luồng dữ liệu.<br /><br /><br /></strong></p>
<h3 id="phi&ecirc;n-bản-community"><strong>Phi&ecirc;n bản Community</strong></h3>
<p><strong><br /><br />Bản Community, l&agrave; một IDE m&atilde; nguồn mở được d&agrave;nh cho JVM (<a href="https://niithanoi.edu.vn/hieu-ngay-may-ao-java-jvm-va-kien-truc-cua-may-ao-java.html">M&aacute;y Ảo Java</a>) v&agrave; ph&aacute;t triển Android.<br /><br /><br />N&oacute; hỗ trợ Java, Kotlin, Groovy, Scala, Maven, Gradle, SBT, Git, SVN, Mercurial, CVS v&agrave; TFS.<br /><br /><br /></strong></p>
<h3 id="phi&ecirc;n-bản-ultimate"><strong>Phi&ecirc;n bản Ultimate</strong></h3>
<p><strong><br /><br />Phi&ecirc;n bản Ultimate l&agrave; d&agrave;nh cho ph&aacute;t triển web v&agrave; ph&aacute;t triển ứng dụng doanh nghiệp v&agrave; cũng c&oacute; thể hỗ trợ Perforce (Một hệ thống kiểm so&aacute;t phi&ecirc;n bản kh&aacute;c tương tự Git, GitHub)<br /><br /><br />N&oacute; hỗ trợ JavaScript v&agrave; TypeScript,&nbsp;<a href="https://niithanoi.edu.vn/j2ee-la-gi.html">Java EE</a>, Spring, GWT, Vaadin, Play, Grails v&agrave; c&aacute;c framework kh&aacute;c.<br /><br /><br />IntelliJ IDEIA cũng hỗ trợ c&aacute;c c&ocirc;ng cụ cơ sở dữ liệu v&agrave; SQL.</strong></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<h2 id="4-jdeveloper"><strong>#4: JDeveloper</strong></h2>
<p><strong><img src="https://comparecamp.com/media/uploads/2019/03/Oracle-JDeveloper-logo-1.png" alt="Oracle-JDeveloper-logo-1 | CompareCamp.com" /></strong></p>
<p><strong><a title="JDeveloper&nbsp;" href="https://www.oracle.com/application-development/technologies/jdeveloper.html" target="_blank" rel="noopener">JDeveloper&nbsp;</a>cũng l&agrave; một Java IDE miễn ph&iacute; được ph&aacute;t triển bởi Oracle.<br /><br /><br /></strong></p>
<h3 id="t&iacute;nh-năng-của-jdeveloper"><strong>T&iacute;nh năng của JDeveloper:</strong></h3>
<p><strong>&nbsp;</strong></p>
<ul>
<ul>
<ul>
<li>JDeveloper gi&uacute;p đơn giản h&oacute;a việc ph&aacute;t triển c&aacute;c ứng dụng dựa tr&ecirc;n Java bằng c&aacute;ch giải quyết từng bước trong v&ograve;ng đời của ứng dụng.</li>
</ul>
<ul>
<li>N&oacute; chủ yếu cung cấp một framework ph&aacute;t triển t&iacute;ch hợp với nhiều t&iacute;nh năng v&agrave; một số c&ocirc;ng cụ ph&aacute;t triển trực quan.</li>
</ul>
<ul>
<li>JDeveloper n&agrave;y c&oacute; khả năng t&iacute;ch hợp với&nbsp;Oracle Application Development Framework&nbsp;(Oracle ADF) để đơn giản h&oacute;a hơn nữa việc ph&aacute;t triển ứng dụng.</li>
</ul>
<ul>
<li>Ngo&agrave;i Java, JDeveloper cũng c&oacute; thể được sử dụng để ph&aacute;t triển c&aacute;c ứng dụng bằng HTML, JavaScript, PHP, SQL v&agrave; XML.</li>
</ul>
</ul>
</ul>
<p>&nbsp;</p>
<ul>
<ul>
<ul>
<li>N&oacute; cũng bao gồm to&agrave;n bộ v&ograve;ng đời ph&aacute;t triển: Lập tr&igrave;nh, Thiết kế, Gỡ lỗi, Tối ưu h&oacute;a, Định h&igrave;nh v&agrave; Triển khai.</li>
</ul>
</ul>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>
<h2 id="5-bluej-java-ide-d&agrave;nh-cho-học-tập-h&agrave;ng-đầu"><strong>#5: BlueJ: Java IDE d&agrave;nh cho học tập h&agrave;ng đầu</strong></h2>
<p>&nbsp;</p>
<p><img src="https://0701.static.prezi.com/preview/v2/t622kxkstcdz4xmhucqim5iish6jc3sachvcdoaizecfr3dnitcq_3_0.png" alt="What is BlueJ? by Projekttage Montana" /></p>
<p><a title="BlueJ" href="https://www.bluej.org/" target="_blank" rel="noopener">BlueJ&nbsp;</a>l&agrave; Java IDE được ph&aacute;t triển cho mục đ&iacute;ch gi&aacute;o dục. N&oacute; tỏ ra ph&ugrave; hợp trong c&aacute;c dự &aacute;n phần mềm c&oacute; quy m&ocirc; nhỏ.<br /><br /><br />BlueJ hiện đang được sử dụng rộng r&atilde;i bởi c&aacute;c lập tr&igrave;nh vi&ecirc;n Java tr&ecirc;n to&agrave;n thế giới.<br /><br /><br /></p>
<h3 id="t&iacute;nh-năng-h&agrave;ng-đầu-của-bluej"><strong>T&iacute;nh năng h&agrave;ng đầu của BlueJ:</strong></h3>
<p><br /><br /></p>
<ul>
<ul>
<ul>
<li>C&oacute; giao diện tương t&aacute;c kh&ocirc;ng lộn xộn, dễ sử dụng v&agrave; kiểm thử.</li>
</ul>
<ul>
<li>Ph&ugrave; hợp cho người mới bắt đầu học lập tr&igrave;nh Java.</li>
</ul>
<ul>
<li>Sử dụng c&aacute;c box để thể hiện c&aacute;c class.</li>
</ul>
<ul>
<li>Đa nền tảng</li>
</ul>
<ul>
<li>Dễ d&agrave;ng kiểm tra object value, gọi c&aacute;c phương thức tr&ecirc;n c&aacute;c đối tượng v&agrave; truyền c&aacute;c đối tượng l&agrave;m tham số.</li>
</ul>
<ul>
<li>N&oacute; đi k&egrave;m với một tr&igrave;nh soạn thảo cho ph&eacute;p c&aacute;c lập tr&igrave;nh vi&ecirc;n qu&eacute;t m&atilde; trực quan, gi&uacute;p tạo c&aacute;c đối tượng động, kiểm tra ch&uacute;ng.</li>
</ul>
<ul>
<li>Bạn c&oacute; thể gọi m&atilde; Java chỉ bằng c&aacute;ch g&otilde; đơn giản m&agrave; kh&ocirc;ng cần bi&ecirc;n dịch.</li>
</ul>
</ul>
</ul>
<p><br />Ngo&agrave;i ra, BlueJ tăng tốc ph&aacute;t triển ứng dụng Java bằng c&aacute;ch cung cấp một loạt c&aacute;c t&iacute;nh năng mạnh mẽ.</p>
<p>&nbsp;</p>
<h2 id="ide-phần-mềm-lập-tr&igrave;nh-java-n&agrave;o-tốt-nhất"><strong>IDE, Phần mềm lập tr&igrave;nh Java n&agrave;o tốt nhất?</strong></h2>
<p><br /><br />Nếu m&agrave; để chọn ra 1&nbsp;<strong>Phần mềm lập tr&igrave;nh Java tốt nhất</strong>&nbsp;th&igrave; m&igrave;nh kh&ocirc;ng thể.<br /><br /><br />Theo kinh nghiệm c&aacute; nh&acirc;n th&igrave; m&igrave;nh th&iacute;ch sử dụng&nbsp;<strong>Eclipse</strong>&nbsp;nhất.<br /><br /><br /><strong>IntelliJ IDEA</strong>&nbsp;cũng rất tốt, nhưng nếu c&ocirc;ng ty mua bản quyền IntelliJ IDEA th&igrave; sẽ d&ugrave;ng, kh&ocirc;ng th&igrave; th&ocirc;i, hoặc nếu bạn l&agrave; sinh vi&ecirc;n th&igrave; cũng c&oacute; thể s&agrave;i free bằng mail đu&ocirc;i @edu =)).<br /><br /><br />Ngo&agrave;i ra, theo m&igrave;nh, nếu bạn mới bắt đầu học lập tr&igrave;nh Java th&igrave; n&ecirc;n sử dụng&nbsp;<strong>NetBeans</strong>, n&oacute; vừa đơn giản vừa gi&uacute;p bạn tập trung.</p>
<p>&nbsp;</p>
<p>Cảm ơn c&aacute;c bạn đ&atilde; đọc.</p>
<p>(Lưu &yacute;: C&aacute;c thứ tự tr&ecirc;n kh&ocirc;ng phải l&agrave; sắp xếp thứ hạng)</p>
<p>&nbsp;</p>
<p>*Nguồn:&nbsp;&nbsp;<a href="https://insights.stackoverflow.com/survey/2019#technology">Stack Overflow servey</a></p>
</div>', N'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20191129172715/What-Will-Be-The-Best-Java-IDEs-in-2020.png', CAST(N'2021-04-09' AS Date), N'java', NULL)
INSERT [dbo].[Blog] ([Id], [Title], [Content], [Img_Front], [Create_date], [Tag], [Viewer]) VALUES (3, N'Top những IDE tốt nhất dùng để lập trình JAVA', N'a', N'https://res.cloudinary.com/satellite1012/image/upload/v1610099855/upload_7d4b90c1_03b3_4b9f_add5_4ca4d9f7c6d2_00000081.png', CAST(N'2021-04-09' AS Date), N'a', NULL)
INSERT [dbo].[Blog] ([Id], [Title], [Content], [Img_Front], [Create_date], [Tag], [Viewer]) VALUES (4, N'Top những IDE tốt nhất dùng để lập trình JAVA', N'a', N'https://res.cloudinary.com/satellite1012/image/upload/v1610099855/upload_7d4b90c1_03b3_4b9f_add5_4ca4d9f7c6d2_00000081.png', CAST(N'2021-04-09' AS Date), N'a', NULL)
INSERT [dbo].[Blog] ([Id], [Title], [Content], [Img_Front], [Create_date], [Tag], [Viewer]) VALUES (5, N'Top những IDE tốt nhất dùng để lập trình JAVA', N'a', N'https://res.cloudinary.com/satellite1012/image/upload/v1610099855/upload_7d4b90c1_03b3_4b9f_add5_4ca4d9f7c6d2_00000081.png', CAST(N'2021-04-09' AS Date), N'a', NULL)
INSERT [dbo].[Blog] ([Id], [Title], [Content], [Img_Front], [Create_date], [Tag], [Viewer]) VALUES (6, N'Top những IDE tốt nhất dùng để lập trình JAVA', N'a', N'https://res.cloudinary.com/satellite1012/image/upload/v1610099855/upload_7d4b90c1_03b3_4b9f_add5_4ca4d9f7c6d2_00000081.png', CAST(N'2021-04-09' AS Date), N'a', NULL)
INSERT [dbo].[Blog] ([Id], [Title], [Content], [Img_Front], [Create_date], [Tag], [Viewer]) VALUES (8, N'Top những IDE tốt nhất dùng để lập trình JAVA', N'a', N'https://res.cloudinary.com/satellite1012/image/upload/v1610099855/upload_7d4b90c1_03b3_4b9f_add5_4ca4d9f7c6d2_00000081.png', CAST(N'2021-04-09' AS Date), N'a', NULL)
INSERT [dbo].[Blog] ([Id], [Title], [Content], [Img_Front], [Create_date], [Tag], [Viewer]) VALUES (9, N'Top những IDE tốt nhất dùng để lập trình JAVA', N'a', N'https://res.cloudinary.com/satellite1012/image/upload/v1610099855/upload_7d4b90c1_03b3_4b9f_add5_4ca4d9f7c6d2_00000081.png', CAST(N'2021-04-09' AS Date), N'a', 5)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[InforAcc] ON 

INSERT [dbo].[InforAcc] ([Id], [Name], [Birthday], [Age], [Country], [City], [Email], [Username], [Password]) VALUES (1, N'Trần Phi Anh', N'01 January 2000', 21, N'Việt Nam', N'Đà Nẵng', N'tranphianh1518@gmail.com', N'tranphianh', N'anhanh11')
SET IDENTITY_INSERT [dbo].[InforAcc] OFF
GO
