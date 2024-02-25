using System;
using System.Collections.Generic;

namespace OdataDemo.Models;

public partial class Student
{
    public int Id { get; set; }

    public int? ClassId { get; set; }

    public string? Name { get; set; }

    public int? Age { get; set; }

    public virtual Class? Class { get; set; }
}
