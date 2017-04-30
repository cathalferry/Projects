<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CourseTimetable._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    
    <div class="jumbotron">
        <h1><strong>
            <img alt="" src="file:///C:/Users/User/Pictures/logo.bmp" style="width: 750px; height: 96px; text-align: center" /></strong></h1>
        <h1>CourseTimetable Home</h1>
        <p class="lead">Welcome to the CourseTimetable.ie webpage, review and select the various options available. To get started, why not select the reprts button below to view reports?</p>
        <p><a href="http://localhost:10005/REPORTS" class="btn btn-primary btn-lg">View Reports &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Course Options</h2>
            <p>
                In this page you can view all courses, edit, update and delete records.</p>
            <p>
                <a class="btn btn-default" href="http://localhost:10005/course.aspx">Go&raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Student Options</h2>
            <p>
                it is possbile to view all student records, delete, edit or update them</p>
            <p>
                <a class="btn btn-default" href="http://localhost:10005/student.aspx">Go»</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Lecturer Options</h2>
            <p>
                View Lecturer related information from database</p>
            <p>
                <a class="btn btn-default" href="http://localhost:10005/lecturers.aspx">Go»</a>
            </p>
            
        </div>
   
   
        <div class="col-md-4">
            <h2>Classroom Options</h2>
            <p>
                View Classroom related information from database</p>
            <p>
                <a class="btn btn-default" href="http://localhost:10005/classrooms.aspx">Go»</a></p>
            </div>
          <div class="col-md-4">
            <h2>Timetable Options</h2>
            <p> View Timetable related information from database</p>
              <p>
                <a class="btn btn-default" href="http://localhost:10005/timetables.aspx">Go»</a>
              </p>
              </div>
        <div class="col-md-4">
            <h2>View Users</h2>
            <p> View all registered users</p>
            <p>
                <a class="btn btn-default" href="http://localhost:10005/user.aspx">Go»</a>
            </p>
    </div>
    
    </div>
</asp:Content>
