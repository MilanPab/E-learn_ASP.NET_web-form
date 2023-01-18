<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Inventry_Management.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <section class="our-log login-bg pb180">
        
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="login_page_logo text-center">
                        <img src="images/login-logo.png" alt="login-logo.png">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-lg-6 offset-lg-3">
                    <div class="login_form inner_page style2">
                            
                            <div class="heading">
                                <h3 class="text-center">Register to new account</h3>
                                <p class="text-center">Already have an account? <a class="text-thm" href="Login.aspx">Login!</a></p>
                            </div>

                            <input ID="Hidden1" type="hidden"  runat="server" />

                            
                            <div class="form-group">
                                <input type="email" class="form-control"  runat="server" ID="InputEmail" placeholder="Email Address">
                            </div>

                            <div class="form-group">
                                <input type="text" class="form-control" runat="server" ID="username" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" runat="server" ID="contact" placeholder="Contact">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" runat="server" ID="InputPassword" placeholder="Password">
                            </div>
                            <div class="form-group custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="exampleCheck3">
                                <label class="custom-control-label" for="exampleCheck3">Remember me</label>
                                <a class="tdu btn-fpswd float-right" href="#">Forgot Password?</a>
                            </div>
                            <asp:Button ID="Button1" type="submit" class="btn btn-log btn-block btn-thm2" runat="server" Text="Register" OnClick="Button1_Click" />
                            
                            <div class="divide">
                                <span class="lf_divider">Or</span>
                                <hr>
                            </div>
                            <div class="row mt40">
                                <div class="col-lg">
                                    <button type="submit" class="btn btn-block color-white bgc-fb mb0"><i class="fa fa-facebook float-left mt5"></i>Facebook</button>
                                </div>
                                <div class="col-lg">
                                    <button type="submit" class="btn btn2 btn-block color-white bgc-gogle mb0"><i class="fa fa-google float-left mt5"></i>Google</button>
                                </div>
                            </div>
                     </div>
                </div>
            </div>
        </div>
        
    </section>






</asp:Content>
