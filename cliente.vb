ass cliente

    Imports System.Data.SqlClient


    Public Class Empleado
        Dim conexion As New SqlConnection("Data Source=LAPTOP-F3CI6I93\SQLEXPRESS;Initial Catalog=BDParcial2Estudiante1yEstudiante2;Integrated Security=True")


        Private Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
            Try
                Dim comando As New SqlCommand("Insert Into Cliente(Nombre,Apellido,Departamento,Municipio) 
                                      Values('" & txtNombre.Text.Trim & "','" & txtApellido.Text.Trim & "','" & cmbDepartamento.Text.Trim & "','" & cmbMunicipio.Text.Trim & "')")
                comando.ExecuteNonQuery()
                MsgBox("Se ha Guardado Correctamente")
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                MsgBox("Se Cerro la conexión")
                txtNombre.Text = ""
                txtApellido.Text = ""
                cmbDepartamento.Text = "selecione..."
                cmbMunicipio.Text = "selecione..."
            End Try


        End Sub


    End Class
End Class
