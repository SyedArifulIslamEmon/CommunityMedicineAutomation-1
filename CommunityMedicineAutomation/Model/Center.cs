using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CommunityMedicineAutomation.Model
{
    [Serializable]
    public class Center
    {
        public int Id { get; set; }
        public string CenterName{get; set;}
        public string DistrictName { get; set; }
        public string ThanaName { get; set; }
        public int Count { get; set; }
        public decimal Population { get; set; }

    }
}