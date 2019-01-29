<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report_Container.aspx.cs" Inherits="WebApplication1.Report_Container" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table runat="server" id="TableHTml" class="col1 margintop1">
                <tr>
                    <td style="text-align: center; vertical-align: top">
                        <div runat="server" id="report_body" style="text-align: left; vertical-align: top">
                            <table style="border-style: none; border-color: inherit; border-width: 2px; padding-top: 0px; vertical-align: top" class="col1 margintop1">
                                <tr style="padding-top: 0px; vertical-align: top; border: 1px solid #000;">
                                    <td>
                                        <div style="width: 500px; height: 100px;">
                                            <asp:Image ID="LogImg" runat="server" ImageUrl="~/Style/SDI_SALES_LOGO.jpg" Width="70%" />
                                        </div>
                                        
                                        <%-- 
                                                        <br />
                                                        <asp:Label ID="lblTitle" runat="server" Text="Inventory Available for Sale for " Style="font-weight: bold; font-size: medium; font-family: Arial;"></asp:Label>
                                        <asp:Label ID="lblTitleDate" runat="server" Style="display: none; font-size: medium; font-weight: bold; font-family: Arial" Font-Overline="False"></asp:Label>

                                        <p style="color: red; resize: both; font-size: medium">
                                            $1/CWT EXTRA FOR STOCK SALES ON INVENTORY PRICE LIST SIZES - EFFECTIVE                                                       
                                                        <asp:Label ID="lblTt1" runat="server" Style="font-size: medium; font-weight: bold; font-family: Arial"></asp:Label>
                                        </p>              --%>
                                    </td>
                                   
                                    <td style="text-align: center; width: 500%; height: 100px; padding-top: 0px; vertical-align: top">
                                        <b><strong>Structural and Rail Division</strong></b>
                                        <br />
                                        2601 South 700 East                                 
                                                    Columbia City, Indiana 46725<br />
                                        Phone (260) 625-8100<br />
                                        Fax: (260) 625-8770<br />
                                        Toll Free: (866) 740-8700<br />
                                        Sales office hours:
                                                        <br />
                                        M - F 7:30 am - 5:30 pm EST                                             
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table runat="server" id="Table1" class="col1 margintop1">
                                <tr>
                                    <td rowspan="1">

                                        <asp:GridView ID="GvOrderStatus" runat="server" CssClass="grid"     AutoGenerateColumns="false"  width="100%"
                                            CellPadding="4" ForeColor="Black" GridLines="Both" BorderWidth="1">
                                            <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                            <asp:BoundField DataField="F_RETURN_WT" HeaderText="Plan" SortExpression="F_RETURN_WT" />

                                                            <asp:BoundField DataField="SDISalesOrder" HeaderText="SDI Sales Order" SortExpression="SDISalesOrder" ItemStyle-Width="100px" />
                                                            <asp:BoundField DataField="C_CUST_PO_NUM" HeaderText="Customer PO" SortExpression="C_CUST_PO_NUM" ItemStyle-Width="130px" />
                                                            <asp:BoundField DataField="C_PROD_SIZE_ID" HeaderText="Product Size" SortExpression="C_PROD_SIZE_ID" />

                                                            <asp:BoundField DataField="length_in_feet" HeaderText="Length" SortExpression="length_in_feet" />
                                                            <asp:BoundField DataField="C_EXT_GRD_ID" HeaderText="Grade" SortExpression="C_EXT_GRD_ID" />
                                                            <asp:BoundField DataField="J_NUM_PCE" HeaderText="# Pcs." SortExpression="J_NUM_PCE" />
                                                            <asp:BoundField DataField="CARRIER_MODE" HeaderText="Carrier Mode" SortExpression="CARRIER_MODE" />
                                                            <asp:BoundField DataField="Q_PROD_DATE" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Expected Roll Week" SortExpression="Q_PROD_DATE" />
                                                            <asp:BoundField DataField="Q_PRM_DLVR_DATE" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Expected Ship Week" SortExpression="Q_PRM_DLVR_DATE" />
                                                            <asp:BoundField DataField="F_ORD_ITEM_WT" HeaderText="Ordered Weight" SortExpression="F_ORD_ITEM_WT" />
                                                            <asp:BoundField DataField="F_SHIP_WT" HeaderText="Shipped Weight" SortExpression="F_SHIP_WT" />
                                                            <asp:BoundField DataField="F_RETURN_WT" HeaderText="Balance To Ship" SortExpression="F_RETURN_WT" />
                                                            <asp:BoundField DataField="F_RETURN_WT" HeaderText="Ready To Ship" SortExpression="F_RETURN_WT" />
                                                            <asp:BoundField DataField="F_RETURN_WT" HeaderText="Balance To Plan" SortExpression="F_RETURN_WT" />
                                                            <asp:BoundField DataField="F_RETURN_WT" HeaderText="Holds" SortExpression="F_RETURN_WT" />

                                                        </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#eeeeee" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>

                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
