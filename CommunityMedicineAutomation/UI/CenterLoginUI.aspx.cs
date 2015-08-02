using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityMedicineAutomation.BLL;
using CommunityMedicineAutomation.DAL;


namespace CommunityMedicineAutomation.UI
{
    public partial class CenterLoginUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        CenterManager centerManager = new CenterManager();
        protected void loginButton_Click(object sender, EventArgs e)
        {
            string centerCode = centerCodeTextBox.Text;
            string password = passwordTextBox.Text;
            string enPassword = EncryptSHA512Managed(password);
            if (centerManager.IsCenterCodeAndPasswordExists(centerCode, enPassword))
            {
                Session["CenterId"] = centerManager.GetCenterId();
                int centerId = centerManager.GetCenterId();
                int thanaId = centerManager.GetThanaId(centerId);
                Session["DistrictId"] = centerManager.GetDistrictId(thanaId);
                Response.Redirect("HomeCenter.aspx");
            }
            else
            {
                megLabel.Text = "Wrong centercode and password!";
            }


        }
        public static string EncryptSHA512Managed(string password)
        {
            UnicodeEncoding uEncode = new UnicodeEncoding();
            byte[] bytPassword = uEncode.GetBytes(password);
            SHA512Managed sha = new SHA512Managed();
            byte[] hash = sha.ComputeHash(bytPassword);
            return Convert.ToBase64String(hash);
        }
       
    }
}