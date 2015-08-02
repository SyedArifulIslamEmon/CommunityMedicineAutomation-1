using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;
using CommunityMedicineAutomation.BLL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.UI
{
    public partial class ReportUI : System.Web.UI.Page
    {
        CenterManager centerManager = new CenterManager();
        TreatmentManager treatmentManager = new TreatmentManager();
        PatientManager patientManager = new PatientManager();
        DiseaseManager diseaseManager = new DiseaseManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                districtDropDownList.DataSource = centerManager.GetAllDistrict();
                districtDropDownList.DataTextField = "DistrictName";
                districtDropDownList.DataValueField = "Id";
                districtDropDownList.DataBind();
            }

        }

        protected void showReportButton_Click(object sender, EventArgs e)
        {
            string dateFrom = Request.Form["dateFrom"];
            string dateTo = Request.Form["dateTo"];

            int yearFrom = int.Parse(dateFrom.Substring(0, 4));
            int monthFrom = int.Parse(dateFrom.Substring(5, 2));
            int dayFrom = int.Parse(dateFrom.Substring(8, 2));


            int monthTo = int.Parse(dateTo.Substring(5, 2));
            int dayTo = int.Parse(dateTo.Substring(8, 2));
            int yearTo = int.Parse(dateTo.Substring(0, 4));

            List<int> patientIdList = new List<int>();
            if (yearTo < yearFrom)
            {
                megLabel.Text = "Incorrect date formet!";
            }
            else if (yearFrom == yearTo && monthTo < monthFrom)
            {
                megLabel.Text = "Incorrect date formet!";
            }
            else if (yearFrom == yearTo && monthTo == monthFrom && dayTo < dayFrom)
            {
                megLabel.Text = "Incorrect date formet!";
            }
            else
            {
                megLabel.Text = "";
                for (int i = dayFrom; ; i++)
                {
                    if (yearTo == yearFrom && monthTo == monthFrom && i == dayTo)
                    {
                        string date2 = yearFrom + "-" + monthFrom + "-" + i;
                        int patient2 = treatmentManager.GetPatientId(date2);
                        patientIdList.Add(patient2);
                        break;
                    }
                    string date =yearFrom + "-" + monthFrom + "-" + i;
                    int patient = treatmentManager.GetPatientId(date);
                    patientIdList.Add(patient);
                    if (i == 31 && monthFrom != 12)
                    {
                        monthFrom++;
                        i = 0;
                    }
                    else if (monthFrom == 12 && dayFrom == 31)
                    {
                        yearFrom++;
                        monthFrom = 1;
                        i = 0;
                    }
                }
            }
            List<int> districtWasePatientIdList=new List<int>();
            int districtId = int.Parse(districtDropDownList.SelectedValue);
            foreach (int id in patientIdList) {
                int patientIdDistrictWase = patientManager.GetDistictWaisePatientId(id, districtId);
                districtWasePatientIdList.Add(patientIdDistrictWase);
            }
            List<int> observationIdList = new List<int>();
            foreach (int id in districtWasePatientIdList) {
                int observationId = treatmentManager.GetObservationId(id);
                observationIdList.Add(observationId);
            }
            List<Disease> diseaseNameList = new List<Disease>();
            List<Disease> allDiseaseNameList = diseaseManager.GetAllDiseases();
            foreach (int id in observationIdList) {
                List<int> diseaseIdList = treatmentManager.GetDiseaseId(id);
                foreach (int disId in diseaseIdList) {
                    Disease aDisease = new Disease();
                    aDisease.NameOfDisease = diseaseManager.GetDiseaseName(disId);
                    diseaseNameList.Add(aDisease);
                }
            }
            Series series = Chart1.Series["Series1"];
            foreach (var diseaseName in allDiseaseNameList) {

                int count = 0;
                foreach (var nameOfDisease in diseaseNameList) {
                    if (diseaseName.NameOfDisease.Equals(nameOfDisease.NameOfDisease)) {
                        count++;
                    }
                }
                series.Points.AddXY(diseaseName.NameOfDisease, count);
            }

        }

       
    }
}