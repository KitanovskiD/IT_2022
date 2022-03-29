using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV2
{
    public partial class Converter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                var valutiLista = new List<ListItem>();

                valutiLista.Add(new ListItem("Euro", "61.5"));
                valutiLista.Add(new ListItem("Dollar", "50"));

                ListaValuti.DataTextField = "Text";
                ListaValuti.DataValueField = "Value";

                ListaValuti.DataSource = valutiLista;
                ListaValuti.DataBind();
            }
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            var text = ValutaIme.Text;
            var value = ValutaVrednost.Text;

            ListaValuti.Items.Add(new ListItem(text, value));

            ValutaIme.Text = "";
            ValutaVrednost.Text = "";

            updateNumberOfItems();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            if(ListaValuti.SelectedIndex != -1)
            {
                ListaValuti.Items.Remove(ListaValuti.SelectedItem);
            }

            updateNumberOfItems();
        }

        private void updateNumberOfItems()
        {
            BrojValuti.Text = ""; 
            BrojValuti.Text = "Бројот на валути во листата е: " + ListaValuti.Items.Count; 
        }

        protected void ListaValuti_SelectedIndexChanged(object sender, EventArgs e)
        {
            var text = Kolicina.Text;
            var value = ListaValuti.SelectedItem.Value;

            int Quantity;
            double intValue;

            var first = Int32.TryParse(text, out Quantity);
            var second = Double.TryParse(value, out intValue);

            if(first && second)
            {
                var result = Quantity * intValue;

                Konvertirano.Text = result.ToString();
            }
        }
    }
}