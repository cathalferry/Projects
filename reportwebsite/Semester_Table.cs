//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace reportwebsite
{
    using System;
    using System.Collections.Generic;
    
    public partial class Semester_Table
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Semester_Table()
        {
            this.Period_Table = new HashSet<Period_Table>();
        }
    
        public decimal Semester_ID { get; set; }
        public string Semester_Year { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Period_Table> Period_Table { get; set; }
    }
}
