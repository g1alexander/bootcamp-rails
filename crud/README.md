# Notas

video = Video.new
video.errors
video.errors.messages
video.valid? - si es valido para guadar
present? - si hay contenido
video.new_record? - no se ha guardado
video.persisted? - si se ha guadardo
video.save(validate: false) - saltar validaciones

los callbacks - notificaciones via slack, generar pdf, email, actualizar otras tablas

la diferencia entre el metodo save y create es que create solo se ejecuta una vez debido a que un registro solo se guarda en base solo una vez y save siempre se ejecuta que modifica los datos del registro

Video.where(description: nil).delete_all - eliminar todo

signo de ? y ! se diferencian en que el ? valida y el ! se salta la validacion, cuando valida devuelve un resultado, el ! regresa una excepcion
