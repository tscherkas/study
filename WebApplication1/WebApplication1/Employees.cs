//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    
    public partial class Employees
    {
        public int Emp_id { get; set; }
        public int Job_id { get; set; }
        public string First_name { get; set; }
        public string Last_name { get; set; }
        public double Salary { get; set; }
    
        public virtual Jobs Jobs { get; set; }
    }
}
