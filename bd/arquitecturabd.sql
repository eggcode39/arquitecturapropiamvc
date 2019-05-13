-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2019 a las 07:04:05
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `arquitecturabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `menu_name` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `menu_icon` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `menu_controller` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `menu_order` int(11) NOT NULL,
  `menu_status` tinyint(4) NOT NULL,
  `menu_show` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id_menu`, `menu_name`, `menu_icon`, `menu_controller`, `menu_order`, `menu_status`, `menu_show`) VALUES
(1, 'Login', '-', 'Login', 0, 1, 0),
(2, 'Cierre de Sesion', 'fa fa-sign-out', 'Logout', 1000, 1, 1),
(3, 'Panel de Inicio', 'fa fa-dashboard', 'Admin', 1, 1, 1),
(4, 'Roles de Usuario', 'fa fa-user-secret', 'Role', 3, 1, 1),
(5, 'Gestion Menú', 'fa fa-desktop', 'Menu', 2, 1, 1),
(9, 'Personas', 'fa fa-group', 'Person', 4, 1, 1),
(10, 'Usuarios', 'fa fa-odnoklassniki', 'User', 4, 1, 1),
(11, 'Editar Datos', 'fa fa-external-link', 'Edit', 9, 1, 1),
(12, 'Inventario', 'fa fa-industry', 'Inventory', 3, 1, 1),
(17, 'Gestion de Usuarios', 'fa fa-users', 'Userg', 8, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `optionm`
--

CREATE TABLE `optionm` (
  `id_optionm` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `optionm_name` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `optionm_function` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `optionm_show` tinyint(1) NOT NULL,
  `optionm_status` tinyint(4) NOT NULL,
  `optionm_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `optionm`
--

INSERT INTO `optionm` (`id_optionm`, `id_menu`, `optionm_name`, `optionm_function`, `optionm_show`, `optionm_status`, `optionm_order`) VALUES
(1, 1, 'Iniciar Sesion', 'index', 0, 1, 0),
(2, 2, 'Finalizar Sesion', 'singOut', 1, 1, 1),
(3, 3, 'Inicio', 'index', 1, 1, 1),
(4, 4, 'Agregar Rol', 'add', 1, 1, 1),
(5, 4, 'Ver Roles', 'all', 1, 1, 2),
(6, 4, 'Editar Rol', 'edit', 0, 1, 0),
(7, 5, 'Ver Todo', 'list', 1, 1, 2),
(8, 5, 'Iconos del Sistema', 'icons', 1, 1, 5),
(9, 5, 'Agregar Menu', 'add', 1, 1, 1),
(10, 5, 'Editar Menú', 'edit', 0, 1, 1),
(11, 5, 'Gestion Accesos Por Roles', 'role', 0, 1, 5),
(12, 5, 'Ver Opciones Menú', 'functions', 0, 1, 1),
(13, 5, 'Agregar Opción', 'addf', 0, 1, 1),
(14, 5, 'Editar Opción', 'editf', 0, 1, 1),
(15, 5, 'Ver Permisos de Opción', 'listp', 0, 1, 1),
(16, 5, 'Agregar Permiso', 'addp', 0, 1, 1),
(17, 5, 'Editar Permiso', 'editp', 0, 1, 1),
(18, 9, 'Agregar Persona', 'add', 1, 1, 1),
(19, 9, 'Editar Persona', 'edit', 0, 1, 3),
(20, 9, 'Ver Personas', 'all', 1, 1, 2),
(22, 10, 'Agregar Usuario', 'add', 1, 1, 1),
(23, 10, 'Ver Usuarios', 'all', 1, 1, 2),
(24, 10, 'Editar Usuario', 'edit', 0, 1, 3),
(25, 10, 'Cambiar Contraseña', 'changep', 0, 1, 4),
(26, 11, 'Editar Datos Personales', 'info', 1, 1, 1),
(27, 11, 'Cambiar Nombre de Usuario', 'changeUser', 1, 1, 2),
(28, 11, 'Cambiar Contraseña', 'changepass', 1, 1, 3),
(35, 4, 'Gestionar Opciones', 'options', 0, 1, 3),
(51, 17, 'Ver Usuarios', 'all', 1, 1, 2),
(52, 17, 'Agregar Usuario', 'addu', 1, 1, 1),
(53, 17, 'Editar Persona', 'editpu', 0, 1, 1),
(54, 17, 'Editar Usuario', 'edituu', 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permit`
--

CREATE TABLE `permit` (
  `id_permit` int(11) NOT NULL,
  `id_optionm` int(11) NOT NULL,
  `permit_action` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `permit_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `permit`
--

INSERT INTO `permit` (`id_permit`, `id_optionm`, `permit_action`, `permit_status`) VALUES
(1, 1, 'singIn', 1),
(2, 2, 'singOut', 1),
(3, 4, 'save', 1),
(4, 5, 'delete', 1),
(6, 9, 'save', 1),
(7, 11, 'insertRole', 1),
(8, 11, 'deleteRole', 1),
(9, 13, 'saveOption', 1),
(10, 12, 'deleteOption', 1),
(11, 16, 'savePermit', 1),
(12, 15, 'deletePermit', 1),
(15, 22, 'save', 1),
(16, 23, 'delete', 1),
(17, 25, 'changepass', 1),
(18, 18, 'save', 1),
(19, 20, 'delete', 1),
(20, 26, 'save', 1),
(21, 27, 'saveNewNick', 1),
(22, 28, 'chgpass', 1),
(26, 35, 'addRelation', 1),
(27, 35, 'deleteRelation', 1),
(39, 52, 'new', 1),
(40, 53, 'save_edit_personu', 1),
(41, 54, 'save_edit_useru', 1),
(42, 51, 'reset_pass', 1),
(43, 51, 'change_status', 1),
(52, 3, 'openBox', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `id_person` int(11) NOT NULL,
  `person_name` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `person_surname` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `person_dni` char(8) COLLATE utf8_spanish_ci NOT NULL,
  `person_birth` date NOT NULL,
  `person_number_phone` varchar(24) COLLATE utf8_spanish_ci DEFAULT NULL,
  `person_genre` char(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `person_address` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`id_person`, `person_name`, `person_surname`, `person_dni`, `person_birth`, `person_number_phone`, `person_genre`, `person_address`) VALUES
(1, 'César José', 'Ruiz', '12', '1995-09-03', '969902084', 'M', 'Calle Estado de Israel #256'),
(2, 'Pedro', 'Lopez', '76512412', '2019-04-10', '987636363', 'M', 'GG 234'),
(3, 'Angelo', 'Tapullima', '11111111', '1996-10-13', '999999', 'M', 'Calle SiempreViva 669'),
(4, 'Kimi1', 'Ruiz1', '21312312', '2222-12-12', '98732498', 'M', 'asdas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `role_name` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `role_description` varchar(126) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id_role`, `role_name`, `role_description`) VALUES
(1, 'Free', 'Rol usado por los usuarios sin credenciales'),
(2, 'SuperAdmin', 'Administra Todo'),
(3, 'Admin', 'Puto el que lo lea');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rolemenu`
--

CREATE TABLE `rolemenu` (
  `id_rolemenu` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rolemenu`
--

INSERT INTO `rolemenu` (`id_rolemenu`, `id_role`, `id_menu`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(7, 2, 9),
(8, 2, 10),
(11, 2, 11),
(25, 3, 2),
(26, 3, 3),
(29, 3, 11),
(35, 2, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_person` int(11) DEFAULT NULL,
  `id_role` int(11) NOT NULL,
  `user_nickname` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_password` varchar(64) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `user_image` varchar(126) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_status` tinyint(1) DEFAULT NULL,
  `user_created_at` datetime NOT NULL,
  `user_last_login` datetime NOT NULL,
  `user_modified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `id_person`, `id_role`, `user_nickname`, `user_password`, `user_email`, `user_image`, `user_status`, `user_created_at`, `user_last_login`, `user_modified_at`) VALUES
(1, 1, 2, 'cesarjose39', '$2y$10$XwgdmunCA.7/OizoRuRwG.OCRRKfg37FTfApVmG20AWOZMTJjPq4O', 'cesar.ruiz39124@gmail.com', 'media/user/1/user.jpg', 1, '2018-11-26 00:00:00', '2019-04-05 08:40:29', '2019-02-17 16:06:56'),
(2, 3, 3, 'angelo', '$2y$10$Ew8Xl7V9RdHPLyKbw6Z6De1eqHGTmx4NWW3gb6jxuPoKgZjDKHs8.', 'a@a.com', 'media/user/1/user.jpg', 1, '2019-04-17 11:55:39', '0000-00-00 00:00:00', '2019-04-17 11:55:39'),
(3, 4, 3, 'kimi1', '$2y$10$83a6ObcXKAJbfFodpVJryec4rhoodT.0EgofE7cw9znEhGRzZgIWi', 'a@a.com', 'media/user/1/user.jpg', 0, '2019-04-18 19:45:47', '0000-00-00 00:00:00', '2019-04-18 20:06:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indices de la tabla `optionm`
--
ALTER TABLE `optionm`
  ADD PRIMARY KEY (`id_optionm`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indices de la tabla `permit`
--
ALTER TABLE `permit`
  ADD PRIMARY KEY (`id_permit`),
  ADD KEY `id_optionm` (`id_optionm`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id_person`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indices de la tabla `rolemenu`
--
ALTER TABLE `rolemenu`
  ADD PRIMARY KEY (`id_rolemenu`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `R_2` (`id_person`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `optionm`
--
ALTER TABLE `optionm`
  MODIFY `id_optionm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `permit`
--
ALTER TABLE `permit`
  MODIFY `id_permit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `person`
--
ALTER TABLE `person`
  MODIFY `id_person` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rolemenu`
--
ALTER TABLE `rolemenu`
  MODIFY `id_rolemenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `optionm`
--
ALTER TABLE `optionm`
  ADD CONSTRAINT `optionm_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);

--
-- Filtros para la tabla `permit`
--
ALTER TABLE `permit`
  ADD CONSTRAINT `permit_ibfk_1` FOREIGN KEY (`id_optionm`) REFERENCES `optionm` (`id_optionm`);

--
-- Filtros para la tabla `rolemenu`
--
ALTER TABLE `rolemenu`
  ADD CONSTRAINT `rolemenu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`),
  ADD CONSTRAINT `rolemenu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `R_2` FOREIGN KEY (`id_person`) REFERENCES `person` (`id_person`),
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
