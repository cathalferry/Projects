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
       public decimal grade;
        public bool ResultFound;
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
                lstAllProducts.DataSource = GetProducts(searchText);
                if (lstAllProducts.Items.Count>0)
                {
                    lstAllProducts.Visible = true;
                }
                lstAllProducts.DataBind();
                }
        }

        private DataTable GetProducts(string searchText)
        {
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
            foreach (var product in db.Student_Table.Where(t => t.First_name == searchText || t.Surname == searchText))
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
                ErrorMessage.Text = "No Record Found for search term " + searchText + " in the database";
               // Errormessage.Text = "No Record found";
                return null;
            }
        }

        private void ResetProductView()
        {
            lstAllProducts.EditIndex = -1;
            lstAllProducts.DataSource = GetProducts("");
            lstAllProducts.DataBind();
        }

        protected void lstAllProducts_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}