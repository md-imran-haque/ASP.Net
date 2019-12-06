using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Mangement
{
    public partial class Information1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["report"] != null)
            {
                CrystalReportViewer2.ReportSource = (rptInfo)Session["report"];
            }
            else if (Session["report1"] != null)
            {
                CrystalReportViewer2.ReportSource = (DoctorsInfo)Session["report1"];

            }
        }

        protected void btnDoctors_Click(object sender, EventArgs e)
        {
            InformationTableAdapters.tblDoctorsTableAdapter da = new InformationTableAdapters.tblDoctorsTableAdapter();
            Information i = new Information();
            Information.tblDoctorsDataTable dt = (Information.tblDoctorsDataTable)i.Tables["tblDoctors"];
            da.Fill(dt);

            DoctorsInfo rpt = new DoctorsInfo();
            rpt.SetDataSource(i);
            CrystalReportViewer2.ReportSource = rpt;
            Session.Add("report1", rpt);


           
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            InformationTableAdapters.DataTable1TableAdapter da = new InformationTableAdapters.DataTable1TableAdapter();
            Information i = new Information();
            Information.DataTable1DataTable dt = (Information.DataTable1DataTable)i.Tables["DataTable1"];
            da.Fill(dt);

            rptInfo rpt = new rptInfo();
            rpt.SetDataSource(i);
            CrystalReportViewer2.ReportSource = rpt;
            Session.Add("report", rpt);
        }
    }
}