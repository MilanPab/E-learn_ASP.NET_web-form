<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CourseDetail.aspx.cs" EnableEventValidation="false" Inherits="Inventry_Management.CourseDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!-- Our Team Members -->



    <section class="course-single2 pb40" runat="server">
        <div class="container">
            <div class="row">

                <asp:Repeater ID="RepeaterSingleCourse" runat="server">
                                        <ItemTemplate>


                        <div class="col-md-12 col-lg-8 col-xl-9">
                            <div class="row">
                                <div class="col-lg-12">


                                    <div class="courses_single_container">


                                        <div class="cs_row_one">
                                            <div class="cs_ins_container">
                                                <div class="courses_big_thumb">
                                                    <div class="thumb">
                                                        <img src="<%# Inventry_Management.Utils.GetImageUrl(Eval("imageUrl")) %>" alt="t1.jpg" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

 

                                        <div class="cs_rwo_tabs csv2">
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="Overview-tab" data-toggle="tab" href="#Overview" role="tab" aria-controls="Overview" aria-selected="true">Overview</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="course-tab" data-toggle="tab" href="#course" role="tab" aria-controls="course" aria-selected="false">Course Content</a>
                                                </li>

                                            </ul>
                                            <div class="tab-content" id="myTabContent" runat="server">
                                                <div class="tab-pane fade show active" id="Overview" role="tabpanel" aria-labelledby="Overview-tab">
                                                    <div class="cs_row_two csv2">
                                                        <div class="cs_overview">
                                                            <h4 class="title"><%# Eval("name") %></h4>
                                                            <h4 class="subtitle">Course Description</h4>
                                                            <p class="mb30" runat="server"><%# Eval("details") %> </p>

                                                            <h4 class="subtitle">Requirements</h4>
                                                            <ul class="list_requiremetn">
                                                                <li><i class="fa fa-circle"></i>
                                                                    <p>You will need a copy of Adobe XD 2019 or above. A free trial can be downloaded from Adobe.</p>
                                                                </li>
                                                                <li><i class="fa fa-circle"></i>
                                                                    <p>No previous design experience is needed.</p>
                                                                </li>
                                                                <li><i class="fa fa-circle"></i>
                                                                    <p>No previous Adobe XD skills are needed.</p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade" id="course" role="tabpanel" aria-labelledby="review-tab">
                                                    <div class="cs_row_three csv2">
                                                        <div class="course_content">
                                                            <div class="cc_headers">
                                                                <h4 class="title">Course Content</h4>
                                                                <ul class="course_schdule float-right">
                                                                    <li class="list-inline-item"><a href="#">92 Lectures</a></li>
                                                                    <li class="list-inline-item"><a href="#">10:56:11</a></li>
                                                                </ul>
                                                            </div>
                                                            <br>
                                                            <div class="details">
                                                                <div id="accordion" class="panel-group cc_tab">
                                                                    <div class="panel">
                                                                        <div class="panel-heading">
                                                                            <h4 class="panel-title">
                                                                                <a href="#panelBodyCourseStart" class="accordion-toggle link" data-toggle="collapse" data-parent="#accordion">Getting Started</a>
                                                                            </h4>
                                                                        </div>
                                                                        <div id="panelBodyCourseStart" class="panel-collapse collapse show">
                                                                            <div class="panel-body">
                                                                                <ul class="cs_list mb0">
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.1 Introduction to the User Experience Course <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.2 Exercise: Your first design challenge <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.3 How to solve the previous exercise <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.4 Find out why smart objects are amazing <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.5 How to use text layers effectively <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="details">
                                                                <div id="accordion" class="panel-group cc_tab">
                                                                    <div class="panel">
                                                                        <div class="panel-heading">
                                                                            <h4 class="panel-title">
                                                                                <a href="#panelBodyCourseBrief" class="accordion-toggle link" data-toggle="collapse" data-parent="#accordion">The Brief</a>
                                                                            </h4>
                                                                        </div>
                                                                        <div id="panelBodyCourseBrief" class="panel-collapse collapse">
                                                                            <div class="panel-body">
                                                                                <ul class="cs_list mb0">
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.1 Introduction to the User Experience Course <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.2 Exercise: Your first design challenge <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.3 How to solve the previous exercise <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.4 Find out why smart objects are amazing <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.5 How to use text layers effectively <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="details">
                                                                <div id="accordion" class="panel-group cc_tab">
                                                                    <div class="panel">
                                                                        <div class="panel-heading">
                                                                            <h4 class="panel-title">
                                                                                <a href="#panelBodyCourseLow" class="accordion-toggle link" data-toggle="collapse" data-parent="#accordion">Wireframing Low Fidelity</a>
                                                                            </h4>
                                                                        </div>
                                                                        <div id="panelBodyCourseLow" class="panel-collapse collapse">
                                                                            <div class="panel-body">
                                                                                <ul class="cs_list mb0">
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.1 Introduction to the User Experience Course <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.2 Exercise: Your first design challenge <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.3 How to solve the previous exercise <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.4 Find out why smart objects are amazing <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.5 How to use text layers effectively <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="details">
                                                                <div id="accordion" class="panel-group cc_tab">
                                                                    <div class="panel">
                                                                        <div class="panel-heading">
                                                                            <h4 class="panel-title">
                                                                                <a href="#panelBodyCourseType" class="accordion-toggle link" data-toggle="collapse" data-parent="#accordion">Type, Color & Icon Introduction</a>
                                                                            </h4>
                                                                        </div>
                                                                        <div id="panelBodyCourseType" class="panel-collapse collapse">
                                                                            <div class="panel-body">
                                                                                <ul class="cs_list mb0">
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.1 Introduction to the User Experience Course <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.2 Exercise: Your first design challenge <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.3 How to solve the previous exercise <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.4 Find out why smart objects are amazing <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                    <li><a href="#"><span class="flaticon-play-button-1 icon"></span>Lecture1.5 How to use text layers effectively <span class="cs_time">02:53</span> <span class="cs_preiew">Preview</span></a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>


                                    </div>


                                </div>
                            </div>




                        </div>



                    </ItemTemplate>

                </asp:Repeater>

                <div class="col-lg-4 col-xl-3">
                    <div class="instructor_pricing_widget csv2" style="margin-top: 20px">
                        <asp:Button ID="Button1" runat="server" Style="width: 100%; cursor: pointer" OnClick="Button1_Click" class="cart_btnss_white" Text="Enroll"/>
                        <h5 class="subtitle text-left">Includes</h5>
                        <ul class="price_quere_list text-left">
                            <li><a href="#"><span class="flaticon-play-button-1"></span>On-demand video</a></li>

                            <li><a href="#"><span class="flaticon-key-1"></span>Full lifetime access</a></li>
                            <li><a href="#"><span class="flaticon-responsive"></span>Access on mobile and TV</a></li>

                        </ul>
                    </div>

                    <div class="feature_course_widget csv1">
                        <ul class="list-group">
                            <h4 class="title">Course Features</h4>
                            <li class="d-flex justify-content-between align-items-center">Lectures <span class="float-right">6</span>
                            </li>

                            <li class="d-flex justify-content-between align-items-center">Duration <span class="float-right">3 hours</span>
                            </li>

                            <li class="d-flex justify-content-between align-items-center">Language <span class="float-right">English</span>
                            </li>

                        </ul>
                    </div>

                </div>




            </div>
        </div>
    </section>



</asp:Content>
