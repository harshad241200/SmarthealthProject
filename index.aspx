<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SmartHealthConsltation.index" %>

<!doctype html>
<html lang="en">
  <head>
    <title>Consultation</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="main.css">
          <link href="Content/helath.css" rel="stylesheet" />
                <script src="Content/helath.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg nav-back fixed-top" 
    id="mainNav">
      <div class="container">
          <a class="navbar-brand" href="#">Medical</a>
          <button class="navbar-toggler navbar-toggler-right" type="button"
           data-toggle="collapse" data-target="#navbarResponsive" 
           aria-controls="navbarResponsive" aria-expanded="false" 
           aria-label="Toggle navigation"><i class="fas fa-syringe fa-2x"></i>
           </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" 
                  href="#about">Services</a></li>
                  <li class="nav-item"><a class="nav-link" 
                    href="#about">About</a></li>
                  <li class="nav-item"><a class="nav-link" 
                    href="#about">Medical Camps</a></li>
                  <li class="nav-item"><a class="nav-link"
                     href="#projects">Team</a></li>
                  <li class="nav-item"><a class="nav-link" 
                    href="#signup">Contact</a></li>
              </ul>
          </div>
      </div>
  </nav>
   
<!-- End Header -->    
   <!-- ======= Hero Section ======= -->
   <section id="hero" class="d-flex align-items-center">
    <div class="container text-center position-relative">
      <h1>24/7 Care is available</h1>
      <h2>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, deleniti.</h2>
      <a href="#about" class="main-btn">Get Started</a>
    </div>
  </section>
  <!-- End Hero -->
  <div class="container mt-4 p-4">
      <div class="row">
          <div class="col-md-6">
              <h2 class="text-center my-4">
                  Find Consultations
              </h2>
              <form runat="server">
                  <div class="form-group row">
                      <label class="col-sm-4 col-lg-4">
                          Patient Name
                      </label>
                      <div class="col-sm-8 col-lg-8">
                          <asp:TextBox ID="patientnames" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                  </div>
                  <!---->
                  <div class="form-group row">
                    <label class="col-sm-4 col-lg-4">
                        Contact
                    </label>
                    <div class="col-sm-8 col-lg-8">
                        <asp:TextBox ID="contac" CssClass="form-control" runat="server"></asp:TextBox>
                       
                    </div>
                </div>
                <!---->
                <div class="form-group row">
                    <label class="col-sm-4 col-lg-4">
                      Date
                    </label>
                    <div class="col-sm-8 col-lg-8">
            <asp:TextBox ID="dates" runat="server" CssClass="form-control" type="date"></asp:TextBox>
                    </div>
                </div>
                <!---->
                <div class="form-group row">
                    <label class="col-sm-4 col-lg-4">
                       Time
                    </label>
                    <div class="col-sm-8 col-lg-8">
                        <asp:TextBox ID="times" CssClass="form-control" runat="server" type="time"></asp:TextBox>
                       </div>
                </div>
                <!---->
               <div class="form-group row">
                    <label class="col-sm-4 col-lg-4">
                       Symptoms
                    </label>
                    <div class="col-sm-8 col-lg-8">
                        <asp:TextBox ID="Symptomss" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
              
                <div class="form-group row justify-content-end">
                    <div class="col-sm-5">
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="confirm" />
                    </div>
                </div>

              </form>
          </div>
          <div class="col-md-6">
              <h2 id="services" class="text-center my-4"></h2>
              <ul id="consultations"class="list-group"></ul>
          </div>
      </div>
  </div>
  




















  <!-- Footer-->
  <footer class="footer py-4 mt-5">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-4 text-lg-left">Copyright © Your Website 2020</div>
            <div class="col-lg-4 my-3 my-lg-0">
                <a class="btn btn-back btn-social mx-2" href="#!">
                  <i class="fab fa-twitter"></i></a>
                  <a class="btn btn-back btn-social mx-2" href="#!">
                    <i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-back btn-social mx-2" href="#!">
                      <i class="fab fa-linkedin-in"></i></a>
            </div>
            <div class="col-lg-4 text-lg-right">
              <a class="mr-3 text" href="#!">Privacy Policy</a>
              <a href="#!"class="text">Terms of Use</a></div>
        </div>
    </div>
</footer>























      <script src="main.js"></script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
