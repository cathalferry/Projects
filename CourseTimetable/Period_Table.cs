//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CourseTimetable
{
    using System;
    using System.Collections.Generic;
    
    public partial class Period_Table
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Period_Table()
        {
            this.Course_Table = new HashSet<Course_Table>();
        }
    
        public decimal Period_ID { get; set; }
        public decimal Semester_ID { get; set; }
        public decimal Period_Free { get; set; }
        public string Start_Time { get; set; }
        public string End_Time { get; set; }
    
        public virtual Period_Free Period_Free1 { get; set; }
        public virtual Semester_Table Semester_Table { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Course_Table> Course_Table { get; set; }
    }
}
