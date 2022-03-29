using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV2
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SlikaB_Click(object sender, ImageClickEventArgs e)
        {
            Koordinati.Text = "(" + e.X.ToString() + ", " + e.Y.ToString() + ")";
        }
    }
}