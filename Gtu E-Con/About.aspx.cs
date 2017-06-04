using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;


namespace Gtu_E_Con
{
    public partial class About : Page
    {
        OracleConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            String conStr = "USER ID=lelo;Password=123;Data Source=localhost:1521/xe";
            con = new OracleConnection();
            con.ConnectionString = conStr;
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            OracleCommand Query = con.CreateCommand();
            string mail = mailbox.Text;
            string pw = pwbox.Text;
            namebox.Text = mail + "  " + pw;
            

            Query.CommandText = "INSERT INTO MUZ VALUES('"+mail+"',"+pw+")";
            Query.ExecuteReader();

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}