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
    
    public partial class tbl_UNTMST
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_UNTMST()
        {
            this.tbl_GRPMST = new HashSet<tbl_GRPMST>();
            this.tbl_ITEMAS = new HashSet<tbl_ITEMAS>();
        }
    
        public int Untmst_id { get; set; }
        public string Unit_name { get; set; }
        public string Unit_group { get; set; }
        public string Unit_desc { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_GRPMST> tbl_GRPMST { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_ITEMAS> tbl_ITEMAS { get; set; }
    }
}
