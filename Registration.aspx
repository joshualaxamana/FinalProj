﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Users_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/font-awesome.css" rel="stylesheet" />
</head>
<body class="bgimage">
    <div class="container">
        <br /><br />
        <div class="col-lg-offset-3 col-lg-6">
            <h1 class="text-center">User Registration</h1>
            <div class="well">
                <form runat="server" class="form-horizontal">
                    <div id="error" runat="server" class="alert alert-danger" visible="false">
                        Email address already taken. </3
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">ID Number</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtID" runat="server" CssClass="form-control" 
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Email Address</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" 
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Password</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" 
                                TextMode="Password" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Repeat Password</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtRPassword" runat="server" CssClass="form-control" 
                                TextMode="Password" required />
                            <asp:CompareValidator ID="cv_Password" runat="server"
                                ControlToValidate="txtRPassword" ControlToCompare="txtPassword"
                                SetFocusOnError="true" Display="Dynamic" 
                                ErrorMessage="Hindi tugma." ForeColor="Red" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">First Name</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtFN" runat="server" CssClass="form-control text-capitalize" 
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Last Name</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtLN" runat="server" CssClass="form-control text-capitalize" 
                                required />
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="control-label col-lg-4">User Type</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtType" runat="server" CssClass="form-control text-capitalize" 
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-4 col-lg-8">
                            <asp:Button ID="btnRegister" runat="server"
                                CssClass="btn btn-lg btn-success" Text="Register" />
                            <a href="Login.aspx" class="btn btn-danger">
                                Login
                            </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
