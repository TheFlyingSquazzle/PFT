﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Food.aspx.cs" Inherits="Food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturesContent" Runat="Server">
        <div id="features">
    <div class="5grid">
            <!-- Feature #1 -->
            <section>
                <asp:GridView ID="FoodGrid" runat="server" AutoGenerateColumns="False" CellPadding="4" OnRowEditing="FoodGrid_RowEditing" OnRowUpdating="FoodGrid_RowUpdating" DataSourceID="FoodDataSource" ForeColor="#333333" GridLines="None" Width="100%" AutoGenerateDeleteButton="False" ShowFooter="True" AutoGenerateEditButton="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="FoodName" HeaderText="FoodName" SortExpression="FoodName" />
                        <asp:BoundField DataField="Calories" HeaderText="Calories" SortExpression="Calories" />
                        <asp:BoundField DataField="Fats" HeaderText="Fats" SortExpression="Fats" />
                        <asp:BoundField DataField="Carbs" HeaderText="Carbs" SortExpression="Carbs" />
                        <asp:BoundField DataField="Protein" HeaderText="Protein" SortExpression="Protein" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="FoodDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [FoodName], [Calories], [Fats], [Carbs], [Protein] FROM [Food]" UpdateCommand="Update [Food] set FoodName=@foodname, Calories=@cals, Fats=@fat, Carbs=@carb, Protein=@pro">
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="FoodGrid" Name="foodname" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="FoodGrid" Name="cals" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="FoodGrid" Name="fat" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="FoodGrid" Name="carb" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="FoodGrid" Name="pro" PropertyName="SelectedValue" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </section>

    </div>
</div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

</asp:Content>

