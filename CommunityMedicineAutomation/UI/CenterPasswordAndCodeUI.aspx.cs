using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CommunityMedicineAutomation.UI
{
    public partial class CenterPasswordAndCodeUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            centerNameLabel.Text = Session["centerName"].ToString();
            centerCodeLabel.Text = Session["centerCode"].ToString();
            passwordLabel.Text = Session["password"].ToString();
        }
        
    }
}