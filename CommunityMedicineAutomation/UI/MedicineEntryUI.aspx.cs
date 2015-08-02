using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityMedicineAutomation.BLL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.UI
{
    public partial class MedicineEntryUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            medicineEntryGridView.DataSource = medicineManager.GetAllMedicines();
            medicineEntryGridView.DataBind();
        }

        MedicineManager medicineManager=new MedicineManager();
        protected void saveButton_Click(object sender, EventArgs e)
        {
            Medicine aMedicine=new Medicine();

            aMedicine.NameOfMedicine = medicineEntryTextBox.Text;
            if (medicineManager.IsMedinineExists(aMedicine))
            {
                msgLabel.Text = "";
                wmegLabel.Text = "This Medicine is already exists!";
            }
            else
            {
                wmegLabel.Text = "";
                msgLabel.Text = medicineManager.SaveMedicine(aMedicine);
                medicineEntryTextBox.Text = "";
                medicineEntryGridView.DataSource = medicineManager.GetAllMedicines();
                medicineEntryGridView.DataBind();
            }

        }

        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            medicineEntryGridView.PageIndex = e.NewPageIndex;
            medicineEntryGridView.DataBind();
        }
    }
}