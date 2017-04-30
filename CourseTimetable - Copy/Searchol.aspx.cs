using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseTimetable
{
    public partial class Search : System.Web.UI.Page
    {
        Course_TimetableEntities course = new Course_TimetableEntities();
        public Student_Table student_search = new Student_Table();
        List<Student_Table> student_list = new List<Student_Table>();
        private void rep_bind()
        {
            
        }
     
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
       

        }
    }
    
