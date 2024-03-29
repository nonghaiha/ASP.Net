﻿
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Dulich
{
    public class Global : System.Web.HttpApplication
    {
      
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            Application.Lock();
            System.IO.StreamReader sr;
            sr = new System.IO.StreamReader(Server.MapPath("SLTC.txt"));
            string s = sr.ReadLine();
            sr.Close();
            Application.UnLock();
            //Tao bien application la SL truy cap va khoi tao gia tri S
            Application["SLTruyCap1"] = s;

        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }

        void Session_Start(object sender, EventArgs e)
        {
            // Code that runs when a new session is started
            Application["SLTruyCap1"] = int.Parse(Application["SLTruyCap1"].ToString())+1;
            //Luu vao file SL.txt mo va ghi de
            System.IO.StreamWriter sw;
            sw = new System.IO.StreamWriter(Server.MapPath("SLTC.txt"));
            sw.Write(Application["SLTruyCap1"].ToString());
            sw.Close();
            //khai bao session tinh tong
            Session["price"] = "";
            Session["quantity"] = "";

        }

        void Session_End(object sender, EventArgs e)
        {
            // Code that runs when a session ends. 
            // Note: The Session_End event is raised only when the sessionstate mode
            // is set to InProc in the Web.config file. If session mode is set to StateServer 
            // or SQLServer, the event is not raised.

        }

    }
}
