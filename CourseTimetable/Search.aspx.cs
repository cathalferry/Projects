using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseTimetable
{
   
    public partial class Search : System.Web.UI.Page
    {
        test t = new test();
       public decimal grade; //used to return grade from grade table when result is found from student table
    
        public bool ResultFound; //successful result found, used for error control
        public bool ResultFound1; //successful result found, used for error control
        public string databaseToSearch
        {
            get
            {
                return (string)ViewState["databaseToSearch"] ?? "";
            }
            set
            {
                ViewState["databaseToSearch"] = value;
            }
        }

        public partial class test
        {
            public string a;
        }
        Course_TimetableEntities db = new Course_TimetableEntities();
       
        
        string searchText { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
      
        }

        protected void cboDatabaseChoice_SelectedIndexChanged(object sender, EventArgs e)
        {
            var choice = "";
            var _dropdownlist = (DropDownList)sender;
            if (_dropdownlist.SelectedIndex>-1)
            {
                ListItem item = _dropdownlist.SelectedItem;
                databaseToSearch = item.Value;
                t.a = item.Value;
            }          
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            searchText = tbxSearchText.Text;
            PerformSearch(databaseToSearch, searchText);
        }

        private void PerformSearch(string databaseToSearch, string searchText)
        {
            //  if (databaseToSearch == "Products")
            if (databaseToSearch == "Students")
            {
                ErrorMessage.Text = "";
                lstAllProducts.DataSource = GetProducts(searchText);
                if (lstAllProducts.Items.Count > 0)
                {
                    lstAllProducts.Visible = true;
                }
                lstAllProducts.DataBind();
            }
        
          else  if (databaseToSearch == "Lecturers")
            {
                ErrorMessage.Text = "";
                
                ListAllLecturers.DataSource = GetLecturers(searchText);
                if (ListAllLecturers.Items.Count >0)
                {
                    ListAllLecturers.Visible = true;
                }
                ListAllLecturers.DataBind();
            }
        }

        private DataTable GetProducts(string searchText)
        {
            //ResetProductView();

            Student_Table p = new Student_Table();
        
            object[] obj = new object[7];
            DataTable dt = new DataTable();
            dt.Columns.Add("Student_ID");
            dt.Columns.Add("First_Name");
            dt.Columns.Add("Surname");
            dt.Columns.Add("Address");
            dt.Columns.Add("Birthday");
            dt.Columns.Add("Gender");
            dt.Columns.Add("Grade");
            foreach (var product in db.Student_Table.Where(t => t.First_name == searchText || t.Surname == searchText || t.Student_ID.ToString() == searchText))
            {
                ResultFound = true;
                obj[0] = product.Student_ID;
                obj[1] = product.First_name;
                obj[2] = product.Surname;
                obj[3] = product.Address;
                obj[4] = product.Birthday;
                obj[5] = product.Gender;

              //  dt.Rows.Add(obj);
                grade = product.Grade_ID;
            
                    }
                foreach (var grades in db.Student_Grade.Where(t => t.Grade_ID == grade))
                {
               
                    obj[6] = grades.Result;
                    dt.Rows.Add(obj);
                }
            if (ResultFound == true)
            {
                return dt;
              
            }
            else
            {
                ErrorMessage.Text = "No Record Found for search term " + searchText + " in the Student database";
               // Errormessage.Text = "No Record found";
                return null;
            }
        }
        private DataTable GetLecturers(string searchText)
        {
            //  ResetProductView();
            //  Student_Table p = new Student_Table();
            //  lecturer p = new lecturer();
            Instructor_Table p = new Instructor_Table();

            object[] obj1 = new object[5];
            DataTable dt2 = new DataTable();
            dt2.Columns.Add("Lecturer ID");
            dt2.Columns.Add("First Name");
            dt2.Columns.Add("Surname");
            dt2.Columns.Add("Address");
            dt2.Columns.Add("Background");

            foreach (var lecturer in db.Instructor_Table.Where(t => t.First_Name == searchText || t.Surname == searchText || t.ID_Number.ToString()==searchText))
            {
                ResultFound1 = true;
                obj1[0] = lecturer.ID_Number;
                obj1[1] = lecturer.First_Name;
                obj1[2] = lecturer.Surname;
                obj1[3] = lecturer.Address;
                obj1[4] = lecturer.Background;


                dt2.Rows.Add(obj1);
            }
                if (ResultFound1 == true)
                {
                    return dt2;
                }


                //    obj[6] = grades.Result;
                //    dt.Rows.Add(obj);

                //if (ResultFound == true)
                //{


                //}
                else
                {
                    ErrorMessage.Text = "No Record Found for search term " + searchText + " in the Lecturer database";

                    return null;
                }
            
        }
        private void ResetProductView()
        {
            lstAllProducts.EditIndex = -1;
            lstAllProducts.DataSource = GetProducts("");
            lstAllProducts.DataBind();

            ListAllLecturers.EditIndex = -1;
            ListAllLecturers.DataSource = GetProducts("");
            ListAllLecturers.DataBind();
        }

        protected void lstAllProducts_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lstAllLecturers_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}