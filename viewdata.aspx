<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewdata.aspx.cs" Inherits="SmartHealthConsltation.viewdata" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>

       <div class="container">
          
                                 <div class="table">

           <table id="usertable" border='1' >

               <asp:Repeater ID="Repeaters1" runat="server">
                   <HeaderTemplate>
                       <thead>
                           <tr>
                           <th>patientname</th>
                            <th>contact</th>
                            <th>DATE</th>
                             <th>TIME</th>
                              <th>Symptoms</th>
                               <th>Action</th>

                       </tr>
                       </thead>
                   </HeaderTemplate>
                   <ItemTemplate>
                       <tbody>
                           <tr>
                           <td><%#Eval("patientname")%></td>
                           <td><%#Eval("contact")%></td>
                           <td><%#Eval("DATE")%></td>
                           <td><%#Eval("TIME")%></td>
                           <td><%#Eval("Symptoms")%></td>
                            <td><button class="btn btn-success "><a href="edit.aspx?id=<%#Eval("id")%>">edit</a></button>
                             <button class="btn btn-danger"  id="deleteuser" data-id="<%#Eval("id") %>">Delete</button>
                           </td>

               

                       </tr>
                       </tbody>
                   </ItemTemplate>
               </asp:Repeater>
                    </table>
          </div>
         </div>

       <!-- Option 2: Separate Popper and Bootstrap JS -->
   
   
          <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/jquery.dataTables.min.js"></script>
                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>




    <script>

        $(document).ready(function () {
            $('#usertable').DataTable();
            $("#usertable").on('click', '#deleteuser', function () {
                let hiddenid = $(this).attr("data-id")
                $.ajax({
                    method: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "WebService1.asmx/Delete",
                    data: "{'id':'" + hiddenid + "'}",
                    success: function (resp) {
                        console.log('Response=====>', resp)
                        swal("Deleted Successfully !", "Your data deleted", "success").then(function () {
                            location.reload()
                        });
                    },
                    dataType: "json"
                });
            })
        })
    </script>




 
      
   
  </body>
</html>
