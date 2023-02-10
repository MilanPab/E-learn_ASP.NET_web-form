<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Inventry_Management.News1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!-- Main Blog Post Content -->
    <section class="blog_post_container">
        <div class="container">

            <h1>News Headline</h1>
            <div class="row">
                <div class="col-lg-8 col-xl-9">
                    <div class="main_blog_post_content">
                        <div class="row">

                            <asp:Repeater ID="Repeater_News" runat="server">
                            <ItemTemplate>

                            <div class="col-sm-6 col-lg-6 col-xl-6" style="box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); border-radius: 5px; margin-bottom:10px;height:fit-content;">
                                <div class="blog_grid_post mb30">
                                     <div onclick="div1_clicked" class="details">
                                        <h3><a href="#"><%# Eval("news_title") %></a></h3>
                                    
                                        <p><%# Eval("news_des") %></p>
                                    </div>
                                </div>
                            </div>

                             

 
                            </ItemTemplate>
                        </asp:Repeater>
                            

                        </div>
                     </div>
                </div>




            </div>

        </div>
    </section>


</asp:Content>
