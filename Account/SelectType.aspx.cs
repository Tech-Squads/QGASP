﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QlityG.Account
{
    public partial class SelectType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ibluname.Text = (string)Session["uemail"];

        }
    }
}