using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Сводное описание для Settings
/// </summary>
public class Settings
{
    private readonly string serverName;
    private readonly string user;
    private readonly string password;
    private readonly int timeout;
    private string catalog;
	public Settings(string serverName, string user, string password, string catalog)
	{
	    this.serverName = serverName;
	    this.user = user;
	    this.password = password;
	    this.catalog = catalog;
	}

    public SqlConnectionStringBuilder GetConnectionString()
    {
       return  new SqlConnectionStringBuilder
        {
            UserID = user,
            Password = password,
            DataSource = serverName,
            InitialCatalog = catalog
        };
    }
}