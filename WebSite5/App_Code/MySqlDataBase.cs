using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Сводное описание для MySqlDataBase
/// </summary>
public static class MySqlDataBase
{
    public static IEnumerable<List<string>> GetAll(Settings settings, string tableName, int size)
    {
        var connect = settings.GetConnectionString();
        using (var cn = new SqlConnection())
        {
            cn.ConnectionString = connect.ConnectionString;
            cn.Open();
            var cmd = new SqlCommand("select * from "+tableName, cn);

            using (var reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    var array = new List<string>();
                    for (var i = 0; i < size; ++i)
                        array.Add(reader[i].ToString());
                    yield return array;
                }

                cn.Close();
            }
        }
    }

    public static void InsertInto(Settings settings, string tableName, List<string> values)
    {
        var connect = settings.GetConnectionString();
        var format = "insert into " + tableName + " values (";
        for (int i = 0; i < values.Count; i++)
        {
            format += string.Format("'{0}'", values[i]);
            if (i != values.Count - 1)
                format += ", ";
        }
        format += ")";

        using (var cn = new SqlConnection())
        {
            cn.ConnectionString = connect.ConnectionString;
            cn.Open();
            var cmd = new SqlCommand(format, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}