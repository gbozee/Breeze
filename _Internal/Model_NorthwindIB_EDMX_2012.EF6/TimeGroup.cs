//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Models.NorthwindIB.EDMX_2012
{
    using System;
    using System.Collections.Generic;
    
    public partial class TimeGroup
    {
        public TimeGroup()
        {
            this.TimeLimits = new HashSet<TimeLimit>();
        }
    
        public int Id { get; set; }
        public string Comment { get; set; }
    
        public virtual ICollection<TimeLimit> TimeLimits { get; set; }
    }
}