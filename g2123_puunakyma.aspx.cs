﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2123_puunakyma : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSource.XPath = "/catalog";
        PageTreeView.DataBind();
    }
}