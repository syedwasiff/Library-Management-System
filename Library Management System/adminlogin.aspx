<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Library_Management_System.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-secondary text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">

                                <div class="mb-md-5 mt-md-4 pb-5">

                                    <h2 class="fw-bold mb-2 text-uppercase" style="color:white">Admin Login</h2>
                                    <p class="text-white-50 mb-5">Please enter your login and password!</p>

                                    <div class="form-outline form-white mb-4">                                        
                                        <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox1" runat="server" placeholder="Admin Id"></asp:TextBox>
                                        <label class="form-label" for="TextBox1">Admin Id</label>
                                    </div>

                                    <div class="form-outline form-white mb-4">
                                        <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        <label class="form-label" for="typePasswordX">Password</label>
                                    </div>

                                    <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a>
                                    </p>                                    
                                    <asp:Button class="btn btn-outline-light btn-lg px-5" OnClick="Button1_Click" ID="Button1" Text="Login" runat="server"/>
                                </div>                               

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
