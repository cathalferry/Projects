<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CourseTimetable._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
     <h1>
         <img src="logo.jpg" style="width: 1105px; height: 134px" /></h1>
    <div class="jumbotron">
       
        <h1>CourseTimetable Home</h1>
        <p class="lead">Welcome to the CourseTimetable.ie webpage, review and select the various options available.&nbsp; This website contains all the information and data held in the CourseTime table webpage. The options below allow you to view various tables in the database and edit, delete, create or update records or data entries. It is also possible to register new users, simply select the register option from the bar at the top of the page. </p>
        <p class="lead">You can view all reports created in the previos practical.</p>
        <p class="lead">To get started, why not select the reprts button below to view reports?</p>
        <p><a href="http://www.coursetimetable.ie/REPORTS" class="btn btn-primary btn-lg">View Reports &raquo;</a></p>
       

    <div class="row">
        <div class="col-md-4">
            <h2>Course Options</h2>
            <p>
                In this page you can view all courses, edit, update and delete records.</p>
            <p>
                <a class="btn btn-default" href="http://www.coursetimetable.ie/course.aspx">Go&raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Student Options</h2>
            <p>
                it is possbile to view all student records, delete, edit or update them</p>
            <p>
                <a class="btn btn-default" href="http://www.coursetimetable.ie/student.aspx">Go»</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Lecturer Options</h2>
            <p>
                View Lecturer related information from database</p>
            <p>
                <a class="btn btn-default" href="http://www.coursetimetable.ie/lecturers.aspx">Go»</a>
            </p>
            
        </div>
   
   
        <div class="col-md-4">
            <h2>Classroom Options</h2>
            <p>
                View Classroom related information from database</p>
            <p>
                <a class="btn btn-default" href="http://www.coursetimetable.ie/classrooms.aspx">Go»</a></p>
            </div>
          <div class="col-md-4">
            <h2>Timetable Options</h2>
            <p> View Timetable related information from database</p>
              <p>
                <a class="btn btn-default" href="http://www.coursetimetable.ie/timetables.aspx">Go»</a>
              </p>
              </div>
        <div class="col-md-4">
            <h2>View Users</h2>
            <p> View all registered users</p>
            <p>
                <a class="btn btn-default" href="http://www.coursetimetable.ie/user.aspx">Go»</a>
            </p>
    </div>
          <div class="col-md-4">
            <h2>Search Page</h2>
            <p> View search options</p>
            <p>
                <a class="btn btn-default" href="/search.aspx">Go»</a>
            </p>
    </div>
    </div>
     </div>
</asp:Content>
