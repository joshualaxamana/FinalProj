﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

/// <summary>
/// Summary description for Helper
/// </summary>
public class Helper
{
    public Helper()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static string GetCon()
    {
        return ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
    }
}