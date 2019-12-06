using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hospital_Mangement.Models;

namespace Hospital_Mangement.Members
{
    /// <summary>
    /// Summary description for DbImageHandler
    /// </summary>
    public class DbImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request.QueryString["id"];
            DoctorDbContext db = new DoctorDbContext();
            var pr = db.tblDoctors.AsEnumerable().First(p => p.DoctorId == int.Parse(id));
            context.Response.BinaryWrite(pr.DoctorPicture);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}