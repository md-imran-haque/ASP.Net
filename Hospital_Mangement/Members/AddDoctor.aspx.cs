using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hospital_Mangement.Models;
using System.IO;

namespace Hospital_Mangement.Members
{
    public partial class AddDoctor : System.Web.UI.Page
    {
        DoctorDbContext db = new DoctorDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            tblDoctor p = new tblDoctor { DoctorName = txtName.Text, Mobile = txtMobile.Text, Email = txtEmail.Text, Gender = RadioButtonList1.SelectedValue, DateOfBirth = Convert.ToDateTime(txtDateOfBirth.Text), DoctorCharge = Convert.ToInt32(txtCharge.Text), CategoryId = Convert.ToInt32(DropDownList1.SelectedValue) };
            if (pPicture.HasFile)
            {
                p.DoctorPicture = pPicture.FileBytes;
                if (pPicture.PostedFile.ContentLength>0)
                {
                    string path = Server.MapPath("~/Images/") + pPicture.PostedFile.FileName;
                    pPicture.PostedFile.SaveAs(path);
                }
            }
            db.tblDoctors.Add(p);
            db.SaveChanges();
            txtName.Text = "";
            txtMobile.Text = "";
            txtEmail.Text = "";
            txtDateOfBirth.Text = "";
            txtCharge.Text = "";
            Response.Redirect("Doctors.aspx");
        }
        private System.Drawing.Image FormByteArray(byte[] imgBytes)
        {
            MemoryStream ms = new MemoryStream();
            ms.Write(imgBytes, 0, imgBytes.Length);
            System.Drawing.Image img = System.Drawing.Image.FromStream(ms);
            return img;
        }
    }
}