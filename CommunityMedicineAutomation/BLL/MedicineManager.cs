using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.DAL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.BLL
{
    public class MedicineManager
    {
        MedicineGateway medicineGateway=new MedicineGateway();

        public string SaveMedicine(Medicine aMedicine)
        {
            int value = medicineGateway.SaveMedicine(aMedicine);

            if (value > 0)
            {
                return "Medicine has been saved!";
            }
            else return "Failed";
        }

        public List<Medicine> GetAllMedicines()
        {
            return medicineGateway.GetAllMedicines();
        }
        public int GetMedicineId(string medicine) {
            return medicineGateway.GetMedicineId(medicine);
        }
        public string SendMedicine(int centerId, int medicineId, int quantity) {
            int value =medicineGateway.SendMedicine(centerId,medicineId,quantity);

            if (value > 0)
            {
                return "Medicine Has Been Send!";
            }
            else return "Failed";
        }
        public Medicine GetCenterAllMedicines(int medicineId)
        {
            return medicineGateway.GetCenterAllMedicines(medicineId);
        }
        public bool IsMedinineExists(Medicine aMedicine) {

            return medicineGateway.IsMedinineExists(aMedicine);
        }
        public string GetMedicineName(int medicineId)
        {
            return medicineGateway.GetMedicineName(medicineId);
        }
    }
}