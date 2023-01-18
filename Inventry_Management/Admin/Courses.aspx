<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Inventry_Management.Courses" %>

<%@ Import Namespace="Inventry_Management" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        }

        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%= imgCategory.ClientID%>').prop('src', e.target.result).width(200).height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-inner-content">
        <div class="align-align-self-end">
            <asp:Label ID="lblMsg" runat="server" Visible="true"></asp:Label>
            <%--<asp:Label runat="server" Text="Label" ID="text"></asp:Label>--%>
        </div>
        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body">
                    <div class="row">

                        <!-- Data widget start -->
                        <div class="col-md-12 col-xl-6">
                            <div class="card project-task">
                                <div class="card-header">
                                    <div class="card-header-left ">
                                        <h5>Enter Course</h5>
                                    </div>

                                </div>
                                <div class="card-block p-b-10">
                                    <div>
                                        <div class="form-group">
                                            <label for="courseName">Course Name</label>
                                            <div>
                                                <asp:TextBox ID="courseName" runat="server" CssClass="form-control" placeholder="Enter Course Name" required></asp:TextBox>
                                                <asp:HiddenField ID="hdnId" runat="server" Value="0" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="courseDescription">Course Description</label>
                                            <div>
                                                <asp:TextBox ID="courseDescription" runat="server" CssClass="form-control" placeholder="Enter Course Description" required></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="courseVideoUrl">Course Video URL</label>
                                            <div>
                                                <asp:TextBox ID="courseVideoUrl" runat="server" CssClass="form-control" placeholder="Enter Course URL" required></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="CourseImage">Course Image</label>
                                            <div>
                                                <asp:FileUpload ID="CourseImage" runat="server" CssClass="form-control" onchange="ImagePreview(this)" accept=".png, .jpg, .jpeg"></asp:FileUpload>
                                            </div>
                                        </div>
                                        <div class="form-check pl-4">
                                            <asp:CheckBox ID="cbIsActive" runat="server" Text="&nbsp; IsActive" CssClass="form-check-input"></asp:CheckBox>
                                        </div>
                                        <div class="pb-5">
                                            <asp:Button ID="btnAddOrUpdate" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="btnAddOrUpdate_Click1" />
                                            &nbsp;
                                           
                                            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary" CausesValidation="false" OnClick="btnClear_Click" />
                                        </div>
                                        <div>
                                            <asp:Image ID="imgCategory" runat="server" CssClass="img-thumbnail" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-xl-6">
                            <div class="card add-task-card">
                                <div class="card-header">
                                    <div class="card-header-left">
                                        <h5>Courses Lists</h5>
                                    </div>
                                </div>


                                <div class="card-block table-border-style">
                                    <div class="table-responsive">
                                        <asp:Repeater ID="repeaterCourses" runat="server" OnItemCommand="repeaterCategory_ItemCommand" OnItemDataBound="repeaterCategory_ItemDataBound">
                                            <HeaderTemplate>
                                                <table class="table data-table-export table-hover nowrap">
                                                    <thead>
                                                        <tr>
                                                            <%--<th>ID</th>--%>
                                                            <th>Name</th>
                                                            <th>Details</th>
                                                            <th>Url</th>
                                                            <th>Images</th>
                                                            <th>Status</th>
                                                            <th>CreatedDate</th>
                                                            <th class="datatable-nosort">Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("name") %> </td>
                                                    <td><%# Eval("details") %> </td>
                                                    <td><%# Eval("videoUrl") %> </td>
                                                    <td>
                                                         <img width="40" src="<%# Utils.GetImageUrl(Eval("imageUrl"))  %>"" alt="" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblIsActive" runat="server" Text='<%# Convert.ToBoolean(Eval("isActive"))? "True" : "False" %> '></asp:Label>
                                                    </td>
                                                    <%--<td> <%# Eval("isActive") %>  </td>--%>
                                                    <td><%# Eval("createdAt") %>  </td>
                                                    <td>
                                                        <asp:LinkButton ID="lnkEdit" Text="Edit" runat="server" CssClass="badge badge-primary" CommandArgument='<%# Eval("id") %>' CommandName="edit">
                                                    <i class="ti-pencil"></i>
                                                        </asp:LinkButton>
                                                        <asp:LinkButton ID="lnkDelete" Text="Delete" runat="server" CssClass="badge badge-danger" CommandArgument='<%# Eval("id") %>' CommandName="delete" OnClientClick="return confirm('Do you want to delete this category?');">
                                                    <i class="ti-trash"></i>
                                                        </asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </tbody>
                                                </table>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Data widget End -->

                    </div>
                </div>
            </div>

            <div id="styleSelector">
            </div>
        </div>
    </div>
</asp:Content>
