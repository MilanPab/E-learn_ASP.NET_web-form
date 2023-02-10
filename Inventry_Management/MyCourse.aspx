<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="MyCourse.aspx.cs" Inherits="Inventry_Management.MyCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="my_course_content mb30">
        <div class="my_course_content_header">
            <div class="col-xl-4">
                <div class="instructor_search_result style2">
                    <h4 class="mt10">Enrolled Courses</h4>
                </div>
            </div>
            <div class="col-xl-8">
                <div class="candidate_revew_select style2 text-right">
                    <ul class="mb0">

                        <li class="list-inline-item">
                            <div class="candidate_revew_search_box course fn-520">
                                <form class="form-inline my-2 my-lg-0">
                                    <input class="form-control mr-sm-2" type="search" placeholder="Search your Courses.." aria-label="Search">
                                    <button class="btn my-2 my-sm-0" type="submit"><span class="flaticon-magnifying-glass"></span></button>
                                </form>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="my_course_content_list">

            <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>


                <div class="mc_content_list style2">
                    <div class="thumb">
                        <img class="img-whp" style="width: 307px; height: 200px" src="<%# Inventry_Management.Utils.GetImageUrl(Eval("imgUrl")) %>" alt="t1.jpg">
                        <div class="overlay">
                            <ul class="mb0">
                                <li class="list-inline-item">
                                    <a class="mcc_edit" href="MyCourse.aspx?id=<%# Eval("course_id") %>">Remove</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="mcc_view" href="/CourseDetail.aspx?id=<%# Eval("course_id") %>">View</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="details">
                        <div class="mc_content">
                            <h5 class="title"> <%# Eval("course_name") %><span><small class="tag">Published</small></span></h5>
                            <p><%# Eval("description") %></p>
                        </div>
                        <div class="mc_footer style2">


 
                        </div>
                    </div>
                </div>

                        </ItemTemplate>


        </asp:Repeater>
        </div>
    </div>



</asp:Content>
