using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.DAL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.BLL
{
    public class PatientManager
    {
        PatientGateway patientGateway = new PatientGateway();
        public int GetServiceTimes(string voterId) {
            return patientGateway.GetServiceTimes(voterId);
        }
        public string SavePatient(Patient aPatient)
        {
            int value =patientGateway.SavePatient(aPatient);

            if (value > 0)
            {
                return "Patient has been saved!";
            }
            else return "Failed";
        }
        public bool IfPatientExists(Patient aPatient)
        {
            return patientGateway.IfPatientExists(aPatient);
        }
        public string UpdateServiceTimes(Patient aPatient)
        {
            int value = patientGateway.UpdateServiceTimes(aPatient);

            if (value > 0)
            {
                return "Patient Has Been Saved";
            }
            else return "Failed";
        }
        public void PatientCenterTblValue(int patientId, int centerId, int districtId)
        {
            patientGateway.PatientCenterTblValue(patientId, centerId, districtId);
        }
        public int GetPatientId(Patient aPatient)
        {
            return patientGateway.GetPatientId(aPatient);
        }
        public int GetServiceTimes(Patient aPatient) { 
            patientGateway.GetPatientId(aPatient);
            return patientGateway.ServiceTime;
        }
        public int GetDistictWaisePatientId(int patientId, int districtId) {
            return patientGateway.GetDistictWaisePatientId(patientId, districtId);
        }
    }
}