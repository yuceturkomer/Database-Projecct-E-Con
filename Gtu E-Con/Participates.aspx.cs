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
    public partial class Participates : System.Web.UI.Page
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
            ListBox1.Items.Clear();
            OracleCommand Query = con.CreateCommand();
            if (UID.Text == "")
            {
                Query.CommandText = "select e.name from Events e, Participates p, Users u where p.USERID=u.ID AND p.EVENTID=e.ID AND u.MAIL='" + UMAIL.Text + "'";
            }
            else
            {
                Query.CommandText = "select e.name from Events e, Participates p, Users u where p.USERID=u.ID AND p.EVENTID=e.ID AND u.MAIL='" + UMAIL.Text + "' AND u.ID=" + UID.Text;
            }
            OracleDataReader Reader = Query.ExecuteReader();
            string str = "";
            int i = 0;
            while (Reader.Read())
            {
                ListBox1.Items.Add(i++.ToString());
                /*while (i < Reader.FieldCount)
                {
                    str += Reader.GetValue(i) + " ";
                    ++i;
                }
                ListBox1.Items.Add(str);
                str = "";*/
            }

        }
    }
}