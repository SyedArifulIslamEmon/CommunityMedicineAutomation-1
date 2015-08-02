using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityMedicineAutomation.BLL;

namespace CommunityMedicineAutomation.UI
{
    public partial class MedicineStockReportUI : System.Web.UI.Page
    {
        CenterMedicineRelationManager centerMedicineRelationManager = new CenterMedicineRelationManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            int centerId = int.Parse(Session["CenterId"].ToString());
            reportGridView.DataSource = centerMedicineRelationManager.GetCenterAllMedicineList(centerId);
            reportGridView.DataBind();
        }
    }
}