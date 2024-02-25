using System;
using System.Collections.Generic;

namespace OdataDemo.Entities;

public partial class Student
{
    public int Id { get; set; }

    public int? ClassId { get; set; }

    public string? Name { get; set; }

    public int? Mark { get; set; }

    public DateTime? Dob { get; set; }

    public virtual Class? Class { get; set; }
}
