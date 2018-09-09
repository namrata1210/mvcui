using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerCloudUI
{
    public partial class AppliedJobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Session["Applicant"].ToString();
            //Label2.Text = "262601DB-BF59-7FEB-E0FB-E09970CDB856";
        }
    }
}