drop database if exists unt;
create database unt;
use unt;

create table noticia(idNoticia int auto_increment,titulo varchar(100),resumen varchar(500), descripcion varchar(3000),
primary key(idNoticia));

create table cursos(idCurso int auto_increment, nombre varchar(100), creditos int, ciclo int, condicion char(1), codigo char(6),
primary key(idCurso));

create table comunicado(idComunicado int auto_increment, titulo varchar(100), resumen varchar(500), descripcion varchar(3000),
primary key(idComunicado));

create table investigacion(idInvestigacion int auto_increment, titulo varchar(100), autor varchar(100), descripcion varchar(300), url varchar(100),
primary key(idInvestigacion));

create table usuario(idUsuario int auto_increment, nombres varchar(100), codigo varchar(20), 
contraseña varchar(100), DNI char(8), tipoUsuario varchar(15),
primary key(idUsuario));

create table docente(idDocente int auto_increment, nombres varchar(100), logros varchar(600),
primary key(idDocente));

create table tramites(idUsuario int, idTramite int auto_increment, nombre varchar(100), descripcion varchar(100), fecha date,
primary key(idTramite),
foreign key (idUsuario) references usuario(idUsuario));

create table horario(ciclo int, linkHorario varchar(100),
primary key(ciclo));

insert into noticia(titulo, resumen, descripcion) values('UNT ENTRE LAS MEJORES UNIVERSIDADES DE LATINOAMÉRICA', 
'Una vez más, nuestra emblemática Universidad Nacional de Trujillo confirma su compromiso de ofrecer una educación superior de calidad sobre la base de la investigación científica, tecnológica y humanística, que cumple con los más altos estándares académicos en el ámbito nacional e internacional.', 
'<p>Una vez más, nuestra emblemática Universidad Nacional de Trujillo confirma su compromiso de ofrecer una educación superior de calidad sobre la base de la investigación científica, tecnológica y humanística, que cumple con los más altos estándares académicos en el ámbito nacional e internacional.</p>
<p>Así lo demuestra uno de los rankings universitarios más prestigiosos del mundo: QS Latin America University 2022, donde nuestra Casa Superior de Estudios figura en la lista de las 418 mejores universidades de Latinoamérica.</p>
<p>En dicha medición internacional se encuentran 20 universidades públicas y privadas de nuestro país, de entre las cuales la UNT se ubica en el sobresaliente puesto 16. Además, si solo se cuentan las universidades públicas, se posiciona en el puesto 5, después de la Universidad Nacional Federico Villarreal (Lima) y la Universidad Nacional del Altiplano (Puno).</p>
<p>El rector de la UNT, Dr. Carlos Vásquez Boyer refirió que, a pesar del actual contexto de la pandemia, la Universidad Nacional de Trujillo sigue alcanzando resultados contundentes que demuestran su grandeza académica e institucional.</p>
<p>“Este importante logro indica de manera objetiva el nivel de excelencia e impacto internacional que posee nuestra Universidad, la cual está históricamente comprometida con los desafíos de la región y el país. Por eso, es nuestra responsabilidad, desde la Alta Dirección, seguir impulsando el desarrollo de nuestra alma mater”, acotó Vásquez Boyer.</p>
<p>El ranking de universidades de América Latina es uno de los más grandes a nivel mundial. Es una clasificación que elabora anualmente la QS Quacquarelli Symonds, institución británica especializada en educación universitaria.</p>
<p>Este ranking QS se fundamenta en la medición de cinco indicadores: reputación académica, reputación del empleador, proporción de profesores por estudiantes, personal con doctorado y red de investigación internacional, en los cuales nuestra Universidad demostró un destacado desempeño.</p>
<p>La casa de Simón Bolívar y José Faustino Sánchez Carrión sigue consolidando su prestigio, gracias a la formación integral y óptima de profesionales que aportan, desde su campo de acción, a la sociedad en temas de investigación, responsabilidad social e innovación tecnológica.</p>
<p>Enlace del ranking: https://cutt.ly/kWvTZVR</p>'),
('DOCENTE UNT PUBLICA ARTÍCULO EN PRESTIGIOSA REVISTA CIENTÍFICA PLOS ONE',
'El Dr. Carlos Alberto Minchón Medina, docente del Departamento Académico de Estadística, Facultad de Ciencias Físicas y Matemáticas de la Universidad Nacional de Trujillo, como integrante de una red de investigación universitaria, ha publicado el artículo “Políticas de investigación y producción científica: un estudio de 94 universidades peruanas” en la revista PLOS ONE en su edición de mayo de este año.',
'<p>El Dr. Carlos Alberto Minchón Medina, docente del Departamento Académico de Estadística, Facultad de Ciencias Físicas y Matemáticas de la Universidad Nacional de Trujillo, como integrante de una red de investigación universitaria, ha publicado el artículo “Políticas de investigación y producción científica: un estudio de 94 universidades peruanas” en la revista PLOS ONE en su edición de mayo de este año.</p>
<p>La red de prestigiosos investigadores científicos, además de nuestro docente investigador, está conformada por Pablo Alejandro Millones-Gómez, Judith Soledad Yangali-Vicente, Claudia Milagros Arispe-Alburqueque, Oriana Rivera-Lozada, Kriss Melody Calla-Vásquez, Roger Damaso Calla-Poma y Margarita Fe Requena-Mendizábal, docentes de la Universidad Norbert Wiener y la Universidad Nacional Mayor de San Marcos.</p>
<p>El objetivo de la investigación fue evaluar la influencia de las políticas de investigación en la producción científica de las universidades públicas y privadas peruanas en Scopus y Web of Science, por investigadores certificados por Concytec, comprendiendo 92 universidades y dos escuelas de posgrado licenciadas por la Superintendencia Nacional de Educación Superior del Perú (Sunedu) para el período 2016-2020. Para lecturas y citas, el artículo se puede descargar de https://doi.org/10.1371/journal.pone.0252410</p>
<p>El artículo publicado en PLOS ONE, a la fecha presenta más de 1100 vistas, está registrado en Scopus, pero también puede accederse a través de Web of Science y PubMed, entre otras bases de datos indexadas. En Google Académico, puede encontrarse en 11 versiones, o direcciones web para acceso.</p>
<p>El Departamento Académico de Estadística, a través de sus docentes, contribuye a que la Universidad Nacional de Trujillo mejore tanto en el ranking general de Web of Science como el ranking de Scopus realizado por Sunedu, promoviendo el incremento de su índice h de impacto.</p>');

insert into comunicado(titulo, resumen, descripcion) values('CONIMERA 2021',
'El Colegio de Ingenieros del Perú, Consejo Departamental de Lima, Capítulo de Ingeniería Mecánica y Mecánica Eléctrica, invitan a la comunidad académica de la FIS UNCP, a participar del CONIMERA 2021 XXIV',
'<p>El Colegio de Ingenieros del Perú, Consejo Departamental de Lima, Capítulo de Ingeniería Mecánica y Mecánica Eléctrica, invitan a la comunidad académica de la FIS UNCP, a participar del CONIMERA 2021 XXIV Congreso Nacional de Ingeniería, Mecánica y Ramas Afines.</p> 
<p>Convocatoria al concurso de trabajos técnicos 11,12,13 de #Octubre de 2021. BASES: http://cdlima.org.pe/conimera/</p>');

insert into investigacion(titulo, autor, descripcion, url) values('Capacidad en Sistemas Celulares
W-CDMA', 'Luis Mendo Tomás', 'En esta Tesis Doctoral se lleva a cabo un análisis de las redes celulares de
Tercera Generación basadas en W-CDMA, desde el punto de vista de capacidad. Un análisis de este tipo es una tarea compleja, debido a la gran cantidad
de factores que intervienen. El estudio abarca la interfaz radio, y considera
únicamente detección monousuario (basada en receptores Rake).', 'http://oa.upm.es/599/1/LUIS_MENDO_TOMAS.pdf'), ('Estudio y automatización del proceso y monitoreo de elaboración de tesis de estudiantes de la carrera de Ingeniería de Sistemas',
'Almeida Murillo, Zaira Janeth',
'En la presente investigación se desarrolló sistema web para el Monitoreo y seguimiento del proceso de Tesis lo cual permitirá a la Universidad Politécnica Salesiana de la ciudad de Guayaquil carrera sistemas simplificar las actividades y optimizar recursos mejorando el tiempo de ejecución de procesos, planificación, coordinación y control de las diferentes actividades que se realiza diariamente',
'https://dspace.ups.edu.ec/handle/123456789/4691');

insert into usuario(nombres, codigo, contraseña, DNI, tipoUsuario) values('Salvattore Razzeto', '88664422', '$2y$10$PuV0AuYH0SuRHy5D0cXss.71YJsqTWGiQL8Yo/zAZCpVVi4yyrKyG', '74466379', 'Administrador'),
('Miguel Benites', '123456', '$2y$10$xCTj/ciOcqqfZew9EOwRt.kkXQYm735kgTq9ocfHaZV7TW4in9gR6', '78945612', 'Docente'),
('Gerardo Avalos', '11335577', '$2y$10$zXAIoXb.uwJWZE8v9db3K.GKvvxyccNYwBMnKWQg1rFob.4XK0lse', '45678912', 'Estudiante');

insert into tramites(idUsuario, nombre, descripcion, fecha) values(3, 'Certificado de estudios', 'Certificado de estudios de 1 año, en primera especialidad', '2021-08-05'),
(3, 'Grados y títulos', 'Titulo profesional en Ingeniería de Sistemas', '2021-05-06');

insert into docente(nombres, logros) values('Miguel Benites', 'PhD en Ingeniería del Agua y Medioambiente por la Universidad Politécnica de Valencia, España. Doctor en Medioambiente y Desarrollo Sostenible. Maestría en Ciencias con mención en Minería y Medio Ambiente, Estancia de investigación en Adam Mickiewicz University, Polonia. Título profesional en la Facultad de Ingeniería Ambiental de la Universidad Nacional de Ingeniería. Actualmente es investigador en la Universidad de Ciencias y Humanidades.');

insert into cursos(nombre, creditos, ciclo, condicion, codigo) values
('Desarrollo del Pensamiento Lógico Matemático', 3, 1, 'O', 'EG-101'),
('Lectura Crítica y Redacción de Textos Académicos', 3, 1, 'O', 'EG-102'),
('Desarrollo Personal', 3, 1, 'O', 'EG-103'),
('Introducción al Análisis Matemático', 4, 1, 'O', 'EG-104'),
('Estadística General', 4, 1, 'O', 'EG-105'),
('Introducción a la Ingeniería de Sistemas', 2, 1, 'O', 'EE-101'),
('Introducción a la Programación', 3, 1, 'O', 'EE-102'),
('Técnicas de comunicación eficaz', 1, 1, 'O', 'EL-101'),
('Taller de Música', 1, 1, 'E', 'EL-102'),
('Taller de Liderazgo y trabajo en equipo', 1, 1, 'E', 'EL-103'),

('Ética, Convivencia Humana y Ciudadanía', 4, 2, 'O', 'EG-201'),
('Sociedad, Cultura y Ecología', 3, 2, 'O', 'EG-202'),
('Cultura Investigativa y Pensamiento Crítico', 3, 2, 'O', 'EG-203'),
('Análisis Matemático', 4, 2, 'O', 'EG-204'),
('Física General', 4, 2, 'O', 'EG-205'),
('Programación Orientada a Objetos I', 4, 2, 'O', 'EE-201'),
('Taller de Manejo de TIC', 1, 2, 'E', 'EL-201'),
('Taller de Danzas Folklóricas', 1, 2, 'E', 'EL-202'),
('Taller de Deporte', 1, 2, 'E', 'EL-203'),

('Administración General', 3, 3, 'O', 'EP-301'),
('Sistémica', 3, 3, 'O', 'EE-301'),
('Estadística Aplicada', 3, 3, 'O', 'EP-302'),
('Matemática Aplicada', 3, 3, 'O', 'EP-303'),
('Física Electrónica', 3, 3, 'O', 'EP-304'),
('Programación Orientada a Objetos II', 4, 3, 'O', 'EE-302'),
('Ingeniería Gráfica', 3, 3, 'E', 'EL-301'),
('Sicología Organizacional', 3, 3, 'E', 'EL-302'),

('Economía General', 3, 4, 'O', 'EP-401'),
('Diseño Web', 3, 4, 'O', 'EE-401'),
('Pensamiento de Diseño', 3, 4, 'O', 'EP-402'),
('Gestión por Procesos', 3, 4, 'O', 'EP-403'),
('Sistemas Digitales', 3, 4, 'O', 'EE-402'),
('Estructura de Datos Orientado a Objetos', 4, 4, 'O', 'EE-403'),
('Computación Gráfica y Visual', 3, 4, 'E', 'EL-401'),
('Plataformas Tecnológicas', 3, 4, 'E', 'EL-402'),

('Contabilidad Gerencial', 3, 5, 'O', 'EP-501'),
('Tecnologías Web', 3, 5, 'O', 'EE-501'),
('Investigación de Operaciones', 3, 5, 'O', 'EP-502'),
('Ingeniería de Datos I', 4, 5, 'O', 'EE-502'),
('Arquitectura y Organización de Computadoras', 3, 5, 'O', 'EE-503'),
('Sistemas de Información', 4, 5, 'O', 'EE-504'),
('Teleinformática', 3, 5, 'E', 'EL-501'),
('Transformación Digital', 3, 5, 'E', 'EL-502'),

('Finanzas Corporativas', 3, 6, 'O', 'EP-601'),
('Sistemas Inteligentes', 3, 6, 'O', 'EE-601'),
('Ingeniería Económica', 3, 6, 'O', 'EP-602'),
('Ingeniería de Datos II', 3, 6, 'O', 'EE-602'),
('Sistemas Operativos', 3, 6, 'O', 'EE-603'),
('Ingeniería de Requerimientos', 4, 6, 'O', 'EE-604'),
('Ingeniería Ambiental', 3, 6, 'E', 'EL-601'),
('Gestión del Talento Humano', 3, 6, 'E', 'EL-602'),

('Cadena de Suministro', 3, 7, 'O', 'EP-701'),
('Gestión de Servicios de TIC', 3, 7, 'O', 'EE-701'),
('Metodología de la Investigación Científica', 3, 7, 'O', 'EI-701'),
('Planeamiento Estratégico de la Información', 3, 7, 'O', 'EE-702'),
('Redes y Comunicaciones I', 3, 7, 'O', 'EE-703'),
('Ingeniería del Software I', 4, 7, 'O', 'EE-704'),
('Administración de Base de Datos', 3, 7, 'E', 'EL-701'),
('Negocios Electrónicos', 3, 7, 'E', 'EL-702'),

('Marketing y Medios Sociales', 3, 8, 'O', 'EP-801'),
('Seguridad de la Información', 3, 8, 'O', 'EE-801'),
('Internet de las Cosas', 3, 8, 'O', 'EE-802'),
('Inteligencia de Negocios', 3, 8, 'O', 'EE-803'),
('Redes y Comunicaciones II', 3, 8, 'O', 'EE-804'),
('Ingeniería del Software II', 4, 8, 'O', 'EE-805'),
('Deontología y Derecho Informático', 3, 8, 'E', 'EL-801'),
('Arquitectura basada en Microservicios', 3, 8, 'E', 'EL-802'),

('Gestión de Proyectos de TIC', 3, 9, 'O', 'EE-901'),
('Auditoría Informática', 3, 9, 'O', 'EE-902'),
('Tesis I', 4, 9, 'O', 'EI-901'),
('Analítica de Negocios', 3, 9, 'O', 'EE-903'),
('Computación en la Nube', 3, 9, 'O', 'EE-904'),
('Ingeniería Web', 3, 9, 'O', 'EE-905'),
('Emprendedurismo Tecnológico', 3, 9, 'E', 'EL-901'),
('Hackeo Ético', 3, 9, 'E', 'EL-902'),

('Sistemas de Información Empresarial', 3, 10, 'O', 'EE-X01'),
('Gobierno de TIC', 3, 10, 'O', 'EE-X02'),
('Tesis II', 4, 10, 'O', 'EI-X01'),
('Arquitectura Empresarial', 3, 10, 'O', 'EE-X03'),
('GResponsabilidad Social Corporativa', 3, 10, 'O', 'EP-X01'),
('Aplicaciones Móviles', 3, 10, 'O', 'EE-X04'),
('Prácticas Pre Profesionales', 3, 10, 'O', 'EE-X04');

insert into horario(ciclo, linkHorario) values
(1, 'ciclo1.png'),
(3, 'ciclo3.png'),
(5, 'ciclo5.png'),
(7, 'ciclo7.png'),
(9, 'ciclo9.png');