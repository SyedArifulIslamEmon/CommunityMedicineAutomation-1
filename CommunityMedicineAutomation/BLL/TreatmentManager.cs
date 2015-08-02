using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.DAL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.BLL
{
    public class TreatmentManager
    {
        TreatmentGateway treatmentGateway = new TreatmentGateway();
        public int SaveObservation(Treatment aTreatment, Patient aPatient, int centerId)
        {
          return  treatmentGateway.SaveObservation(aTreatment, aPatient,centerId);
        }
        public void SaveTreatment(Treatment aTreatment, int observationId) {
            treatmentGateway.SaveTreatment(aTreatment,observationId);
        }
        public List<Treatment> GetObservationList(Patient aPatient) {
            return treatmentGateway.GetObservationList(aPatient);
        }
        public List<Treatment> GetTreatmentList(int observationId)
        {
            return treatmentGateway.GetTreatmentList(observationId);
        }
        public int GetPatientId(string date)
        {
            return treatmentGateway.GetPatientId(date);
        }
        public int GetObservationId(int patientId)
        {
            return treatmentGateway.GetObservationId(patientId);
        }
        public List<int> GetDiseaseId(int observationId)
        {
            return treatmentGateway.GetDiseaseId(observationId);
        }
        public int GetObservationIdForDistrict(string date) {
            return treatmentGateway.GetObservationIdForDistrict(date);
        }
        public int GetObsId(int observationId, int diseaseId)
        {
            return treatmentGateway.GetObsId(observationId, diseaseId);
        }
        public int GetCenterIdForDistrict(int observationId)
        {
            return treatmentGateway.GetCenterIdForDistrict(observationId);
        }
    }
}