using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2123_LocalDBDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetMovies_Click(object sender, EventArgs e)
    {
        //Sidotaan oliokokoelmat DataList kontrolliin
        var muuvit = Movie.Get3Movies();
        myDataList.DataSource = muuvit;
        myDataList.DataBind();
    }
}