using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerCloudUI
{
    public partial class ApplicantProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["Applicant"].ToString(); 
        }

        protected void FormView1_DataBound(object sender, EventArgs e)
        {
            if (FormView1.DataItemCount == 0)
                FormView1.ChangeMode(FormViewMode.Insert);
            else
                FormView1.ChangeMode(FormViewMode.Edit);
        }
    }
}