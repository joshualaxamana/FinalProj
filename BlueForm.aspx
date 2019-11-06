<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BlueForm.aspx.cs" Inherits="PersonalPropertyForm" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personal Property Form</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
</head>
<body class="bgimage">
    <div class="container">
        <div class="col-lg-offset-2 col-lg-8">
            <h1 class="text-center"><i class="fa fa-certificate"></i> Personal Property Form</h1>
            <div class="well">
                <form runat="server" class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-lg-4">ID Number</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtIDNo" runat="server" CssClass="form-control" Maxlength="8" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Purpose</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtPurpose" runat="server" CssClass="form-control" Maxlength="500" required textmode="MultiLine" Rows="4"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Item</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtItem" runat="server" CssClass="form-control" Maxlength="100" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Details</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtDetails" runat="server" CssClass="form-control" Maxlength="500" textmode="MultiLine" Rows="4" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Serial No.</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtserial" runat="server" CssClass="form-control" Maxlength="50" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Campus</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtCampus" runat="server" CssClass="form-control" Maxlength="50" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Date Filed</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" type="date" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Period Covered</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtPeriod" runat="server" CssClass="form-control" Maxlength="20" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Status</label>
                        <div class="col-lg-8">
                            <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control" Maxlength="20" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <div  class="col-lg-offset-4 col-lg-8">
                            <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-warning btn-block" Text="Add" OnClick="btnAdd_Click"/>
                            <a href="Default.aspx" class="btn btn-default btn-block">Cancel</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>