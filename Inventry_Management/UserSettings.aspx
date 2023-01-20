<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="UserSettings.aspx.cs" Inherits="Inventry_Management.UserSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="our-dashbord dashbord pb50">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12 col-lg-4 col-xl-2 dn-smd pl0">
                    <div class="user_board">
                        <div class="user_profile">
                            <div class="media">
                                <div class="media-body">
                                    <h4 class="mt-0">Start</h4>
                                </div>
                            </div>
                        </div>
                        <div class="dashbord_nav_list">
                            <ul>
                                
                                <li><a href="page-my-courses.html"><span class="flaticon-online-learning"></span>My Courses</a></li>
                                
                                <li><a href="page-my-message.html"><span class="flaticon-speech-bubble"></span>Messages</a></li>
                                
                                
                                
                            </ul>
                            <h4>Account</h4>
                            <ul>
                                <li><a href="page-login.html"><span class="flaticon-logout"></span>Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-lg-8 col-xl-10">
                    <div class="row">
                        <div class="col-lg-12">
                            <nav class="breadcrumb_widgets" aria-label="breadcrumb mb30">
                                <h4 class="title float-left">User Profile</h4>
                                <ol class="breadcrumb float-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                                </ol>
                            </nav>
                        </div>
                        <div class="col-lg-12">
                            <div class="my_course_content_container">
                                <div class="my_setting_content mb30">
                                    <div class="my_setting_content_header">
                                        <div class="my_sch_title">
                                            <h4 class="m0">Personal Details</h4>
                                        </div>
                                    </div>
                                    <div class="row my_setting_content_details pb0">
                                        <div class="col-xl-2">
                                            <div class="wrap-custom-file">
                                                <input type="file" name="image1" id="image1" accept=".gif, .jpg, .png" />
                                                <label for="image1">
                                                    <span>Browse</span>
                                                </label>
                                                
                                            </div>
                                        </div>
                                        
                                        <div class="col-xl-10">
                                            <div class="row">
                                                <div class="col-xl-6">
                                                    <div class="my_profile_setting_input form-group">
                                                        <label for="formGroupExampleInput1" >Full Name</label>
                                                        <input type="text" class="form-control" ID="full_name" runat="server">
                                                    </div>
                                                    
                                                    <div class="my_profile_setting_input form-group">
                                                        <label for="exampleInputPhone">Phone</label>
                                                        <input type="text" class="form-control" ID="phone_number" runat="server" aria-describedby="phoneNumber">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="my_resume_textarea">
                                                <div class="form-group">
                                                    <label for="exampleFormControlTextarea1">Personal info</label>
                                                    <textarea class="form-control" ID="user_info" runat="server" rows="7"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="my_setting_content_header style2">
                                        <div class="my_sch_title">
                                            <h4 class="m0">Change password</h4>
                                        </div>
                                    </div>
                                    <div class="row my_setting_content_details pb0">
                                        <div class="col-xl-6">
                                            <div class="password_change_form">
                                                <form>
                                                    
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword2">New Password</label>
                                                        <input type="password" class="form-control" ID="password" runat="server">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword3">Confirm Password</label>
                                                        <input type="password" class="form-control mb0" ID="con_password" runat="server">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="my_setting_content_header style3">
                                        <div class="my_sch_title">
                                            <h4 class="m0">Social Links</h4>
                                        </div>
                                    </div>
                                    <div class="row my_setting_content_details">
                                        <div class="col-xl-6">
                                          
                                        </div>
                                        
                                        </div>
                                        <div class="col-xl-6">
                                            <div class="my_profile_setting_input2">
                                                <label for="validationServerUsername3">Linkedin</label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" ID="linkedin" runat="server" aria-describedby="inputGroupPrepend4" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-6">
                                            <div class="my_profile_setting_input2">
                                                <label for="validationServerUsername4">Google</label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" ID="google" runat="server" aria-describedby="inputGroupPrepend4" >
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <asp:Button ID="Button1" runat="server" Text="Save" class="my_setting_savechange_btn btn btn-thm" OnClick="Button1_Click"/>

                                            
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

</asp:Content>
