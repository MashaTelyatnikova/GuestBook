﻿//------------------------------------------------------------------------------
// <auto-generated>
//    Этот код был создан из шаблона.
//
//    Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//    Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Comment
{
    public int Id { get; set; }
    public string Text { get; set; }
    public string Name { get; set; }
    public System.DateTime Date { get; set; }
}

public partial class Masha
{
    public string name { get; set; }
}

public partial class Rec
{
    public string name { get; set; }
    public string comment { get; set; }
}

public partial class Record
{
    public string name { get; set; }
    public string comment { get; set; }
}

public partial class student
{
    public int id { get; set; }
    public string first_name { get; set; }
    public string last_name { get; set; }
    public string name_group { get; set; }
    public int id_university { get; set; }

    public virtual university university { get; set; }
}

public partial class Table1
{
    public int id { get; set; }
}

public partial class university
{
    public university()
    {
        this.students = new HashSet<student>();
    }

    public int id { get; set; }
    public string name { get; set; }
    public string town { get; set; }
    public int rating { get; set; }

    public virtual ICollection<student> students { get; set; }
}
