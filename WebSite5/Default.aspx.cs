using System;
using System.Collections.Generic;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Timers;
using Timer = System.Timers.Timer;

public partial class _Default : System.Web.UI.Page
{
    private GuestBookEntities entities;
    private bool flag = false;
    private int id;
    private readonly Timer selfTimer = new Timer();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        flag = false;
        entities = new GuestBookEntities();
        var count = Enumerable.First(entities.Table1.OrderByDescending(i => i.id)).id;
        entities.Table1.Add(new Table1 {id = count + 1});
        entities.SaveChanges();
        Label1.Text = "Колличество посещений сайта = " + (count + 1);
        selfTimer.Elapsed += new ElapsedEventHandler(Update);
        selfTimer.Interval = 10000;
        selfTimer.Start();
        UpdateTable();
    }

    private void Update(object source, ElapsedEventArgs e)
    {
        UpdateTable();
    }

    private void UpdateTable()
    {
        try
        {
            table.Rows.Clear();
            var row = new TableRow();

            row.Cells.AddRange(GetCells(Color.Navy, "Имя", "Комментарий", "Дата"));

            table.Rows.Add(row);
            
            var data = entities.Comments.ToList().OrderByDescending(d => d.Date);

            foreach (var d in data)
            {
                var newRow = new TableRow();
                newRow.Cells.AddRange(GetCells(Color.Black, d.Name, d.Text, d.Date.ToString("U")));
                table.Rows.Add(newRow);
            }
        }
        catch (Exception ex)
        {
          
        }

    }

    private static TableCell[] GetCells(Color color, params string[] names)
    {

        return names.Select(name => new TableCell { Text = Encoding.UTF8.GetString(Encoding.Convert(Encoding.Unicode, Encoding.UTF8, Encoding.Unicode.GetBytes(name))), ForeColor = color }).ToArray();
    }

    private void SaveNewComment(string name, string comment1)
    {
        if (flag)
        {
            flag = false;
            var comments = entities.Comments.ToList().Where(i => i.Name == name && i.Text == comment1).ToList();
            if (!comments.Any())
            {
                entities.Comments.Add(new Comment() { Id = entities.Comments.ToList().Max(i => i.Id) + 1, Name = name, Text = comment1, Date = DateTime.Now });
                entities.SaveChanges();
                flag = false;
            }
        }
       
    }

    protected void SendComment(object sender, EventArgs e)
    {

        if (captcha.Text == tt.Text)
        {
            var name = in_name.Text;
            var comment1 = comment.Text;

            if (name != "" && comment1 != "")
            {
                flag = true;
                SaveNewComment(name, comment1);
            }
        }
        else
        {
            captcha.Text = "Fail =( Try again";
        }

        captcha.Text = CreateCaptcha() + "";
        tt.Text = "";
        in_name.Text = "";
        comment.Text = "";
        UpdateTable();
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