﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="Admin_UserList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="background-image: url('../Images/bg.jpg'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;">
        <div class="container-fluid pt-4 pb-4">
            <div>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>

            <h3 class="text-center">User List/Details</h3>

             <div class="row mb-3 pt-sm-3">
                 <div class="col-md-12">
                     <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" HeaderStyle-HorizontalAlign="Center" EmptyDataText="No record to display..!" AutoGenerateColumns="False" AllowPaging="True" PageSize="5"
                     OnPageIndexChanging="GridView1_PageIndexChanging" DataKeyNames="UserId" OnRowDeleting="GridView1_RowDeleting">
                         
                         <Columns>
                             
                             <asp:BoundField DataField="Sr.No" HeaderText="Sr.No">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>

                             <asp:BoundField DataField="Name" HeaderText="User Name">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>

                              <asp:BoundField DataField="Email" HeaderText="Email">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>

                              <asp:BoundField DataField="Mobile" HeaderText="Mobile No.">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>

                              <asp:BoundField DataField="Country" HeaderText="Country">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>

                             <asp:CommandField CausesValidation="false" HeaderText="Delete" ShowDeleteButton="true" DeleteImageUrl="../assets/img/icon/trashIcon.png" ButtonType="Image">
                               <ControlStyle Height="40px" Width="40px"/>
                               <ItemStyle HorizontalAlign="Center"/>
                             </asp:CommandField>
                             
                         </Columns>
                         <HeaderStyle BackColor="#7200cf" ForeColor="White" />
                     </asp:GridView>
                 </div>
             </div>

            </div>
        </div>



</asp:Content>

