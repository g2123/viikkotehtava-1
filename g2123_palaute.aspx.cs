using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class g2123_palaute : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnNayta_Click(object sender, EventArgs e)
    {
        //haetaan levytiedot dataTableen vai DataSettiin
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        ds.ReadXml(MapPath("~/App_Data/palaute.xml"));
        //kytketään kontrolliin
        gridView.DataSource = ds;
        gridView.DataBind();
    }

    protected void btnLaheta_Click(object sender, EventArgs e)
    {
        string file = MapPath("~/App_Data/palaute.xml");

        XDocument doc = XDocument.Load(file);

        XElement root = new XElement("palaute");

        doc.Root.Add(
            new XElement("palaute",
            new XElement("pvm", txtPvm.Text),
            new XElement("tekija", txtNimi.Text),
            new XElement("opittu", txtOlenOppinut.Text),
            new XElement("haluanoppia", txtHaluanOppia.Text),
            new XElement("hyvaa", txtHyvaa.Text),
            new XElement("parannettavaa", txtParannettavaa.Text),
            new XElement("muuta", txtMuuta.Text)
            ));

        doc.Save(file);

        txtPvm.Text = "";
        txtNimi.Text = "";
        txtOlenOppinut.Text = "";
        txtHaluanOppia.Text = "";
        txtHyvaa.Text = "";
        txtMuuta.Text = "";
        txtParannettavaa.Text = "";
    }

    
}