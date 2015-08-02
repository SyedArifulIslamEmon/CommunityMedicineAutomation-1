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
    public partial class DoctorEntryUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DoctorManager doctorManager = new DoctorManager();
        protected void saveButton_Click(object sender, EventArgs e)
        {
            Doctor aDoctor = new Doctor();
            aDoctor.DoctorName = doctorNameTextBox.Text;
            aDoctor.Degree = degreeTextBox.Text;
            aDoctor.Specialization = specializationTextBox.Text;
            if (doctorManager.IsDoctorExists(aDoctor))
            {
                mesLabel.Text = "";
                errorMegLabel.Text = "This doctor name already exists!";
            }
            else
            {
                errorMegLabel.Text = "";
                int centerId = int.Parse(Session["centerId"].ToString());
                mesLabel.Text = doctorManager.SaveDoctor(aDoctor, centerId);
                doctorNameTextBox.Text = "";
                degreeTextBox.Text = "";
                specializationTextBox.Text = "";
            }
        }
    }
}