<?php
/**
 * Created by PhpStorm
 * User: Franz
 * Date: 18/04/2019
 * Time: 18:36
 */
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <?php echo $_SESSION['controlador'];?>
            <small><?php echo $_SESSION['accion'];?></small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="<?php echo $_SESSION['icono'];?>"></i><?php echo $_SESSION['controlador'];?></a></li>
            <li><a href="#"><?php echo $_SESSION['accion'];?></a></li>
            <a class="btn btn-chico btn-default btn-xs" href="<?php echo _SERVER_;?>Userg/all"> >Volver</a>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-6">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h4 class="header-title">Agregar Nuevo Usuario Al Sistema</h4>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <div>
                        <div class="box-body">
                            <div class="form-group">
                                <label class="col-form-label">Nombres</label>
                                <input class="form-control" type="text" id="person_name" placeholder="Ingrese Nombres...">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Apellidos</label>
                                <input class="form-control" type="text" id="person_surname" placeholder="Ingrese Apellidos...">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">DNI</label>
                                <input class="form-control" type="text" id="person_dni" placeholder="Ingrese DNI..." maxlength="8" onkeypress="return valida(event)">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Fecha de Nacimiento</label>
                                <input class="form-control" type="date" id="person_birth">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Número de Teléfono</label>
                                <input class="form-control" type="text" id="person_number_phone" onkeypress="return valida(event)" placeholder="Ingrese Teléfono...">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Género</label>
                                <select class="form-control" id="person_genre">
                                    <option value="M">Masculino</option>
                                    <option value="F">Femenino</option>
                                    <option value="P">Prefiero No Decirlo</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Dirección Casa</label>
                                <input class="form-control" type="text" id="person_address" placeholder="Ingrese Dirección...">
                            </div>

                            <div class="form-group">
                                <label class="col-form-label">Nombre Usuario</label>
                                <input type="text" class="form-control" id="user_nickname" placeholder="Ingresar Nombre Usuario...">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Contraseña</label>
                                <input type="password" class="form-control" id="user_password1" placeholder="Ingresar Contraseña...">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Repetir Contraseña</label>
                                <input type="password" class="form-control" id="user_password2" placeholder="Vuelva a Ingresar Contraseña...">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Correo Usuario</label>
                                <input type="text" class="form-control" id="user_email" placeholder="Ingresar Correo Usuario...">
                            </div>

                            <div class="form-group">
                                <button class="btn btn-success" onclick="save()"> Agregar Usuario</button>
                            </div>
                        </div>
                        <!-- /.box-body -->

                    </div>
                </div>
                <!-- /.box -->



            </div>
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<script src="<?php echo _SERVER_ . _JS_;?>domain.js"></script>
<script src="<?php echo _SERVER_ . _JS_;?>userg.js"></script>
