using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2123_indexMP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        Response.Redirect("g2123_valuuttamuunnin.aspx?value=" + txtbox1.Text);
    }

    public string TextValue
    {
        get { return txtbox1.Text; }
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        Session["value"] = txtbox1.Text;
        Response.Redirect("g2123_valuuttamuunnin.aspx");
    }
    protected void Btn3_Click(object sender, EventArgs e)
    {
        HttpCookie myCookie = new HttpCookie("Nimi");

        myCookie.Value = txtbox1.Text;
        myCookie.Expires = DateTime.Now.AddDays(1d);
        Response.Cookies.Add(myCookie);

        Response.Redirect("g2123_valuuttamuunnin.aspx");
    }
}