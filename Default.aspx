<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Blue Forms</title>
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
</head>
<body class="bgimage">
    <div class="container">
        <div class="col-lg-12">
            <form runat="server" class="form-horizontal">
                <h1 class="text-center"><i class="fa fa-facebook-official"></i>  View Blue Forms</h1>
                <div class="col-lg-offset-8">
                    <div class="input-group">
                        <asp:TextBox ID="txtKeyword" runat="server"
                            class="form-control" placeholder="Keyword..." />
                        <span class="input-group-btn">
                            <asp:LinkButton ID="btnSearch" runat="server"
                                class="btn btn-info" OnClick="btnSearch_Click">
                                <i class="fa fa-search"></i>
                            </asp:LinkButton>
                        </span>
                    </div>
                </div>
                <table class="table table-hover">
                    <thead>
                        <th>#</th> 
                        <th>ID Number</th>
                        <th>Name</th>
                        <th>Contact Number</th>
                        <th>Purpose</th>
                        <th>Item</th>
                        <th>Date Filled</th>
                        <th>Period Covered</th>
                        <th>Status</th>
                    </thead>
                    <tbody>
                        <asp:ListView ID="lvTitles" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("IDNumber") %></td>
                                    <td><%# Eval("Name") %></td>
                                    <td><%# Eval("contactNumber") %></td>
                                    <td><%# Eval("purpose") %></td>
                                    <td><%# Eval("item") %></td>
                                    <td><%# Eval("dateFilled", "{0: MM/dd/yyyy}") %></td>
                                    <td><%# Eval("periodCovered") %></td>
                                    <td><%# Eval("status") %></td>
                                    
                                    <td>
                                        <a href='Details.aspx?ID=<%# Eval("IDNumber") %>' 
                                            class="btn btn-xs btn-success">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <a href='Delete.aspx?ID=<%# Eval("IDNumber") %>' 
                                            class="btn btn-xs btn-danger" onclick='return confirm("Are you sure?");'>
                                            <i class="fa fa-trash-o"></i>
                                        </a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <EmptyDataTemplate>
                                <tr>
                                    <td colspan="8">
                                        <h2 class="text-center">No records found.</h2>
                                    </td>
                                </tr>
                            </EmptyDataTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
