<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WebsiteDevProject.AboutUs" %>
<%@ Register Src="siteNav.ascx" TagPrefix="uc1" TagName="siteNav" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Styles/styles.css" media="screen" />
    <meta name="keywords" content="Inner Transformation, Yoga Center, Yoga Retreats, spiritual growth, Hatha Yoga, Yogasanas" />
    <meta name="description" content=" With various centers around United States and India. Amityaa yoga center is headquartered at the foothills of Rocky Mountain, Colorado, US" />
</head>
<body style="background-image:url(Images/yogap1.png)">
    <form id="form1" runat="server">
        
        <div>
            <uc1:siteNav runat="server" ID="siteNav" />
            <section>
            <div class ="aboutus-style">
                <br />
                <p>Amitaay Yoga is a School for Classical Hatha Yoga.Amitaay means "One who is immeasureable, infinite" and Yoga means ‘union’.Amitaay Yoga is for those are in the path of yoga to become union with the infinite.</p>
                <p>Amitaay Yoga delivers classical Hatha Yoga in its full depth and dimension. It is Adi Yoga’s vision to offer this ancient science in all its purity and make it available to every individual.</p>
                <p>In the yogic tradition, the word “yoga” is only attached to a complete path which leads to self-realization. Amitaay Yoga programs are comprehensive systems integrating the core of yogic science, unveiled for the modern human being. Our programs allow individuals to take tangible steps towards their physical, mental and spiritual growth. Designed by Sadhguru, founder of Isha Foundation, these programs are a rare opportunity for self-discovery under the guidance of a realized master.</p>
                <p>Amitaay Yoga teaches yoga in its full depth and dimension and communicates it on an experiential level. The programs provide methods for establishing oneself in a way of life that affirms wholeness and vitality. We also show that spiritual life does not deny worldly, social, and family responsibilities, but rather uses them as vehicles for personal growth and self-realization.</p>
                <p>The range of regularly conducted programs involve simple postures, breathing and other powerful methods of transforming one’s energies. You do not have to be physically agile or have any previous knowledge or experience of yoga to participate in an Amitaay Yoga program.</p>
                <p>Tailored to suit individuals from every social and cultural background, Amitaay Yoga provides powerful tools for inner exploration. Whatever your need may be, we has a solution for you.</p><br/>
                <div class="x-video embed with-container">
                    <div class="x-video-inner">
                        <iframe src="https://www.youtube.com/embed/gK5Rl2v-OpQ" data-lazy-src="https://www.youtube.com/embed/gK5Rl2v-OpQ" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen" class="     lazyloaded"></iframe>

                    </div>

                </div>

            </div>  
                </section>
        </div>        
    </form>
    <script src="Scripts/jquery-3.2.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</body>
</html>
