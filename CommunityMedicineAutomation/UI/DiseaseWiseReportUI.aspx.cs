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
    public partial class DiseaseWiseReportUI : System.Web.UI.Page
    {
        CenterManager centerManager = new CenterManager();
        TreatmentManager treatmentManager = new TreatmentManager();
        PatientManager patientManager = new PatientManager();
        DiseaseManager diseaseManager = new DiseaseManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                diseaseDropDownList.DataSource = diseaseManager.GetAllDiseases();
                diseaseDropDownList.DataTextField = "NameOfDisease";
                diseaseDropDownList.DataValueField = "Id";
                diseaseDropDownList.DataBind();
            }

        }

        protected void showButton_Click(object sender, EventArgs e)
        {
            string dateFrom = Request.Form["dateFrom"];
            string dateTo = Request.Form["dateTo"];

            int yearFrom = int.Parse(dateFrom.Substring(0, 4));
            int monthFrom = int.Parse(dateFrom.Substring(5, 2));
            int dayFrom = int.Parse(dateFrom.Substring(8, 2));


            int monthTo = int.Parse(dateTo.Substring(5, 2));
            int dayTo = int.Parse(dateTo.Substring(8, 2));
            int yearTo = int.Parse(dateTo.Substring(0, 4));

            List<int> observaIdList = new List<int>();
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
                        int patient2 = treatmentManager.GetObservationIdForDistrict(date2);
                        observaIdList.Add(patient2);
                        break;
                    }
                    string date = yearFrom + "-" + monthFrom + "-" + i;
                    int patient = treatmentManager.GetObservationIdForDistrict(date);
                    observaIdList.Add(patient);
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
            List<int> observationIdList = new List<int>();
            int diseaseId = int.Parse(diseaseDropDownList.SelectedValue);
            foreach (int id in observaIdList)
            {
                int ObId = treatmentManager.GetObsId(id, diseaseId);
                observationIdList.Add(ObId);
            }
            List<int> centerIdList = new List<int>();
            foreach (int id in observationIdList)
            {
                int centerId = treatmentManager.GetCenterIdForDistrict(id);
                centerIdList.Add(centerId);
            }
            List<Center> districtNameList = new List<Center>();
            List<Center> allDistrictNameList = centerManager.GetAllDistrict();
            foreach (int id in centerIdList)
            {
                List<int> districtIdList = centerManager.GetDistrictIdList(id);
                foreach (int disId in districtIdList)
                {
                    Center aCenter = new Center();
                    aCenter.DistrictName = centerManager.GetDistrict(disId);
                    districtNameList.Add(aCenter);
                }
            }
            List<Center> aCenterList = new List<Center>();
            foreach (var districtName in allDistrictNameList)
            {

                int count = 0;
                foreach (var nameOfDistrict in districtNameList)
                {
                    if (districtName.DistrictName.Equals(nameOfDistrict.DistrictName))
                    {
                        count++;
                    }
                }
                Center aCenter = new Center();
                aCenter.DistrictName = districtName.DistrictName;
                decimal population = centerManager.GetDistrictPopulation(aCenter.DistrictName);
                aCenter.Population = (count / population) * 100;
                aCenter.Count = count;
                aCenterList.Add(aCenter);
            }
            reportGridView.DataSource = aCenterList;
            reportGridView.DataBind();
        }
    }
}