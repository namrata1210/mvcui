using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerCloudUI
{
    public partial class LoginUserControl : System.Web.UI.UserControl
    {
        public string _username { get; set; }
        public string _password { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            _username = txtUsername.Text.Trim();
            _password = txtPassword.Text.Trim();
        }
    }
}