using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.DAL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.BLL
{
    public class CenterManager
    {
        CenterGateway centerGateway=new CenterGateway();

        public List<Center> GetAllDistrict()
        {
            return centerGateway.GetAllDistrict();
        }

        public List<Center> GetAllThana(int id)
        {
            return centerGateway.GetAllThana(id);
        }

        public int CenterCountInThana(int id) {
            List<Center> aCenter= centerGateway.CenterCountInThana(id);
            return aCenter.Count;
        }
        public string SaveCenter(Center aCenter, int thanaId, string centerCode, string password) {

            int value = centerGateway.SaveCenter(aCenter, thanaId, centerCode, password);

            if (value > 0)
            {
                return "Center has been Saved!";
            }
            else return "Failed";
        }

        public bool IsCenterCodeAndPasswordExists(string centerCode, string password)
        {
            return centerGateway.IsCenterCodeAndPasswordExists(centerCode, password);
        }

        public List<Center> CenterInThana(int id)
        {
            return centerGateway.CenterCountInThana(id);
        }
        public int GetCenterId() {
            return centerGateway.centerId;
        }

        public bool IsCenterNameExists(Center aCenter) {
            return centerGateway.IsCenterNameExists(aCenter);
        }
        public string GetCenterName(int centerId) {
            return centerGateway.GetCenterName(centerId);
        }
        public int GetThanaId(int centerId) {
            return centerGateway.GetThanaId(centerId);
        }
        public int GetDistrictId(int thanaId)
        {
            return centerGateway.GetDistrictId(thanaId);
        }
        public List<int> GetDistrictIdList(int centerId)
        {
            return centerGateway.GetDistrictIdList(centerId);
        }
        public string GetDistrict(int districtId)
        {
            return centerGateway.GetDistrict(districtId);
        }
        public decimal GetDistrictPopulation(string districtName)
        {
            return centerGateway.GetDistrictPopulation(districtName);
        }
    }
}