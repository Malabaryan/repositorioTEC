
ALTER TABLE palabraClave
    ADD CONSTRAINT fk_DOIpalabraClave
    FOREIGN KEY (DOI)
    REFERENCES publicacion(DOI) ON DELETE CASCADE;


ALTER TABLE proyecto
	ADD CONSTRAINT chk_estado check (estado = 'activo ' or estado = 'Finalizado' or estado = 'pendiente')

ALTER TABLE autor
    ADD CONSTRAINT fk_DOIAutor
    FOREIGN KEY (DOI)
    REFERENCES publicacion(DOI) ON DELETE CASCADE;

ALTER TABLE datasetAsociado
    ADD CONSTRAINT fk_datasetNombre
    FOREIGN KEY (nombreDataset)
    REFERENCES dataset(nombre) ON DELETE CASCADE;


ALTER TABLE datasetAsociado
    ADD CONSTRAINT fk_datasetDOI
    FOREIGN KEY (DOI)
    REFERENCES  publicacion(DOI) ON DELETE CASCADE;


ALTER TABLE investigadorEnProyecto
    ADD CONSTRAINT fk_ORCIDinvestigadorEnProyecto
    FOREIGN KEY (ORCID)
    REFERENCES investigador(ORCID) ON DELETE CASCADE


ALTER TABLE autor
    ADD CONSTRAINT fk_ORCIDAutor
    FOREIGN KEY (ORCID)
    REFERENCES investigador(ORCID) ON DELETE CASCADE;


ALTER TABLE investigadorEnProyecto
    ADD CONSTRAINT fk_idproyectoinvestigadorEnProyecto
    FOREIGN KEY (id_proyecto)
    REFERENCES proyecto(id_proyecto) ON DELETE CASCADE;



-- --- ---- -- --- --





--
--ALTER TABLE investigador
--    ADD CONSTRAINT fk_areaInvestigador
--    FOREIGN KEY (area)
--    REFERENCES areaDeInteres(area) ON DELETE CASCADE;


