create table investigador(
 ORCID varchar(16) not null, 
 nombre varchar(14) not null, 
 apellido1 varchar(13) not null, 
 apellido2 varchar(13), 
 AfiliacionActual varchar(20), 
 correo varchar(30), 
 telefono int, 
 direccion varchar(40), 
 Primary key (ORCID) );

create table proyecto ( 
	id_proyecto int not null, 
	nombre varchar(15), 
	descripcion varchar(40), 
	fechaInicio date, 
	fechaFinal date, 
	estado varchar(10), 

	constraint chk_estado check (estado = 'activo ' or estado = 'Finalizado' or estado = 'pendiente')
	Primary key (id_proyecto)

);

create table finaciamiento( 
	id_financiamento int, 
	nombre varchar(14), 
	organismoFinanciador varchar(20), 
	organismoAdmintrador varchar(20), 
	investigador varchar(14), 	
	fechaInicio date, 
	fechaFinal date, 
	estado varchar(10), 
	tipoFinancimiento varchar(40),

	Primary key (id_financiamento) );

create table investigadorEnProyecto( 
	ORCID varchar(16), 
	id_proyecto int, 

	foreign key(ORCID) references investigador(ORCID), 
	foreign key(id_proyecto) references proyecto(id_proyecto)

);

create table publicacion ( 
	  DOI varchar(30) not null,
	  titulo varchar(15),
	  mesPublicacion date, 
	  anhoPubicacion int, 
	  fuente varchar(20), 
	  Primary key(DOI) );

create table palabraClave( 
	DOI varchar(30) not null, 
	palabraClave varchar(20), 
	Primary key(DOI, palabraClave) 
	foreign key(DOI) references publicacion(DOI), );

create table areaDeInteres( 
	area varchar(15), 
	ORCID varchar(16), 
	Primary key(area, ORCID) 
	foreign key(ORCID) references investigador(ORCID), ); 

create table dataset ( 
	descripcion varchar(25), 
	nombre varchar(15), 
	fechaCreacion date, 
	conclusion varchar(25), 
	analisis varchar(15), 
	inicioRecoleccion date, 
	finalRecoleccion date, 
	archivo

);

create table datasetAsociado( 
	nombreDataset archar(15), 
	DOI varchar(30) not null, 
	foreign key(DOI) references publicacion(DOI), ); 

create table autor( 
	DOI varchar(30) not null, 
	ORCID varchar(16), 
	Primary key(DOI,ORCID), 
	foreign key(DOI) references publicacion(DOI), 
	foreign key(ORCID) references investigador(ORCID),

); Code and documents.