using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Web.DynamicData;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Security.AccessControl;
using System.Text;


public partial class Default : System.Web.UI.Page
{
    private Settings settings;
    protected void Page_Load(object sender, EventArgs e)
    {
        settings = new Settings("ufecqyilqi.database.windows.net", "wanderer20", "199468Mm", "GuestBook");
        UpdateTable();
    }

    private void UpdateTable()
    {
       table.Rows.Clear();
        var row = new TableRow();
     
        row.Cells.AddRange(GetCells(Color.Navy, "Имя", "Комментарий"));

        table.Rows.Add(row);

        var data = MySqlDataBase.GetAll(settings, "Records", 2);
        foreach (var d in data)
        {
            var newRow = new TableRow();
            newRow.Cells.AddRange(GetCells(Color.Black, d[0], d[1]));
            table.Rows.Add(newRow);
        }
    }

    private static TableCell[] GetCells(Color color, params string[] names)
    {
        
        return names.Select(name => new TableCell { Text = Encoding.UTF8.GetString(Encoding.Convert(Encoding.Unicode, Encoding.UTF8, Encoding.Unicode.GetBytes(name))), ForeColor = color }).ToArray();
    }

    private void SaveNewComment(string name, string comment1)
    {
        MySqlDataBase.InsertInto(settings, "Records", new List<string>(){name, comment1});
    }

    protected void SendComment(object sender, EventArgs e)
    {

        if (captcha.Text == tt.Text)
        {
            var name = in_name.Text;
            var comment1 = comment.Text;

            if (name != "" && comment1 != "")
            {
                SaveNewComment(name, comment1);
                UpdateTable();
                captcha.Text = "Ok";
            }
            else
            {
                captcha.Text = "Bad captcha =(";
            }
        }
        else
        {
            captcha.Text = "Fail =( Try again";
        }
    }

    private static int CreateCaptcha()
    {
        var rendom = new Random();
        return rendom.Next(1000, 50000);
    }


    protected void ChangeCaptcha(object sender, EventArgs eventArgs)
    {
        captcha.Text = CreateCaptcha() + "";
    }
}
