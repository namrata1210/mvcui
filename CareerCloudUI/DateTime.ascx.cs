using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerCloudUI
{
    public partial class DateTime : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
    }

        protected void Label1_DataBinding(object sender, EventArgs e)
        {
            Label1.Text = DateTime.now.tosting();
        }
    }