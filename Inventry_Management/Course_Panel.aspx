<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Course_Panel.aspx.cs" Inherits="Inventry_Management.Course_Panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>

        

    <!-- Courses List 2 -->
    <section class="courses-list2 pb40">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-8 col-xl-9">
                     
                    <div class="row courses_container style2">
                        <asp:Repeater ID="RepeaterCourse" runat="server">
                            <ItemTemplate>

                                <div class="col-lg-12 p0">
                            <div class="courses_list_content">
                                <div class="top_courses list">
                                    <div class="thumb">
                                        <img class="img-whp" height="200" width="200" src="<%# Inventry_Management.Utils.GetImageUrl(Eval("imageUrl")) %>" alt="t1.jpg">
                                        <div class="overlay">
                                            <div class="icon"><span class="flaticon-like"></span></div>
                                            <a class="tc_preview_course" href="/CourseDetail.aspx?id=<%# Eval("id") %>">Preview Course</a>
                                        </div>
                                    </div>
                                    <div class="details" runat="server" OnClick="div_click">
                                        <div class="tc_content">
                                             <h5 ><a ID="a_title" runat="server" href="/CourseDetail.aspx"> <%# Eval("name") %></a> </h5>
                                            
                                            <p><%# Eval("details") %></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>   
                       
                    </div>
                </div>
               
                                
                                            
                                            
                                            
                                 
                    
                   
                    >
                   
    </section>

    </main>
</asp:Content>
