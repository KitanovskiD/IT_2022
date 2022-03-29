using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            ListItemCollection allItems = CityList.Items;
            SelectedCity.Text = "";

            foreach (ListItem item in allItems)
            {
                if(item.Selected)
                {
                    SelectedCity.Text += "<br/>" + item.Text;
                }
            }
        }
    }
}