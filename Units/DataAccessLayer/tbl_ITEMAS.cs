//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Units.DataAccessLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_ITEMAS
    {
        public int Itemas_id { get; set; }
        public string It_code { get; set; }
        public string It_name { get; set; }
        public string It_spec { get; set; }
        public Nullable<int> Grpmst_id { get; set; }
        public string It_desc { get; set; }
        public Nullable<int> Untmst_id { get; set; }
    
        public virtual tbl_GRPMST tbl_GRPMST { get; set; }
        public virtual tbl_UNTMST tbl_UNTMST { get; set; }
    }
}