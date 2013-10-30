using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class g2123_wanhatAutot : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string file = MapPath("~/App_Data/WanhatAutot.xml");

        XmlDocument doc = new XmlDocument();
        doc.Load(file);
        XmlNodeList nodes = doc.DocumentElement.SelectNodes("Auto");

        foreach (XmlNode node in nodes)
        {
            ListItem li = new ListItem(node["merkki"].InnerText);
            if (!DropDownList1.Items.Contains(li))
            {
                DropDownList1.Items.Add(li);
            }
        }

    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ListView1_Sorting(object sender, ListViewSortEventArgs e)
    {

    }
}