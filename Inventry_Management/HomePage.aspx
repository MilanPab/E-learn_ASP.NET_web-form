<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Inventry_Management.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     	<div class="home-twelve bg-img9">
		<div class="container">
			<div class="row">
				<div class="col-lg-5">
					<div class="home-text home12">
						<h2 class="title">Learn From Anywhere</h2>
						<p class="mb20">Technology is brining a massive wave of evolution on learning things on different ways.</p>
						<a class="btn btn-lg btn-thm3 rounded home12_btn mr10" href="Register.aspx">Get Started</a>
						<a class="btn btn-lg btn-dark rounded home12_btn" href="Course_Panel.aspx">Vıew Courses</a>
					</div>
				</div>
				<div class="col-lg-7">
					<div class="animated_img home12 pt70">
					  	<ul id="scene" class="scene">
							<li class="layer" data-depth="0.70"><a class="moveDown" href="#0"><img src="images/background/4.png" alt="PNGImg"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>


<section id="top-courses" class="top-courses pb30">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="main-title text-center">
                            <h3 class="mt0">Browse Our Top Courses</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">

                        <!-- FILTER BUTTONS -->
                        <div class="emply-text-sec">
                            <div class="row" id="masonry_abc">

                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>


                                        <div class="col-md-6 col-lg-4 col-xl-3 business design">
                                            <div class="top_courses">
                                                <div class="thumb">
                                                    <img class="img-whp" src="<%# Inventry_Management.Utils.GetImageUrl(Eval("imageUrl")) %>" alt="t1.jpg">
                                                    <div class="overlay">
                                                        <div class="tag">Best Seller</div>
                                                        <div class="icon"><span class="flaticon-like"></span></div>
                                                        <a class="tc_preview_course" href="/CourseDetail.aspx?id=<%# Eval("id") %>">Preview Course</a>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="tc_content">
                                                        <h5><%# Eval("name")%></h5>

                                                    </div>
                                                    <div class="tc_footer">

                                                        <div class="tc_price float-right"><%# Eval("isActive")%></div>
                                                    </div>
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


        <section class="our-blog">

            <div class="container px-lg-5">
                <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
                    <div class="m-4 m-lg-5">
                        <h1 class="display-5 fw-bold">Read a Latest News!</h1>
                        <p class="fs-4">Get a Latest News , Announcements  Updates Here. Learn And Skills Ups Yourself For Future Carrier Opportunities</p>
                        <a class="btn btn-primary btn-lg" href="News.aspx">Explore</a>
                    </div>
                </div>
            </div>

            </section>
</asp:Content>
