using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2123_elakelaskuri : System.Web.UI.Page
{
    int ika;
    int palkka;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void txtBoxIka_TextChanged(object sender, EventArgs e)
    {
        ika = Convert.ToInt16(txtBoxIka.Text);
        if (ika < 18 && ika > 63)
        {
            txtBoxIka.Text = "18";
        }
        if (TxtBoxPalkka.Text.Length > 1)
        {
            Laske();
        }

    }
    protected void TextBoxPalkka_TextChanged(object sender, EventArgs e)
    {

        if (txtBoxIka.Text.Length > 1 && TxtBoxPalkka.Text.Length > 1)
        {
            Laske();
        }

    }

    public void Laske()
    {
        int palkka = Convert.ToInt16(TxtBoxPalkka.Text);
        int puolpalkkaa = palkka / 2;
        LakiElake.Text = puolpalkkaa.ToString();

        double elake = (0.5 * palkka) - (63 - Convert.ToInt16(txtBoxIka.Text)) * 5.5;
        int elake2 = Convert.ToInt16(elake);
        tulos.Text = elake2.ToString();

        int vaik = puolpalkkaa - elake2;
        vaikutus.Text = vaik.ToString();     
    }

    protected void minusIka_Click(object sender, EventArgs e)
    {
        int luku = Convert.ToInt16(txtBoxIka.Text);
        if (luku > 18 && luku < 64)
        {
            txtBoxIka.Text = (luku - 1).ToString();     
            Laske();
        }
        else
        {
            txtBoxIka.Text = "18";
        }
    }
    
    protected void plusIka_Click(object sender, EventArgs e)
    {
        int luku = Convert.ToInt16(txtBoxIka.Text);
        if (luku > 17 && luku < 63)
        {
            txtBoxIka.Text = (luku + 1).ToString();
            Laske();
        }
        else
        {
            txtBoxIka.Text = "63";
        }


    }
    protected void minusPalkka_Click(object sender, EventArgs e)
    {
        int luku = Convert.ToInt16(TxtBoxPalkka.Text);
        TxtBoxPalkka.Text = (luku - 50).ToString();
        Laske();

    }
    protected void plusPalkka_Click(object sender, EventArgs e)
    {
        int luku = Convert.ToInt16(TxtBoxPalkka.Text);
        TxtBoxPalkka.Text = (luku + 50).ToString();
        Laske();
    }
}