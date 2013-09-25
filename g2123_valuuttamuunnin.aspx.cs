using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2123_valuuttamuunnin : System.Web.UI.Page
{
    private const float BitcoinRate = 94.71F;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Parametrillinen
        if (Request.QueryString["value"] != null)
        {
            txtName.Text = Request.QueryString["value"].ToString();
        }

        //Sessio
        if (Session["value"] != null)
        {
            txtName.Text = (string)Session["value"];
        }

        if (Request.Cookies["nimi"] != null)
        {          
            txtName.Text = Request.Cookies["nimi"].Value; 
        }

    }
    protected void btnMuunna_Click(object sender, EventArgs e)
    {
        //muunnetaan
        lblCurrency.Text = string.Format("{0:0.0000} euroa", float.Parse(txtMuunnin.Text) * BitcoinRate);
        //näytetään laskutoimitukset listboksissa
        lstOne.Items.Add(txtMuunnin.Text + "-->" + lblCurrency.Text);
        lstTwo.Items.Add(txtMuunnin.Text + "-->" + lblCurrency.Text);
    }
}