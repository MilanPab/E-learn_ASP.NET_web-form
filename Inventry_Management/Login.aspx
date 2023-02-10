<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Inventry_Management.Login" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

        <!-- Our LogIn Register -->
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
                                    <h3 class="text-center">Login to your account</h3>
                                    <p class="text-center">Don't have an account? <a class="text-thm" href="page-register.html">Sign Up!</a></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" runat="server" ID="InputEmail" placeholder="Email Address">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" runat="server" ID="InputPassword" placeholder="Password">
                                </div>
                                <div class="form-group custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="exampleCheck3">
                                    <label class="custom-control-label" for="exampleCheck3">Remember me</label>
                                    <a class="tdu btn-fpswd float-right" href="#">Forgot Password?</a>
                                </div>
                                
                                <asp:Button ID="Button1" class="btn btn-log btn-block btn-thm2" runat="server" Text="Login" OnClick="Button1_Click" />
 
 
                         </div>
                    </div>
                </div>
            </div>
        </section>

 



</asp:Content>
