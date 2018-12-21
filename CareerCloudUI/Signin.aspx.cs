using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerCloudUI
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            SqlConnection conn;
            try
            {
              
                string sql = @"SELECT S.Id
                               FROM Security_Logins S 
                               WHERE S.Login= @username AND
                               S.Password= @password";


                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["JOB_PORTAL_DBConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand(sql, conn);

                SqlParameter user = new SqlParameter();
                user.ParameterName = "@username";
                user.Value = LoginUserControl._username;
                cmd.Parameters.Add(user);

                SqlParameter pass = new SqlParameter();
                pass.ParameterName = "@password";
                pass.Value = LoginUserControl._password;
                cmd.Parameters.Add(pass);

                conn.Open();
                var id = cmd.ExecuteScalar();
                if (id !=null)
                {
                    Session["Applicant"] = id;
                    Response.Redirect("ApplicantProfile.aspx", false);

                }
            }
            catch (Exception ex)
            {


            }
           
        }

        //protected void RadioButtonRecruiter_CheckedChanged(object sender, EventArgs e)
        //{
        //    Response.Redirect("CompanyProfile.aspx", false);
        //}

        //protected void RadioButtonJobseeker_CheckedChanged(object sender, EventArgs e)
        //{
        //    Response.Redirect("ApplicantProfile.aspx", false);
        //}
    }
}