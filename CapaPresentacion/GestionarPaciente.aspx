<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="GestionarPaciente.aspx.cs" Inherits="CapaPresentacion.frmGestionarPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1 style="text-align:center">REGISTRO DE PACIENTE</h1>
    </section>
    <section class="content">
        <div class="row">
            <div calss="col-md-6">
                <div class="box box-primary">
                    <div class="box box-body">
                        <div class="form-group">
                            <label>DOCUMENTO DE IDENTIDAD</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtNroDocumento" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div calss="form-group">
                            <label>NOMBRES</label>
                        </div>
                        <div calss="form-group">
                            <asp:TextBox ID="txtNombres" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                                                <div calss="form-group">
                            <label>APELLIDO PATERNO</label>
                        </div>
                        <div calss="form-group">
                            <asp:TextBox ID="txtApPaterno" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                                                <div calss="form-group">
                            <label>APELLIDO MATERNO</label>
                        </div>
                        <div calss="form-group">
                            <asp:TextBox ID="txtApMaterno" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div calss="col-md-6">
                <div class="box box-primary">
                    <div class="box box-body">
                        <div class="form-group">
                            <label>SEXO</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
                                <asp:ListItem Value="M">Masculino</asp:ListItem>
                                <asp:ListItem Value="F">Femenino</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        
                        <div calss="form-group">
                            <label>EDAD</label>
                        </div>
                        <div calss="form-group">
                            <asp:TextBox ID="txtEdad" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                                                <div calss="form-group">
                            <label>TELÉFONO</label>
                        </div>
                        <div calss="form-group">
                            <asp:TextBox ID="txtTelefono" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                                                <div calss="form-group">
                            <label>DIRECCIÓN</label>
                        </div>
                        <div calss="form-group">
                            <asp:TextBox ID="txtDireccion" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            <div align="center">
                <table>
                    <tr>
                        <td>
                            <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" style="width:200px" Text="Registrar" OnClick="btnRegistrar_Click"/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-danger" style="width:200px" Text="Cancelar"/>
                        </td>
                    </tr>
                </table>
            </div>
        <br />


<!-- Datatable Part -->

        <div class="row">
            <div class="col-xs-12">
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Lista de Pacientes</h3>
                    </div>
                    <div class="box-body table-responsive">
                        <table id="tbl_pacientes" class="table table-bordered table-hover text-center">
                            <thead>
                                <tr>
                                    <th>Código</th>
                                    <th>Nombres</th>
                                    <th>Apellidos</th>
                                    <th>Sexo</th>
                                    <th>Edad</th>
                                    <th>Dirección</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody id="tbl_body_table">
                                <!-- DATA POR MEDIO DE AJAX-->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Datatable -->
    </section>
</asp:Content>
