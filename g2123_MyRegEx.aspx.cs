using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2123_MyRegEx : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        //teeman vaihtaminen koodissa
        switch (Request.QueryString["theme"])
        {
            case "teema":
                Page.Theme = "teema";
                break;
            case "teema2":
                Page.Theme="teema2";
                break;
            default:
                break;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

}