using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2123_lasnaolot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnHae_Click(object sender, EventArgs e)
    {
        if (txtNimi.Text.Length > 0)
        {
            string kurssi = ddlCourses.SelectedValue;
            string sukunimi = txtNimi.Text;
            string sql = string.Format(
                "SELECT asioid, lastname, firstname, date FROM lasnaolot " +
                "WHERE course like '{0}' AND lastname like '{1}%' ORDER BY date", kurssi, sukunimi);
            srcIlmot.SelectCommand = sql;
        }
    }
}