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
            if (UMAIL.Text != "") {
                Query.CommandText = "select e.ID, e.NAME, e.EVENTDATE from Events e, Participates p, Users u where p.USERID=u.ID AND p.EVENTID=e.ID AND u.MAIL='" + UMAIL.Text + "'";
            }
            else if (UID.Text != "")
            {
                Query.CommandText += "select e.ID, e.NAME, e.EVENTDATE from Events e, Participates p, Users u where p.USERID=u.ID AND p.EVENTID=e.ID AND u.ID=" + UID.Text;
            }
            else
            {
                return;
            }
            OracleDataReader Reader = Query.ExecuteReader();
            string str = "";
            int i = 0;
            while (Reader.Read())
            {
                i = 0;
                while (i < Reader.FieldCount)
                {
                    str += Reader.GetValue(i) + " ";
                    ++i;
                }
                ListBox1.Items.Add(str);
                str = "";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ListBox2.Items.Clear();
            OracleCommand Query = con.CreateCommand();
            if (ENAME.Text != "")
            {
                Query.CommandText = "select u.ID, u.REALNAME, u.MAIL, u.TYPE from Events e, Participates p, Users u where p.USERID=u.ID AND p.EVENTID=e.ID AND e.NAME='" + ENAME.Text + "'";
            }
            else if (EID.Text != "")
            {
                Query.CommandText = "select u.ID, u.REALNAME, u.MAIL, u.TYPE from Events e, Participates p, Users u where p.USERID=u.ID AND p.EVENTID=e.ID AND e.ID='" + EID.Text + "'";
            }
            else
            {
                return;
            }

            OracleDataReader Reader = Query.ExecuteReader();
            string str = "";
            int i = 0;
            while (Reader.Read())
            {
                i = 0;
                while (i < Reader.FieldCount)
                {
                    str += Reader.GetValue(i) + " ";
                    ++i;
                }
                ListBox2.Items.Add(str);
                str = "";
            }

        }
    }
}