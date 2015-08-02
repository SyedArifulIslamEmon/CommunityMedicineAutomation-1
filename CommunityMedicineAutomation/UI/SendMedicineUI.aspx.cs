using CommunityMedicineAutomation.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.UI
{
    public partial class SendMedicineUI : System.Web.UI.Page
    {
        MedicineManager medicineManager=new MedicineManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                districtSendMedicineDropDownList.DataSource = centerManager.GetAllDistrict();
                districtSendMedicineDropDownList.DataTextField = "DistrictName";
                districtSendMedicineDropDownList.DataValueField = "Id";
                districtSendMedicineDropDownList.DataBind();

                selectMedicineDropDownList.DataSource = medicineManager.GetAllMedicines();
                selectMedicineDropDownList.DataTextField = "NameOfMedicine";
                selectMedicineDropDownList.DataValueField = "Id";
                selectMedicineDropDownList.DataBind();
            }

          
        }
        CenterManager centerManager = new CenterManager();

        protected void thanaSendMedicineDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(thanaSendMedicineDropDownList.SelectedValue);

            centerSendMecinieDropDownList.DataSource = centerManager.CenterInThana(id);
            centerSendMecinieDropDownList.DataTextField = "CenterName";
            centerSendMecinieDropDownList.DataValueField = "Id";
            centerSendMecinieDropDownList.DataBind();
        }

  

        protected void districtSendMedicineDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(districtSendMedicineDropDownList.SelectedValue);

            thanaSendMedicineDropDownList.DataSource = centerManager.GetAllThana(id);
            thanaSendMedicineDropDownList.DataTextField = "ThanaName";
            thanaSendMedicineDropDownList.DataValueField = "Id";
            thanaSendMedicineDropDownList.DataBind();
        }
       
        protected void addButton_Click(object sender, EventArgs e)
        {

            saveButton.Visible = true;
            Medicine aMedicine=new Medicine();
            aMedicine.NameOfMedicine = selectMedicineDropDownList.SelectedItem.ToString();
            aMedicine.Quantity = int.Parse(sendMedicineQuantityTextBox.Text);
            MedicineList.Add(aMedicine);
            sendMedicineQuantityTextBox.Text = "";
            sendMedicineGridView.DataSource = MedicineList;
            sendMedicineGridView.DataBind();
        }


        public List<Medicine> MedicineList
        {
            get
            {
                if (!(ViewState["MedicineList"] is List<Medicine>))
                {
                    ViewState["MedicineList"] = new List<Medicine>();
                }

                return (List<Medicine>)ViewState["MedicineList"];
            }
        }

        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            sendMedicineGridView.PageIndex = e.NewPageIndex;
            sendMedicineGridView.DataBind();
        }
        CenterMedicineRelationManager centerMedicineRelationManager = new CenterMedicineRelationManager();
        protected void saveButton_Click(object sender, EventArgs e)
        {
            foreach (var medicine in MedicineList) {
                string nameOfMedicine = medicine.NameOfMedicine;
                int medicineId = medicineManager.GetMedicineId(nameOfMedicine);
                int centerId = int.Parse(centerSendMecinieDropDownList.SelectedValue);
                int newQuantity = medicine.Quantity;
                if (centerMedicineRelationManager.IsMedicineExists(centerId, medicineId))
                {
                    int quantity = centerMedicineRelationManager.GetCenterMedicineQuantity(centerId, medicineId)+newQuantity;

                    centerMedicineRelationManager.UpdateCenterMedicineQuantity(centerId, medicineId, quantity);
                    megLabel.Text = "Medicine has been send!";
                }
                else
                {
                    megLabel.Text = medicineManager.SendMedicine(centerId, medicineId, newQuantity);
                }
            }
            saveButton.Visible = false;
        }
    }
}