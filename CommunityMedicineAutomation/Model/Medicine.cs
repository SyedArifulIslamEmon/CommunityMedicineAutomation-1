using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CommunityMedicineAutomation.Model
{
  [Serializable]
    public class Medicine
    {
        public int Id { get; set; }
        public int SerialNo { get; set; }
        public string NameOfMedicine { get; set; }
        public int Quantity { get; set; }

    }
}