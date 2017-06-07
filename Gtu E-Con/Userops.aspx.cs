using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*Necessary includes in order to connect*/
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;


namespace Gtu_E_Con
{
    public partial class Userops : System.Web.UI.Page
    {
        OracleConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            /*Connection string. (id-> lelo pw->123 port->1521/xe)*/
            String conStr = "USER ID=lelo;Password=123;Data Source=localhost:1521/xe";
            con = new OracleConnection();
            con.ConnectionString = conStr;
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            OracleCommand Query = con.CreateCommand();

            Query.CommandText = "select * from users";
            OracleDataReader Reader = Query.ExecuteReader();
            int rowcount = 0;

            /*Get the total rows to generate unique id*/
            while (Reader.Read())
            {
                ++rowcount;
            }

            /*Insert values to user table*/
            Query.CommandText = "INSERT INTO USERS VALUES("
                + rowcount +
                ",'" + mailbox.Text
                + "','" + namebox.Text
                + "','" + bdbox.Text
                + "'," + pwbox.Text
                + ",'" + typelist.Text
                + "')";
            Query.ExecuteReader();

            if (typelist.Text == "regular" || typelist.Text == "onstage")
            {
                Query.CommandText = "INSERT INTO PARTICIPATES VALUES(" + rowcount + "," + DropDownList1.Text + ",NULL)";
                Query.ExecuteReader();
            }
            if (typelist.Text == "onstage")
            {
                Query.CommandText = "INSERT INTO STAGES VALUES(" + rowcount + "," + DropDownList1.Text + ")";
                Query.ExecuteReader();
            }

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void delbutton_Click(object sender, EventArgs e)
        {
            OracleCommand Query = con.CreateCommand();
            /*Delete specified user*/
            Query.CommandText = "DELETE FROM USERS WHERE MAIL='" + mailbox0.Text + "' AND PASSWORD='" + pwbox0.Text + "'";
            Query.ExecuteReader();

        }

        protected void typelist_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}