using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class g2123_RRSFeeds : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetLiiga_Click(object sender, EventArgs e)
    {
        GetFeedsFrom("Liiga");
    }

    protected void GetFeedsFrom(string FeedSource)
    {
        string url = "";
        switch (FeedSource)
        {
            case "Liiga":
                url = ConfigurationManager.AppSettings["rssfeeditSF"];
                break;
            case "MS":
                url = ConfigurationManager.AppSettings["rssfeeditMS"];
                break;
            case "IS":
                url = ConfigurationManager.AppSettings["rssfeeditIS"];
                break;
            default:
                break;
        }
        //kokeillaas tuleeko oikeasta osoitteesta
        lblBody.Text = url;
        //luetaan XML XmlDocument-olioon
        XmlDocument doc = new XmlDocument();
        myDataSource.DataFile = url;
        doc = myDataSource.GetXmlDocument();
        // 1 vaihe: kokeillaas lukea channelin title 
        XmlNode node = doc.SelectSingleNode("/rss/channel");
        string otsikko = node["title"].InnerText;
        lblHeader.Text = otsikko;

        // 2 vaihe: loopitetaan item-noodit läpi
        XmlNodeList nodes = doc.SelectNodes("/rss/channel/item");
        int i = 0;
        string rssTitle;
        string rssLink;

        foreach (XmlNode item in nodes)
        {
            i++;
            //uusi rivi Tableen
            TableRow row = new TableRow();
            //riville kaksi solua, esimmäiseen numero ja toiseen hyperlinkki
            TableCell cell = new TableCell();
            cell.Text = i.ToString();
            //toka solu
            TableCell cell2 = new TableCell();
            rssTitle = item["title"].InnerText;
            rssLink = item["link"].InnerText;
            HyperLink hl = new HyperLink();
            hl.Text = rssTitle;
            hl.NavigateUrl = rssLink;
            cell2.Controls.Add(hl);
            //lisätääs solut riville ja rivi lisätään tauluun
            row.Cells.Add(cell);
            row.Cells.Add(cell2);
            myDataTable.Rows.Add(row);

        }

    }
    protected void btnGetMS_Click(object sender, EventArgs e)
    {
        GetFeedsFrom("MS");
    }
    protected void btnGetIS_Click(object sender, EventArgs e)
    {
        GetFeedsFrom("IS");
    }
}