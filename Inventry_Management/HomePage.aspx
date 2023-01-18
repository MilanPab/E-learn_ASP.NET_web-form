<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Inventry_Management.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="wrapper">
        <div class="preloader"></div>
       
        <!-- Modal -->
        <div class="sign_up_modal modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <ul class="sign_up_tab nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Register</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="login_form">
                                <form action="#">
                                    <div class="heading">
                                        <h3 class="text-center">Login to your account</h3>
                                        <p class="text-center">Don't have an account? <a class="text-thm" href="#">Sign Up!</a></p>
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email Address">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                    <div class="form-group form-check">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Remember me</label>
                                        <a class="tdu text-thm float-right" href="#">Forgot Password?</a>
                                    </div>
                                    <button type="submit" class="btn btn-log btn-block btn-thm2">Login</button>
                                    <hr>
                                    <div class="row mt40">
                                        <div class="col-lg">
                                            <button type="submit" class="btn btn-block color-white bgc-fb"><i class="fa fa-facebook float-left mt5"></i>Facebook</button>
                                        </div>
                                        <div class="col-lg">
                                            <button type="submit" class="btn btn-block color-white bgc-gogle"><i class="fa fa-google float-left mt5"></i>Google</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="sign_up_form">
                                <div class="heading">
                                    <h3 class="text-center">Create New Account</h3>
                                    <p class="text-center">Have an account? <a class="text-thm" href="#">Login</a></p>
                                </div>
                                <form action="#">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="exampleInputName1" placeholder="Username">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email Address">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Confirm Password">
                                    </div>
                                    <div class="form-group form-check">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck2">
                                        <label class="form-check-label" for="exampleCheck2">Want to become an instructor?</label>
                                    </div>
                                    <button type="submit" class="btn btn-log btn-block btn-thm2">Register</button>
                                    <hr>
                                    <div class="row mt40">
                                        <div class="col-lg">
                                            <button type="submit" class="btn btn-block color-white bgc-fb"><i class="fa fa-facebook float-left mt5"></i>Facebook</button>
                                        </div>
                                        <div class="col-lg">
                                            <button type="submit" class="btn btn-block color-white bgc-gogle"><i class="fa fa-google float-left mt5"></i>Google</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Search Button Bacground Overlay -->
        <div class="search_overlay dn-992">
            <div class="mk-fullscreen-search-overlay" id="mk-search-overlay">
                <a href="#" class="mk-fullscreen-close" id="mk-fullscreen-close-button"><i class="fa fa-times"></i></a>
                <div id="mk-fullscreen-search-wrapper">
                    <form method="get" id="mk-fullscreen-searchform">
                        <input type="text" value="" placeholder="Search courses..." id="mk-fullscreen-search-input">
                        <i class="flaticon-magnifying-glass fullscreen-search-icon">
                            <input value="" type="submit"></i>
                    </form>
                </div>
            </div>
        </div>

        <!-- Main Header Nav For Mobile -->
        <div id="page" class="stylehome1 h0">
            <div class="mobile-menu">
                <div class="header stylehome1 home5">
                    <div class="main_logo_home2">
                        <img class="nav_logo_img img-fluid float-left mt20" src="images/header-logo2.png" alt="header-logo2.png">
                        <span>edumy</span>
                    </div>
                    <ul class="menu_bar_home2 home5">
                        <li class="list-inline-item">
                            <div class="search_overlay">
                                <a id="search-button-listener2" class="mk-search-trigger mk-fullscreen-trigger" href="#">
                                    <div id="search-button2"><i class="flaticon-magnifying-glass color-dark"></i></div>
                                </a>
                                <div class="mk-fullscreen-search-overlay" id="mk-search-overlay2">
                                    <a href="#" class="mk-fullscreen-close" id="mk-fullscreen-close-button2"><i class="fa fa-times"></i></a>
                                    <div id="mk-fullscreen-search-wrapper2">
                                        <form method="get" id="mk-fullscreen-searchform2">
                                            <input type="text" value="" placeholder="Search courses..." id="mk-fullscreen-search-input2">
                                            <i class="flaticon-magnifying-glass fullscreen-search-icon">
                                                <input value="" type="submit"></i>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-inline-item"><a href="#menu"><span></span></a></li>
                    </ul>
                </div>
            </div>
            <!-- /.mobile-menu -->
            <nav id="menu" class="stylehome1">
                <ul>
                    <li><span>Home</span>
                        <ul>
                            <li><a href="index.html">Home 1</a></li>
                            <li><a href="index2.html">Home 2</a></li>
                            <li><a href="index3.html">Home 3</a></li>
                            <li><a href="index4.html">Home 4</a></li>
                            <li><a href="index5.html">Home 5</a></li>
                            <li><a href="index6.html">Home - University</a></li>
                            <li><a href="index7.html">Home College</a></li>
                            <li><a href="index8.html">Home Kindergarten</a></li>

                            <li><span>Update New Homepages</span>
                                <ul>
                                    <li><a href="index9.html">New Home 01</a></li>
                                    <li><a href="index10.html">New Home 02</a></li>
                                    <li><a href="index11.html">New Home 03</a></li>
                                    <li><a href="index12.html">New Home 04</a></li>
                                    <li><a href="index13.html">New Home 05</a></li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li><span>Courses</span>
                        <ul>
                            <li><span>Courses List</span>
                                <ul>
                                    <li><a href="page-course-v1.html">Courses v1</a></li>
                                    <li><a href="page-course-v2.html">Courses v2</a></li>
                                    <li><a href="page-course-v3.html">Courses v3</a></li>
                                </ul>
                            </li>
                            <li><span>Courses Single</span>
                                <ul>
                                    <li><a href="page-course-single-v1.html">Single V1</a></li>
                                    <li><a href="page-course-single-v2.html">Single V2</a></li>
                                    <li><a href="page-course-single-v3.html">Single V3</a></li>
                                    <li><a href="page-course-single-v4.html">New Single V4</a></li>
                                    <li><a href="page-course-single-v5.html">New Single V5</a></li>
                                    <li><a href="page-course-single-v6.html">New Single V6</a></li>
                                    <li><a href="page-course-single-v7.html">New Single V7</a></li>
                                </ul>
                            </li>
                            <li><a href="page-instructors.html">Instructors</a></li>
                            <li><a href="page-instructors-single.html">Instructor Single</a></li>
                        </ul>
                    </li>
                    <li><span>Events</span>
                        <ul>
                            <li><a href="page-event.html">Event List</a></li>
                            <li><a href="page-event-single.html">Event Single</a></li>
                        </ul>
                    </li>
                    <li><span>Pages</span>
                        <ul>
                            <li><span>Shop Pages</span>
                                <ul>
                                    <li><a href="page-shop.html">Shop</a></li>
                                    <li><a href="page-shop-single.html">Shop Single</a></li>
                                    <li><a href="page-shop-cart.html">Cart</a></li>
                                    <li><a href="page-shop-checkout.html">Checkout</a></li>
                                    <li><a href="page-shop-order.html">Order</a></li>
                                </ul>
                            </li>
                            <li><span>User Admin</span>
                                <ul>
                                    <li><a href="page-dashboard.html">Dashboard</a></li>
                                    <li><a href="page-my-courses.html">My Courses</a></li>
                                    <li><a href="page-my-order.html">My Order</a></li>
                                    <li><a href="page-my-message.html">My Message</a></li>
                                    <li><a href="page-my-review.html">My Review</a></li>
                                    <li><a href="page-my-bookmarks.html">My Bookmarks</a></li>
                                    <li><a href="page-my-listing.html">My Listing</a></li>
                                    <li><a href="page-my-setting.html">My Setting</a></li>
                                </ul>
                            </li>
                            <li><a href="page-about.html">About Us</a></li>
                            <li><a href="page-gallery.html">Gallery</a></li>
                            <li><a href="page-gallery2.html">Video Gallery</a></li>
                            <li><a href="page-faq.html">Faq</a></li>
                            <li><a href="page-login.html">LogIn</a></li>
                            <li><a href="page-login2.html">New LogIn V2</a></li>
                            <li><a href="page-login3.html">New LogIn V3</a></li>
                            <li><a href="page-login4.html">New LogIn V4</a></li>
                            <li><a href="page-register.html">Register</a></li>
                            <li><a href="page-pricing.html">Membership</a></li>
                            <li><a href="page-error.html">404 Page</a></li>
                            <li><a href="page-terms.html">Terms and Conditions</a></li>
                            <li><a href="page-become-instructor.html">Become an Instructor</a></li>
                            <li><a href="page-ui-element.html">UI Elements</a></li>
                        </ul>
                    </li>
                    <li><span>Blog</span>
                        <ul>
                            <li><a href="page-blog-v1.html">Blog List 1</a></li>
                            <li><a href="page-blog-grid.html">Blog List 2</a></li>
                            <li><a href="page-blog-list.html">Blog List 3</a></li>
                            <li><a href="page-blog-list2.html">New Blog List 4</a></li>
                            <li><a href="page-blog-list3.html">New Blog List 5</a></li>
                            <li><a href="page-blog-list4.html">New Blog List 6</a></li>
                            <li><a href="page-blog-single.html">Single Post</a></li>
                        </ul>
                    </li>
                    <li><a href="page-contact.html">Contact</a></li>
                    <li><a href="page-login.html"><span class="flaticon-user"></span>Login</a></li>
                    <li><a href="page-register.html"><span class="flaticon-edit"></span>Register</a></li>
                </ul>
            </nav>
        </div>

        <!-- Home Design -->
        <section style="background-image: url(Admin/assets/images/coover.jpg);background-size:100%;" class="home-five bg-img5;">
            <div class="home-twelve bg-img9">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="home-text home12">
                                <h2 class="title">Learn From Anywhere</h2>
                                <p class="mb20">Technology is brining a massive wave of evolution on learning things on different ways.</p>
                                <a style="color:white;" class="btn btn-lg btn-thm3 rounded home12_btn mr10" href="#"><span>Get Started</span></a>
                                <a style="color: white;" class="btn btn-lg btn-dark rounded home12_btn" href="#"><span>View Courses</span></a>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="animated_img home12 pt70">
                                <ul id="scene" class="scene">
                                    <li class="layer" data-depth="0.70"><a class="moveDown" href="#0">
                                        <img src="images/background/4.png" alt="PNGImg"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>


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
                        <div id="options" class="alpha-pag full">
                            <div class="option-isotop">
                                <ul id="filter" class="option-set" data-option-key="filter">
                                    <li class="list-inline-item"><a href="#all" data-option-value="*" class="selected">Developer</a></li>
                                    <li class="list-inline-item"><a href="#business" data-option-value=".business">Business</a></li>
                                    <li class="list-inline-item"><a href="#design" data-option-value=".design">Design</a></li>
                                    <li class="list-inline-item"><a href="#web" data-option-value=".web">Web</a></li>
                                    <li class="list-inline-item"><a href="#marketing" data-option-value=".marketing">Marketing</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FILTER BUTTONS -->
                        <div class="emply-text-sec">
                            <div class="row" id="masonry_abc">
                                <div class="col-md-6 col-lg-4 col-xl-3 business design">
                                    <div class="top_courses">
                                        <div class="thumb">
                                            <img class="img-whp"  src="Admin/assets/images/web.jpg" alt="t1.jpg">
                                            <div class="overlay">
                                                <div class="tag">Best Seller</div>
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="#">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <h5>Introduction Web Design with HTML</h5>
                                                <ul class="tc_review">
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">(6)</a></li>
                                                </ul>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">1548</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">25</a></li>
                                                </ul>
                                                <div class="tc_price float-right">available</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 business marketing">
                                    <div class="top_courses">
                                        <div class="thumb">
                                            <img class="img-whp" src="Admin/assets/images/androidd.jpg" alt="t2.jpg">
                                            <div class="overlay">
                                                <div class="tag">Top Seller</div>
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="#">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <h5>Designing a Responsive Mobile Website with Muse</h5>
                                                <ul class="tc_review">
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">(6)</a></li>
                                                </ul>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">1548</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">25</a></li>
                                                </ul>
                                                <div class="tc_price float-right">available</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 web design">
                                    <div class="top_courses">
                                        <div class="thumb">
                                            <img class="img-whp"  src="Admin/assets/images/adobee.jpg" alt="t3.jpg">
                                            <div class="overlay">
                                                <div class="tag">Top Seller</div>
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="#">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <h5>Adobe XD: Prototyping Tips and Tricks</h5>
                                                <ul class="tc_review">
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">(6)</a></li>
                                                </ul>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">157</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">20</a></li>
                                                </ul>
                                                <div class="tc_price float-right">available</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 business Web">
                                    <div class="top_courses">
                                        <div class="thumb">
                                            <img class="img-whp" src="Admin/assets/images/AIi.jpg" alt="t4.jpg">
                                            <div class="overlay">
                                                <div class="tag">Best Seller</div>
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="#">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <h5>Artificial Intelligence (AI)</h5>
                                                <ul class="tc_review">
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">(6)</a></li>
                                                </ul>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">112</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">18</a></li>
                                                </ul>
                                                <div class="tc_price float-right">available</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 marketing">
                                    <div class="top_courses">
                                        <div class="thumb">
                                            <img class="img-whp" src="Admin/assets/images/laravel.jpg" alt="t5.jpg">
                                            <div class="overlay">
                                                <div class="tag">Best Seller</div>
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="#">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <h5>Web Development using rect</h5>
                                                <ul class="tc_review">
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">(6)</a></li>
                                                </ul>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">543</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">67</a></li>
                                                </ul>
                                                <div class="tc_price float-right">available</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 business marketing">
                                    <div class="top_courses">
                                        <div class="thumb">
                                            <img class="img-whp" src="Admin/assets/images/rectt.jpg" alt="t6.jpg">
                                            <div class="overlay">
                                                <div class="tag">Top Seller</div>
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="#">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <h5>How to be a DJ? Make Electronic Music</h5>
                                                <ul class="tc_review">
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">(6)</a></li>
                                                </ul>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">480</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">50</a></li>
                                                </ul>
                                                <div class="tc_price float-right">available</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 design Web">
                                    <div class="top_courses">
                                        <div class="thumb">
                                            <img class="img-whp" src="Admin/assets/images/cloudcomputing.jpg" alt="t7.jpg">
                                            <div class="overlay">
                                                <div class="tag">Top Seller</div>
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="#">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <h5>How to Make Beautiful Landscape Photos?</h5>
                                                <ul class="tc_review">
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">(6)</a></li>
                                                </ul>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">326</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">29</a></li>
                                                </ul>
                                                <div class="tc_price float-right">available</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 business">
                                    <div class="top_courses">
                                        <div class="thumb">
                                            <img class="img-whp" src="Admin/assets/images/marketing.jpg" alt="t8.jpg">
                                            <div class="overlay">
                                                <div class="tag">Best Seller</div>
                                                <div class="icon"><span class="flaticon-like"></span></div>
                                                <a class="tc_preview_course" href="#">Preview Course</a>
                                            </div>
                                        </div>
                                        <div class="details">
                                            <div class="tc_content">
                                                <p>Ali TUFAN</p>
                                                <h5>Fashion Photography From Professional</h5>
                                                <ul class="tc_review">
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">(6)</a></li>
                                                </ul>
                                            </div>
                                            <div class="tc_footer">
                                                <ul class="tc_meta float-left">
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-profile"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">548</a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="flaticon-comment"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">68</a></li>
                                                </ul>
                                                <div class="tc_price float-right">available</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        
        

        
       

       

        <!-- Our Blog -->
        <section class="our-blog">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="main-title text-center">
                            <h3 class="mt0">Latest News And Events</h3>
                            <p>Get Latest news around the world..</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-xl-6">
                        <div class="blog_slider_home1">
                            <div class="item">
                                <div class="blog_post one">
                                    <div class="thumb">
                                        <div class="post_title">Politics</div>
                                        <img class="img-fluid w100" src="Admin/assets/images/trump.jpg" alt="1.jpg">
                                        <a class="post_date" href="#"><span>2nd
                                            <br>
                                            April</span></a>
                                    </div>
                                    <div class="details">
                                        <div class="post_meta">
                                            <ul>
                                                <li class="list-inline-item"><a href="#"><i class="flaticon-calendar"></i>11:35 am - 11:55 pm</a></li>
                                                <li class="list-inline-item"><a href="#"><i class="flaticon-placeholder"></i>California, USA</a></li>
                                            </ul>
                                        </div>
                                        <h4>Trump Announce scholarship for ten thousand student for B-Tech and BBA.fill form from here...</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="blog_post one">
                                    <div class="thumb">
                                        <div class="post_title">Blog</div>
                                        <img class="img-fluid w100" src="images/img-6.png">
                                        <a class="post_date" href="#"><span>8th
                                            <br>
                                            january</span></a>
                                    </div>
                                    <div class="details">
                                        <div class="post_meta">
                                            <ul>
                                                <li class="list-inline-item"><a href="#"><i class="flaticon-calendar"></i>8:15 am - 7:00 pm</a></li>
                                                <li class="list-inline-item"><a href="#"><i class="flaticon-placeholder"></i>Sindhuli, Nepal</a></li>
                                            </ul>
                                        </div>
                                        <h4>Now, we can enjoy our hill road trip in bikes!, Yes Renting serving is here</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="blog_post one">
                                    <div class="thumb">
                                        <div class="post_title">Scholarship</div>
                                        <img class="img-fluid w100" src="Admin/assets/images/graduate.jpg"  alt="1b.jpg">
                                        <a class="post_date" href="#"><span>15
                                            <br>
                                            August</span></a>
                                    </div>
                                    <div class="details">
                                        <div class="post_meta">
                                            <ul>
                                                <li class="list-inline-item"><a href="#"><i class="flaticon-calendar"></i>1:00 pm - 2:45 pm</a></li>
                                                <li class="list-inline-item"><a href="#"><i class="flaticon-placeholder"></i>Vancouver, Canada</a></li>
                                            </ul>
                                        </div>
                                        <h4>Ten thousand students are sucessfull to clear BBVA examination, more than 30% students are fail..</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 col-xl-3">
                        <div class="blog_post">
                            <div class="thumb">
                                <img class="img-fluid w100" src="images/blog/2.jpg" alt="2.jpg">
                                <a class="post_date" href="#">July 21, 2019</a>
                            </div>
                            <div class="details">
                                <h5>Marketing</h5>
                                <h4>A Solution Built for Teachers</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 col-xl-3">
                        <div class="blog_post">
                            <div class="thumb">
                                <img class="img-fluid w100" src="images/blog/3.jpg" alt="3.jpg">
                                <a class="post_date" href="#">July 21, 2019</a>
                            </div>
                            <div class="details">
                                <h5>Tips</h5>
                                <h4>An Overworked Newspaper Editor</h4>
                            </div>
                        </div>
                    </div>
                </div>
                
           

        

       

        <!-- Feedback -->
        <section id="our-newslatters" class="our-newslatters">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="main-title text-center">
                            <h3 class="mt0">Feedback for Us</h3>
                            <p>Your feedback will be taken as main priority for the development of website.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="footer_apps_widget_home1">
                            <form class="form-inline mailchimp_form">
                                <input type="text" class="form-control" placeholder="write your suggestions...">
                                <button type="submit" class="btn btn-lg btn-thm dbxshad">Drop Feedback <span class="flaticon-right-arrow-1"></span></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        
        

        
        

	
</asp:Content>
