using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CommunityMedicineAutomation.UI
{
    public partial class OpenPdfUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReadPdfFile();
        }
        private void ReadPdfFile()
        {
            string path = @"D:\Treatment.pdf";
            WebClient client = new WebClient();
            Byte[] buffer = client.DownloadData(path);

            if (buffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", buffer.Length.ToString());
                Response.BinaryWrite(buffer);
            }
        }
    }
}