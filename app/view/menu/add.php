<?php
/**
 * Created by PhpStorm.
 * User: Cesar Jose Ruiz
 * Date: 09/02/2019
 * Time: 1:00
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
            <a class="btn btn-chico btn-default btn-xs" onclick="volverf(<?php echo $id_menu;?>)"> >Volver</a>
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
                        <h4 class="header-title">Agregar Menú</h4>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <div>
                        <div class="box-body">
                            <div class="form-group">
                                <label class="col-form-label">Nombre Menú</label>
                                <input class="form-control" type="text" id="menu_name"  placeholder="Ingrese Nombre del Menú...">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Icono <a href="<?php echo _SERVER_;?>Menu/icons" target="_blank">(Ver Ejemplos Aquí)</a></label>
                                <input class="form-control" type="text" id="menu_icon" value="fa fa-" placeholder="Ingrese Icono del Menú...">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Nombre Controlador</label>
                                <input class="form-control" type="text" id="menu_controller"  placeholder="Ingrese Controlador del Menú...">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Orden Aparición</label>
                                <input class="form-control" type="text" id="menu_order"  placeholder="Ingrese Orden de Aparación del Menú...">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Estado</label>
                                <select class="form-control" id="menu_status">
                                    <option value="1">ACTIVO</option>
                                    <option value="0">NO ACTIVO</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">¿Visible En Navegación?</label>
                                <select class="form-control" id="menu_show">
                                    <option value="0">NO ACTIVO</option>
                                    <option value="1">ACTIVO</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Contraseña De Usuario Actual</label>
                                <input class="form-control" type="password" id="password"  placeholder="Ingrese su Contraseña...">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-success" onclick="save()"> Guardar Menú</button>
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
<script src="<?php echo _SERVER_ . _JS_;?>menu.js"></script>

