Imports System.Data.SqlClient

Public Class _Default
    Inherits Page

    Dim connectionString As String = "Data Source=DANNIAL;Initial Catalog=CRUD_DB;User ID=Dannial;Password=Dannial123;"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ListProduct()
        End If
    End Sub

    Private Sub ListProduct()
        Using connect As New SqlConnection(connectionString)
            Dim command As New SqlCommand("SELECT * FROM ProductInfo_Tab", connect)
            Dim sd As New SqlDataAdapter(command)
            Dim dt As New DataTable
            sd.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()
        End Using
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim productid As Integer = Convert.ToInt32(txtproductID.Text)
        Dim itemname As String = txtitemname.Text
        Dim specifications As String = txtspecifications.Text
        Dim unit As String = Dropunit.SelectedValue
        Dim color As String = Radiocolor.SelectedValue
        Dim opening As Double = txtopeningquantity.Text
        Dim status As String = If(Checkregular.Checked, "Regular", "Irregular")
        Dim insertdate As DateTime = Calendar1.SelectedDate
        Dim formattedDate As String = insertdate.ToString("yyyy-MM-dd")

        Using connect As New SqlConnection(connectionString)
            connect.Open()
            Dim command As New SqlCommand("INSERT INTO ProductInfo_Tab VALUES (@ProductID, @ItemName, @Specifications, @Unit, @Color, @InsertDate, @Opening, @Status)", connect)
            command.Parameters.AddWithValue("@ProductID", productid)
            command.Parameters.AddWithValue("@ItemName", itemname)
            command.Parameters.AddWithValue("@Specifications", specifications)
            command.Parameters.AddWithValue("@Unit", unit)
            command.Parameters.AddWithValue("@Color", color)
            command.Parameters.AddWithValue("@InsertDate", formattedDate)
            command.Parameters.AddWithValue("@Opening", opening)
            command.Parameters.AddWithValue("@Status", status)
            command.ExecuteNonQuery()
        End Using

        MsgBox("Successfully Inserted", MsgBoxStyle.Information, "Message")
        ListProduct()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim productid As Integer = Convert.ToInt32(txtproductID.Text)
        Dim itemname As String = txtitemname.Text
        Dim specifications As String = txtspecifications.Text
        Dim unit As String = Dropunit.SelectedValue
        Dim color As String = Radiocolor.SelectedValue
        Dim opening As Double = txtopeningquantity.Text
        Dim status As String = If(Checkregular.Checked, "Regular", "Irregular")
        Dim insertdate As DateTime = Calendar1.SelectedDate
        Dim formattedDate As String = insertdate.ToString("yyyy-MM-dd")

        Using connect As New SqlConnection(connectionString)
            connect.Open()
            Dim command As New SqlCommand("UPDATE ProductInfo_Tab SET ItemName = @ItemName, Specifications = @Specifications, Unit = @Unit, Color = @Color, InsertDate = @InsertDate, Opening = @Opening, Status = @Status WHERE ProductID = @ProductID", connect)
            command.Parameters.AddWithValue("@ProductID", productid)
            command.Parameters.AddWithValue("@ItemName", itemname)
            command.Parameters.AddWithValue("@Specifications", specifications)
            command.Parameters.AddWithValue("@Unit", unit)
            command.Parameters.AddWithValue("@Color", color)
            command.Parameters.AddWithValue("@InsertDate", formattedDate)
            command.Parameters.AddWithValue("@Opening", opening)
            command.Parameters.AddWithValue("@Status", status)
            command.ExecuteNonQuery()
        End Using

        MsgBox("Successfully Updated", MsgBoxStyle.Information, "Message")
        ListProduct()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim productid As Integer = Convert.ToInt32(txtproductID.Text)

        Using connect As New SqlConnection(connectionString)
            connect.Open()
            Dim command As New SqlCommand("Delete ProductInfo_Tab where ProductID = @ProductID", connect)
            command.Parameters.AddWithValue("@ProductID", productid)
            command.ExecuteNonQuery()
        End Using

        MsgBox("Successfully Deleted", MsgBoxStyle.Information, "Message")
        ListProduct()
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        ' Get the ProductID entered by the user
        Dim productID As Integer = Convert.ToInt32(txtproductID.Text)

        ' Define the SQL command with the ProductID parameter
        Using connect As New SqlConnection(connectionString)
            Dim command As New SqlCommand("SELECT * FROM ProductInfo_Tab WHERE ProductID = @ProductID", connect)
            command.Parameters.AddWithValue("@ProductID", productID) ' Add the ProductID parameter and its value

            ' Execute the command and fill the DataTable
            Dim sd As New SqlDataAdapter(command)
            Dim dt As New DataTable
            sd.Fill(dt)

            ' Bind the DataTable to the GridView for display
            GridView1.DataSource = dt
            GridView1.DataBind()
        End Using
    End Sub

End Class
