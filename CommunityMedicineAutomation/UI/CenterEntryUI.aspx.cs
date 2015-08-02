using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityMedicineAutomation.BLL;
using System.Security.Cryptography;
using System.Text;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.UI
{
    public partial class CenterEntryUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDistrictDropDown();
            
        }
        CenterManager centerManager=new CenterManager();
        public void LoadDistrictDropDown()
        {
            if (!IsPostBack)
            {
                districtCenterDropDownList.DataSource = centerManager.GetAllDistrict();
                districtCenterDropDownList.DataTextField = "DistrictName";
                districtCenterDropDownList.DataValueField = "Id";
                districtCenterDropDownList.DataBind();
               
            }
        }

       

        protected void districtCenterDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

            int id = int.Parse(districtCenterDropDownList.SelectedValue);

            thanaCenterDropDownList.DataSource = centerManager.GetAllThana(id);
            thanaCenterDropDownList.DataTextField = "ThanaName";
            thanaCenterDropDownList.DataValueField = "Id";
            thanaCenterDropDownList.DataBind();
            
        }

        public string CreatePassword()
        {

            var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            var random = new Random();
            var result = new string(
                Enumerable.Repeat(chars, 8)
                          .Select(s => s[random.Next(s.Length)])
                          .ToArray());

            return result;
        }
        public static string EncryptSHA512Managed(string password)
        {
            UnicodeEncoding uEncode = new UnicodeEncoding();
            byte[] bytPassword = uEncode.GetBytes(password);
            SHA512Managed sha = new SHA512Managed();
            byte[] hash = sha.ComputeHash(bytPassword);
            return Convert.ToBase64String(hash);
        }
       

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Center aCenter = new Center();
            aCenter.CenterName = centerNameTextBox.Text;
            if (centerManager.IsCenterNameExists(aCenter))
            {
                megLabel.Text = "Center name already exists!";
            }
            else
            {
                int thanaId = int.Parse(thanaCenterDropDownList.SelectedValue);
                string newPassword = CreatePassword();
                string password = EncryptSHA512Managed(newPassword);
                int centerCount = centerManager.CenterCountInThana(thanaId) + 1;
                string centerCode = CreateCenterCode(thanaCenterDropDownList.SelectedItem.ToString(), centerCount);
                Session["centerName"] = aCenter.CenterName;
                Session["centerCode"] = centerCode;
                Session["password"] = newPassword;
                megLabel.Text = centerManager.SaveCenter(aCenter, thanaId, centerCode, password);
                Response.Redirect("CenterPasswordAndCodeUI.aspx");
               
            }
        }
        public string CreateCenterCode(string thana, int count) {

            return thana + "-" + "CEN" + "-" + count;
        }
    }
}