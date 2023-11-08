<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class parcial2
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()

        '
        'txtNombre
        ' 
        txtNombre.Location = New Point(153, 83)
        txtNombre.Name = "txtNombre"
        txtNombre.Size = New Size(161, 27)
        txtNombre.TabIndex = 1
        ' 
        ' txtApellido
        ' 
        txtApellido.Location = New Point(153, 144)
        txtApellido.Name = "txtApellido"
        txtApellido.Size = New Size(161, 27)
        txtApellido.TabIndex = 2
        ' 
        ' cmbDepartamento
        ' 
        cmbDepartamento.FormattingEnabled = True
        cmbDepartamento.Location = New Point(153, 214)
        cmbDepartamento.Name = "cmbDepartamento"
        cmbDepartamento.Size = New Size(151, 28)
        cmbDepartamento.TabIndex = 3
        ' 
        ' cmbMunicipio
        ' 
        cmbMunicipio.FormattingEnabled = True
        cmbMunicipio.Location = New Point(153, 268)
        cmbMunicipio.Name = "cmbMunicipio"
        cmbMunicipio.Size = New Size(151, 28)
        cmbMunicipio.TabIndex = 4
        ' 
        ' btnGuardar
        ' 
        btnGuardar.Location = New Point(178, 326)
        btnGuardar.Name = "btnGuardar"
        btnGuardar.Size = New Size(94, 29)
        btnGuardar.TabIndex = 5
        btnGuardar.Text = "Guardar"
        btnGuardar.UseVisualStyleBackColor = True
        ' 
        'Cliente
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.btnGuardar)
        Me.Controls.Add(Me.txtApellido)
        Me.Controls.Add(Me.txtNombre)
        Me.Name = "Cliente"
        Me.Text = "Ventada de Clientes"
        Me.ResumeLayout(False)
        Me.PerformLayout()
        '
        ' parcial2
        ' 
        AutoScaleDimensions = New SizeF(8.0F, 20.0F)
        AutoScaleMode = AutoScaleMode.Font
        ClientSize = New Size(559, 450)
        Controls.Add(btnGuardar)
        Controls.Add(cmbMunicipio)
        Controls.Add(cmbDepartamento)
        Controls.Add(txtApellido)
        Controls.Add(txtNombre)
        Controls.Add(Label1)
        Name = "parcial2"
        Text = "Parcial 2 Programacion"
        ResumeLayout(False)
        PerformLayout()
    End Sub

    Friend WithEvents Label1 As Label
    Friend WithEvents txtNombre As TextBox
    Friend WithEvents txtApellido As TextBox
    Friend WithEvents cmbDepartamento As ComboBox
    Friend WithEvents cmbMunicipio As ComboBox
    Friend WithEvents btnGuardar As Button
End Class
