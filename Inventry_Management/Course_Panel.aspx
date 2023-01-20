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
                        <div class="row courses_list_heading style2">
                            <div class="col-xl-4 p0">
                                <div class="instructor_search_result style2">
                                    <p class="mt10 fz15"><span class="color-dark pr10">85 </span>results <span class="color-dark pr10">1,236</span> Video Tutorials</p>
                                </div>
                            </div>
                            <div class="col-xl-8 p0">
                                <div class="candidate_revew_select style2 text-right">
                                    <ul class="mb0">
                                        <li class="list-inline-item">
                                            <select class="selectpicker show-tick">
                                                <option>Newly published</option>
                                                <option>Recent</option>
                                                <option>Old Review</option>
                                            </select>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="candidate_revew_search_box course fn-520">
                                                <form class="form-inline my-2 my-lg-0">
                                                    <input class="form-control mr-sm-2" type="search" placeholder="Search our instructors" aria-label="Search">
                                                    <button class="btn my-2 my-sm-0" type="submit"><span class="flaticon-magnifying-glass"></span></button>
                                                </form>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row courses_container style2">
                            <div class="col-lg-12 p0">
                                <div class="courses_list_content">
                                    <div class="top_courses list">
                                        <div class="thumb">
                                            <img class="img-whp" src="images/courses/t1.jpg" alt="t1.jpg">
                                            <div class="overlay">
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="/CourseDetail.aspx">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details" runat="server" onclick="div_click">
                                            <div class="tc_content">
                                                <asp:Label ID="Label1" runat="server" Text="Ali Tufan"></asp:Label>
                                                <h5><a id="a_title" runat="server" href="/CourseDetail.aspx">Web Design with HTML</a> <span class="tag">Best Seller</span></h5>

                                                <p>Learn how to build prototypes in Sketch. Find out how to prototype an image carousel for a website or mobile app, with these Sketch prototyping tips.</p>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left fn-414">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">1548</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">25</a></li>
                                                </ul>
                                                <div class="tc_price float-right fn-414">free</div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 p0">
                                <div class="courses_list_content">
                                    <div class="top_courses list">
                                        <div class="thumb">
                                            <img class="img-whp" src="images/courses/t2.jpg" alt="t2.jpg">
                                            <div class="overlay">
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="/CourseDetail.aspx">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <%--<h5>Designing a Responsive Mobile Website with Muse</h5>--%>
                                                <asp:Label ID="Label3" runat="server" Text="Designing a Responsive Mobile Website with Muse"></asp:Label>
                                                <%--<p>Learn how to build prototypes in Sketch. Find out how to prototype an image carousel for a website or mobile app, with these Sketch prototyping tips.</p>--%>
                                                <asp:Label ID="Label4" runat="server" Text="Learn how to build prototypes in Sketch. Find out how to prototype an image carousel for a website or mobile app, with these Sketch prototyping tips."></asp:Label>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left fn-414">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">1548</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">25</a></li>
                                                </ul>
                                                <div class="tc_price float-right fn-414">free</div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 p0">
                                <div class="courses_list_content">
                                    <div class="top_courses list">
                                        <div class="thumb">
                                            <img class="img-whp" src="images/courses/t3.jpg" alt="t3.jpg">
                                            <div class="overlay">
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="/CourseDetail.aspx">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">

                                                <asp:Label ID="Label2" runat="server" Text="Ali TUFAN"></asp:Label>
                                                <h5 runat="server" id="h5">Sketch: Creating Responsive SVG</h5>
                                                <p>Learn how to build prototypes in Sketch. Find out how to prototype an image carousel for a website or mobile app, with these Sketch prototyping tips.</p>
                                                <asp:Label ID="Label5" runat="server" Text="Learn how to build prototypes in Sketch. Find out how to prototype an image carousel for a website or mobile app, with these Sketch prototyping tips."></asp:Label>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left fn-414">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">1548</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">25</a></li>
                                                </ul>
                                                <div class="tc_price float-right fn-414">free</div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 p0">
                                <div class="courses_list_content">
                                    <div class="top_courses list">
                                        <div class="thumb">
                                            <img class="img-whp" src="images/courses/t4.jpg" alt="t4.jpg">
                                            <div class="overlay">
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="/CourseDetail.aspx">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <h5>Design Instruments for Communication</h5>
                                                <p>Learn how to build prototypes in Sketch. Find out how to prototype an image carousel for a website or mobile app, with these Sketch prototyping tips.</p>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left fn-414">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">1548</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">25</a></li>
                                                </ul>
                                                <div class="tc_price float-right fn-414"><span class="original_price">free</span> free</div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 p0">
                                <div class="courses_list_content">
                                    <div class="top_courses list">
                                        <div class="thumb">
                                            <img class="img-whp" src="images/courses/t5.jpg" alt="t5.jpg">
                                            <div class="overlay">
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="/CourseDetail.aspx">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <h5>How to be a DJ? Make Electronic Music</h5>
                                                <p>Learn how to build prototypes in Sketch. Find out how to prototype an image carousel for a website or mobile app, with these Sketch prototyping tips.</p>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left fn-414">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">1548</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">25</a></li>
                                                </ul>
                                                <div class="tc_price float-right fn-414"><span class="original_price">free</span> free</div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 p0">
                                <div class="courses_list_content">
                                    <div class="top_courses list">
                                        <div class="thumb">
                                            <img class="img-whp" src="images/courses/t6.jpg" alt="t6.jpg">
                                            <div class="overlay">
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="/CourseDetail.aspx">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <h5>How to Make Beautiful Landscape Photos?</h5>
                                                <p>Learn how to build prototypes in Sketch. Find out how to prototype an image carousel for a website or mobile app, with these Sketch prototyping tips.</p>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left fn-414">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">1548</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">25</a></li>
                                                </ul>
                                                <div class="tc_price float-right fn-414"><span class="original_price">free</span> free</div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 p0">
                                <div class="courses_list_content">
                                    <div class="top_courses list">
                                        <div class="thumb">
                                            <img class="img-whp" src="images/courses/t7.jpg" alt="t7.jpg">
                                            <div class="overlay">
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="/CourseDetail.aspx">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <h5>How to Make Beautiful Landscape Photos?</h5>
                                                <p>Learn how to build prototypes in Sketch. Find out how to prototype an image carousel for a website or mobile app, with these Sketch prototyping tips.</p>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left fn-414">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">1548</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">25</a></li>
                                                </ul>
                                                <div class="tc_price float-right fn-414"><span class="original_price">free</span> free</div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 mt50">
                                <div class="mbp_pagination">
                                    <ul class="page_navigation">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true"><span class="flaticon-left-arrow"></span>Prev</a>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item active" aria-current="page">
                                            <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#">...</a></li>
                                        <li class="page-item"><a class="page-link" href="#">14</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">Next <span class="flaticon-right-arrow-1"></span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xl-3">
                        <div class="selected_filter_widget style3 mb30">
                            <div id="accordion" class="panel-group">
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a href="#panelBodySoftware" class="accordion-toggle link fz20 mb15" data-toggle="collapse" data-parent="#accordion">Software</a>
                                        </h4>
                                    </div>
                                    <div id="panelBodySoftware" class="panel-collapse collapse show">
                                        <div class="panel-body">
                                            <div class="ui_kit_checkbox">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck14">
                                                    <label class="custom-control-label" for="customCheck14">Photoshop <span class="float-right">(03)</span></label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck15">
                                                    <label class="custom-control-label" for="customCheck15">Adobe Illustrator <span class="float-right">(15)</span></label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck16">
                                                    <label class="custom-control-label" for="customCheck16">Graphic Design <span class="float-right">(126)</span></label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck17">
                                                    <label class="custom-control-label" for="customCheck17">Sketch <span class="float-right">(1,584)</span></label>
                                                </div>



                                                <a class="color-orose" href="#"><span class="fa fa-plus pr10"></span>See More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="selected_filter_widget style3 mb30">
                            <div id="accordion" class="panel-group">
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a href="#panelBodySkills" class="accordion-toggle link fz20 mb15" data-toggle="collapse" data-parent="#accordion">Skill level</a>
                                        </h4>
                                    </div>
                                    <div id="panelBodySkills" class="panel-collapse collapse show">
                                        <div class="panel-body">
                                            <div class="ui_kit_checkbox">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck14">
                                                    <label class="custom-control-label" for="customCheck14">Beginner <span class="float-right">(03)</span></label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck15">
                                                    <label class="custom-control-label" for="customCheck15">Intermediate <span class="float-right">(15)</span></label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck16">
                                                    <label class="custom-control-label" for="customCheck16">Advanced <span class="float-right">(126)</span></label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck17">
                                                    <label class="custom-control-label" for="customCheck17">Appropriate for all <span class="float-right">(1,584)</span></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="selected_filter_widget style3">
                            <div id="accordion" class="panel-group">
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a href="#panelBodyRating" class="accordion-toggle link fz20 mb15" data-toggle="collapse" data-parent="#accordion">Rating</a>
                                        </h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="selected_filter_widget style4">
                            <span class="float-left">
                                <img class="mr20" src="images/resource/2.png" alt="2.png"></span>
                            <h4 class="mt15 fz20 fw500">Not sure?</h4>
                            <br>
                            <p>Every course comes with a 30-day money-back guarantee</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>
</asp:Content>
