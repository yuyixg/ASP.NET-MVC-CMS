using Easy.Web.CMS.Article.Service;
using Microsoft.Practices.ServiceLocation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Easy.CMS.ArticleCMS.Controllers
{
    /// <summary>
    /// 针对其他与新闻相关内容
    /// </summary>
    public class ArticleCMSController : Controller
    {
        [HttpPost]
        public JsonResult Like(int ID)
        {
            var res = new JsonResult();
            var entity = ServiceLocator.Current.GetInstance<IArticleService>().Get(ID);
            if (entity != null)
            {
                if (entity.LikeCounter != null)
                {
                    entity.LikeCounter += 1;
                }
                else
                {
                    entity.LikeCounter = 1;
                }
                ServiceLocator.Current.GetInstance<IArticleService>().Update(entity);
            }
            res.Data = entity.LikeCounter;
            return res;
        }
    }
}
