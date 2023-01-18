<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="signup.aspx.cs" Inherits="Library_Management_System.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-8">
                        <div class="card bg-secondary text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">

                                <div class="mb-md-5 mt-md-4 pb-5">

                                    <h2 class="fw-bold mb-2 text-uppercase" style="color: white">Member SignUp</h2>
                                    <p class="text-white-50 mb-5">Please enter your details</p>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="form-label" for="TextBox1">Full Name</label>
                                            <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox1" runat="server"
                                                placeholder="Full Name"></asp:TextBox>
                                        </div>

                                        <div class="col-md-6">
                                            <label class="form-label" for="TextBox2">Date of Birth</label>
                                            <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox2" runat="server"
                                                placeholder="DOB" TextMode="Date"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label" for="TextBox3">Contact Number</label>
                                            <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox3" runat="server"
                                                placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label" for="TextBox4">Email Id</label>
                                            <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox4" runat="server"
                                                placeholder="Email Id" TextMode="Email"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="form-label" for="TextBox5">State</label>
                                            <asp:DropDownList CssClass="form-control form-control-lg" ID="DropDownList1" runat="server">
                                                <asp:ListItem Text="Select" Value="Select" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                                <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                                <asp:ListItem Text="Assam" Value="Assam" />
                                                <asp:ListItem Text="Bihar" Value="Bihar" />
                                                <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                                <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                                <asp:ListItem Text="Goa" Value="Goa" />
                                                <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                                <asp:ListItem Text="Haryana" Value="Haryana" />
                                                <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                                <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                                <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                                <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                                <asp:ListItem Text="Kerala" Value="Kerala" />
                                                <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                                <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                                <asp:ListItem Text="Manipur" Value="Manipur" />
                                                <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                                <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                                <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                                <asp:ListItem Text="Odisha" Value="Odisha" />
                                                <asp:ListItem Text="Punjab" Value="Punjab" />
                                                <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                                <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                                <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                                <asp:ListItem Text="Telangana" Value="Telangana" />
                                                <asp:ListItem Text="Tripura" Value="Tripura" />
                                                <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                                <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                                <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="form-label" for="TextBox6">City</label>
                                            <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox6" runat="server"
                                                placeholder="City"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="form-label" for="TextBox7">Pincode</label>
                                            <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox7" runat="server"
                                                placeholder="Picode" TextMode="Number"></asp:TextBox>
                                        </div>
                                        <div class="col">
                                            <label class="form-label" for="TextBox8">Full Address</label>
                                            <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox8" runat="server"
                                                placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class=" row">
                                        <h3> Login Credentials</h3>
                                        <div class="col-md-6">
                                            <label class="form-label" for="TextBox9">User Id</label>
                                            <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox9" runat="server"
                                                placeholder="User Id"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label" for="TextBox10">Password</label>
                                            <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox10" runat="server"
                                                placeholder="Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />

                                    <div class=" row">
                                        <center>
                                            <asp:Button class="btn btn-outline-light btn-lg px-5" OnClick="Button1_Click" ID="Button1" Text="Sign Up" runat="server" />
                                        </center>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

</asp:Content>
