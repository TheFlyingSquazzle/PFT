<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturesContent" Runat="Server">

        <div id="features">
    <div class="5grid">
        <div class="3u-first">
            <!-- Feature #1 -->
            <section>
                <h1 style="font-size: 28pt; margin-bottom: 2%;">Calories</h1>
                <h2>You have chosen a daily caloric intake of<strong style="color: lightblue;"> <asp:Label ID="CalorieDailyLabel" runat="server"></asp:Label>
                    <asp:SqlDataSource ID="dailyCaloric" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Nutrition]">
                    </asp:SqlDataSource>
                </strong> calories!</h2>
            </section>

        </div>
        <div class="3u">

            <!-- Feature #2 -->
            <section>
                <h1 style="font-size: 28pt; margin-bottom: 2%;">Exercise</h1>
                <h2>You have chosen to exercise for <strong style="color: lightblue;">
                    <asp:Label ID="ExerciseLabel" runat="server" Text="Label"></asp:Label>

                                                    </strong> minutes!<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
                </h2>
            </section>

        </div>
        <div class="3u">

            <!-- Feature #3 -->
            <section>
                <h1 style="font-size: 28pt; margin-bottom: 2%;">Water</h1>
                <h2>You have chosen to drink <strong style="color: lightblue;">
                    <asp:Label ID="WaterLabel" runat="server" Text="Label"></asp:Label>

                                             </strong> bottles of water!<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Fitness]"></asp:SqlDataSource>
                </h2>
            </section>

        </div>
        <div class="3u">

            <!-- Feature #3 -->
            <section>
                <h1 style="font-size: 28pt; margin-bottom: 2%;">Weight</h1>
                <h2>You currently weigh <strong style="color: lightblue;">
                    <asp:Label ID="WeightLabel" runat="server" Text="Label"></asp:Label>

                                        </strong> pounds!</h2>
            </section>

        </div>
    </div>
</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
    <ul class="quote-list ">
        <li>
            <p>"I’m not telling you it’s going to be easy, I’m telling you it’s going to be worth it."</p>
            <span>Art Williams</span>
        </li>
        <li>
            <p>"Strength does not come from winning. Your struggles develop your strengths. When you go through hardships and decide not to surrender, that is strength."</p>
            <span>Arnold Schwarzenegger</span>
        </li>
    </ul>

</div>
</asp:Content>

