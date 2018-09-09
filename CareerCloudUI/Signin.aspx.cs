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
                //string sql = @"Select SL.Id
                //          from[JOB_PORTAL_DB].[dbo].[Security_Roles] S
                //         inner join[JOB_PORTAL_DB].[dbo].Security_Logins_Roles SLR on SLR.Role = S.Id
                //          inner join[JOB_PORTAL_DB].[dbo].Security_Logins SL on SL.Id=SLR.Login
                //        where SL.Login= @username and SL.Password= @password";
                string sql = @"Select SL.Id
                          from Security_Logins SL 
                        where SL.Login= @username and SL.Password= @password";


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
                     //Response.Redirect("ApplicantProfile.aspx", false);
                }


                //SqlDataReader dr = cmd.ExecuteReader();
                //DataTable LoginData = new DataTable();
                //LoginData.Load(dr);
                //if (LoginData.Rows[0][0].ToString() == "Applicants")
                //{
                //    Session["id"] = LoginData.Rows[0][1].ToString();
                //    Response.Redirect("ApplicantProfile.aspx", false);
                //}
                //else if (LoginData.Rows[0][0].ToString() == "Recruiters")
                //{

                //    Session["id"] = LoginData.Rows[0][1].ToString();
                //    Response.Redirect("CompanyProfile.aspx", false);
                //}
                //else if (LoginData.Rows[0][0].ToString() == "Administrators")
                //{





            }
            catch (Exception ex)
            {


            }
           
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Response.Redirect("ApplicantProfile.aspx", false);
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Response.Redirect("CompanyProfile.aspx", false);
        }
    }
}