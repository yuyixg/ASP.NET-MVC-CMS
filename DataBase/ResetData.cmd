@echo off
REM: ��������ĸ���ʵ������޸�������Ϣ��
set server=loaclhost
set dataBase=ZKEACMS
set dbUserId=sa
set dbPassword=1qaz@qwer
@echo -----------------------------------------------------------------------------
@echo *** ��ӭʹ�� ZKEACMS***
@echo -----------------------------------------------------------------------------
@echo ���и������ʼ�� ZKEACMS ���ݿ�����ݡ�
@echo �ڿ�ʼ֮ǰ����������ĸ���ʵ������޸�������Ϣ�����ü��´�����ļ���
@echo -----------------------------------------------------------------------------
@echo ������˶�������Ϣ��ȷ����ȷ��
@echo -----------------------------------------------------------------------------
@echo ���ݿ������: %server%
@echo ���ݿ�����: %dataBase%
@echo ��¼��: %dbUserId%
@echo ����: %dbPassword%
@echo -----------------------------------------------------------------------------
@pause
@echo ClearData...
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.Users.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.Language.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.ImageWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.VideoWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.ScriptWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.SectionContentParagraph.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.SectionContentImage.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.SectionContentTitle.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.SectionContentVideo.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.SectionContentCallToAction.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.SectionContent.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.SectionGroup.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.SectionWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.NavigationWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.ProductListWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.ProductDetailWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.ProductCategoryWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.HtmlWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.CarouselWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.ArticleTypeWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.ArticleTopWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.ArticleSummaryWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.ArticleListWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.ArticleDetailWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.CMS_WidgetBase.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.Navigation.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.CMS_Theme.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.CMS_Page.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.CMS_Media.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.CMS_WidgetTemplate.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.CMS_Zone.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.CMS_LayoutHtml.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.CMS_Layout.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.DataDictionary.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.Product.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.ProductCategory.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.CarouselItem.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.Carousel.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.Article.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "ClearData\dbo.ArticleType.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors

@echo InitailData...
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.ArticleType.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.Article.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.Carousel.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.CarouselItem.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.ProductCategory.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.Product.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.DataDictionary.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.CMS_Layout.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.CMS_LayoutHtml.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.CMS_Zone.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.CMS_WidgetTemplate.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.CMS_Media.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.CMS_Page.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.CMS_Theme.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.Navigation.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.CMS_WidgetBase.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.ArticleDetailWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.ArticleListWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.ArticleSummaryWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.ArticleTopWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.ArticleTypeWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.CarouselWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.HtmlWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.ProductCategoryWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.ProductDetailWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.ProductListWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.NavigationWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.SectionWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.SectionGroup.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.SectionContent.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.SectionContentCallToAction.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.SectionContentTitle.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.SectionContentVideo.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.SectionContentImage.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.SectionContentParagraph.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.ScriptWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.VideoWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.ImageWidget.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.Language.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
sqlcmd -S %server% -d %dataBase% -U %dbUserId% -P %dbPassword% -b -i "InitialData\dbo.Users.Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors

@echo -----------------------------------------------------------------------------
@echo ���ݳ�ʼ���ɹ���
goto done

:errors
@echo -----------------------------------------------------------------------------
@echo ���棬�����ݿⴴ�������У������˴���
goto done
:done
@pause