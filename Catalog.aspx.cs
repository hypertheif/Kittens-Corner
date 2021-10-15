using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AJames_ITSD325
{
    public partial class Catalog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddToCart(object source, DataListCommandEventArgs e)
        {
            int selectedItem = e.Item.ItemIndex;
            Label lblItem = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("ProdIDLabel");
            int item = Convert.ToInt32(lblItem.Text);
            Response.Write("Item " + item.ToString() + " added to shopping cart.");
            Session["cart"] = item;
        }
    }
}