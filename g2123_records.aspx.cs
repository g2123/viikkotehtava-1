using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class records : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRecords_Click(object sender, EventArgs e)
    {
        //haetaan levytiedot dataTableen vai DataSerriin
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        ds.ReadXml(MapPath("~/App_Data/Records2.xml"));
        //kytketään kontrolliin
        gridView.DataSource = ds;
        gridView.DataBind();
    }
}