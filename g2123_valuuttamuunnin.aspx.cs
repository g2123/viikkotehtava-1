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