<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="WebsiteDevProject.Schedule" %>
<%@ Register Src="siteNav.ascx" TagPrefix="uc1" TagName="siteNav" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-110382130-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-110382130-1');
</script>
    <title>Schedule</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Styles/styles.css" media="screen" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />

</head>
<body style="background-image:url(Images/yogap1.png)">
    <form id="form1" runat="server">
        <div>
            <uc1:siteNav runat="server" ID="siteNav" />
            <section>

            
            
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Amitaay-yoga-sqlDBConnectionString %>" DeleteCommand="DELETE FROM [Schedule] WHERE [ProgramID] = @original_ProgramID AND [Program] = @original_Program AND [Start Date] = @original_Start_Date AND [End Date] = @original_End_Date AND [Time] = @original_Time AND [Fee] = @original_Fee AND [Venue] = @original_Venue AND [Teacher] = @original_Teacher" InsertCommand="INSERT INTO [Schedule] ([ProgramID], [Program], [Start Date], [End Date], [Time], [Fee], [Venue], [Teacher]) VALUES (@ProgramID, @Program, @Start_Date, @End_Date, @Time, @Fee, @Venue, @Teacher)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ProgramID], [Program], [Start Date] AS Start_Date, [End Date] AS End_Date, [Time], [Fee], [Venue], [Teacher] FROM [Schedule]" UpdateCommand="UPDATE [Schedule] SET [Program] = @Program, [Start Date] = @Start_Date, [End Date] = @End_Date, [Time] = @Time, [Fee] = @Fee, [Venue] = @Venue, [Teacher] = @Teacher WHERE [ProgramID] = @original_ProgramID AND [Program] = @original_Program AND [Start Date] = @original_Start_Date AND [End Date] = @original_End_Date AND [Time] = @original_Time AND [Fee] = @original_Fee AND [Venue] = @original_Venue AND [Teacher] = @original_Teacher">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ProgramID" Type="String" />
                        <asp:Parameter Name="original_Program" Type="String" />
                        <asp:Parameter Name="original_Start_Date" Type="String" />
                        <asp:Parameter Name="original_End_Date" Type="String" />
                        <asp:Parameter DbType="Time" Name="original_Time" />
                        <asp:Parameter Name="original_Fee" Type="Decimal" />
                        <asp:Parameter Name="original_Venue" Type="String" />
                        <asp:Parameter Name="original_Teacher" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ProgramID" Type="String" />
                        <asp:Parameter Name="Program" Type="String" />
                        <asp:Parameter Name="Start_Date" Type="String" />
                        <asp:Parameter Name="End_Date" Type="String" />
                        <asp:Parameter DbType="Time" Name="Time" />
                        <asp:Parameter Name="Fee" Type="Decimal" />
                        <asp:Parameter Name="Venue" Type="String" />
                        <asp:Parameter Name="Teacher" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Program" Type="String" />
                        <asp:Parameter Name="Start_Date" Type="String" />
                        <asp:Parameter Name="End_Date" Type="String" />
                        <asp:Parameter DbType="Time" Name="Time" />
                        <asp:Parameter Name="Fee" Type="Decimal" />
                        <asp:Parameter Name="Venue" Type="String" />
                        <asp:Parameter Name="Teacher" Type="String" />
                        <asp:Parameter Name="original_ProgramID" Type="String" />
                        <asp:Parameter Name="original_Program" Type="String" />
                        <asp:Parameter Name="original_Start_Date" Type="String" />
                        <asp:Parameter Name="original_End_Date" Type="String" />
                        <asp:Parameter DbType="Time" Name="original_Time" />
                        <asp:Parameter Name="original_Fee" Type="Decimal" />
                        <asp:Parameter Name="original_Venue" Type="String" />
                        <asp:Parameter Name="original_Teacher" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <h1 style=" font-size:350%">Upcoming Hatha Yoga programs</h1>
                <hr style="border-color:black; border-style: inset; border-width: 1px;"/>
                <br />

                <h3 style="padding-left:150px"> Contact Number: +1-302-442-2122(United States) / +91-9677052138 (India)</h3>
                <br />
                              
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <li style="">Program:
                            <asp:Label ID="ProgramLabel" runat="server" Text='<%# Eval("Program") %>' />
                            <br />
                            Start_Date:
                            <asp:Label ID="Start_DateLabel" runat="server" Text='<%# Eval("Start_Date") %>' />
                            <br />
                            End_Date:
                            <asp:Label ID="End_DateLabel" runat="server" Text='<%# Eval("End_Date") %>' />
                            <br />
                            Time:
                            <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                            <br />
                            Fee:
                            <asp:Label ID="FeeLabel" runat="server" Text='<%# Eval("Fee") %>' />
                            <br />
                            Venue:
                            <asp:Label ID="VenueLabel" runat="server" Text='<%# Eval("Venue") %>' />
                            <br />
                            Teacher:
                            <asp:Label ID="TeacherLabel" runat="server" Text='<%# Eval("Teacher") %>' />
                            <br />
                        </li>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <li style="">Program:
                            <asp:TextBox ID="ProgramTextBox" runat="server" Text='<%# Bind("Program") %>' />
                            <br />
                            Start_Date:
                            <asp:TextBox ID="Start_DateTextBox" runat="server" Text='<%# Bind("Start_Date") %>' />
                            <br />
                            End_Date:
                            <asp:TextBox ID="End_DateTextBox" runat="server" Text='<%# Bind("End_Date") %>' />
                            <br />
                            Time:
                            <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                            <br />
                            Fee:
                            <asp:TextBox ID="FeeTextBox" runat="server" Text='<%# Bind("Fee") %>' />
                            <br />
                            Venue:
                            <asp:TextBox ID="VenueTextBox" runat="server" Text='<%# Bind("Venue") %>' />
                            <br />
                            Teacher:
                            <asp:TextBox ID="TeacherTextBox" runat="server" Text='<%# Bind("Teacher") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </li>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        No data was returned.
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <li style="">Program:
                            <asp:TextBox ID="ProgramTextBox" runat="server" Text='<%# Bind("Program") %>' />
                            <br />
                            Start_Date:
                            <asp:TextBox ID="Start_DateTextBox" runat="server" Text='<%# Bind("Start_Date") %>' />
                            <br />
                            End_Date:
                            <asp:TextBox ID="End_DateTextBox" runat="server" Text='<%# Bind("End_Date") %>' />
                            <br />
                            Time:
                            <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                            <br />
                            Fee:
                            <asp:TextBox ID="FeeTextBox" runat="server" Text='<%# Bind("Fee") %>' />
                            <br />
                            Venue:
                            <asp:TextBox ID="VenueTextBox" runat="server" Text='<%# Bind("Venue") %>' />
                            <br />
                            Teacher:
                            <asp:TextBox ID="TeacherTextBox" runat="server" Text='<%# Bind("Teacher") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </li>
                    </InsertItemTemplate>
                    <ItemSeparatorTemplate>
                        <br />
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                        <li style="">Program:
                            <asp:Label ID="ProgramLabel" runat="server" Text='<%# Eval("Program") %>' />
                            <br />
                            Start_Date:
                            <asp:Label ID="Start_DateLabel" runat="server" Text='<%# Eval("Start_Date") %>' />
                            <br />
                            End_Date:
                            <asp:Label ID="End_DateLabel" runat="server" Text='<%# Eval("End_Date") %>' />
                            <br />
                            Time:
                            <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                            <br />
                            Fee:
                            <asp:Label ID="FeeLabel" runat="server" Text='<%# Eval("Fee") %>' />
                            <br />
                            Venue:
                            <asp:Label ID="VenueLabel" runat="server" Text='<%# Eval("Venue") %>' />
                            <br />
                            Teacher:
                            <asp:Label ID="TeacherLabel" runat="server" Text='<%# Eval("Teacher") %>' />
                            <br />
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                        
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li style="">Program:
                            <asp:Label ID="ProgramLabel" runat="server" Text='<%# Eval("Program") %>' />
                            <br />
                            Start_Date:
                            <asp:Label ID="Start_DateLabel" runat="server" Text='<%# Eval("Start_Date") %>' />
                            <br />
                            End_Date:
                            <asp:Label ID="End_DateLabel" runat="server" Text='<%# Eval("End_Date") %>' />
                            <br />
                            Time:
                            <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                            <br />
                            Fee:
                            <asp:Label ID="FeeLabel" runat="server" Text='<%# Eval("Fee") %>' />
                            <br />
                            Venue:
                            <asp:Label ID="VenueLabel" runat="server" Text='<%# Eval("Venue") %>' />
                            <br />
                            Teacher:
                            <asp:Label ID="TeacherLabel" runat="server" Text='<%# Eval("Teacher") %>' />
                            <br />
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
                <br />
                <p> The above section is list view using data-bound values from SQL Database and its implemented from Toolbox drag and drop option</p>
                <br />
                <hr style="border-color:black; border-style: inset; border-width: 1px;"/>
                <h1 style=" font-size:250%"> List of calsses scheduled </h1>
                <h2> Modify after confirming with the respective center(For Teacher/Organizers use only)</h2>

            
            
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProgramID" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="ProgramID" HeaderText="ProgramID" ReadOnly="True" SortExpression="ProgramID" />
                        <asp:BoundField DataField="Program" HeaderText="Program" SortExpression="Program" />
                        <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" SortExpression="Start_Date" />
                        <asp:BoundField DataField="End_Date" HeaderText="End_Date" SortExpression="End_Date" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="Fee" HeaderText="Fee" SortExpression="Fee" />
                        <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
                        <asp:BoundField DataField="Teacher" HeaderText="Teacher" SortExpression="Teacher" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Amitaay-yoga-sqlDBConnectionString %>" SelectCommand="SELECT [Program], [Start Date] AS Start_Date, [End Date] AS End_Date, [Time], [Fee], [Venue], [Teacher] FROM [Schedule]"></asp:SqlDataSource>
                <br />
                <p> [ After Project evaluation, the above GridView section would be created as an seperate page for office and teachers use ]</p>
                <br />
            
            
            </section>

        </div>
    </form>
    <script src="Scripts/jquery-3.2.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</body>
     <br />
     <br />
</html>
