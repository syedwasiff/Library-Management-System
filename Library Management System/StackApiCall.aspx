<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StackApiCall.aspx.cs" Inherits="Library_Management_System.StackApiCall" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
            $.get("https://api.stackexchange.com/2.3/questions?order=desc&sort=activity&tagged=javascript&site=stackoverflow", function (data, status) {
                
                for (var i = 0; i < data.items.length; i++) {
                    $("#stackApidiv").append('<div class="card"><div class= "card-header">Featured ' + i + '</div><div class="card-body"><h5 class="card-title">' + data.items[i].owner.display_name + '</h5><p class="card-text">' + data.items[i].title + '</p><a href="' + data.items[i].link + '" class="btn btn-primary" target="_blank">Go For Answer</a></div></div> ');                    
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id="stackApidiv">

    </div>
</asp:Content>
