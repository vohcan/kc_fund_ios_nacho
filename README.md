# kc_ fund_ ios_nacho
practice ios with swift

##Preguntas

###- Qué es  `isKindOfClass` y para que sirve?
este metodo se usa para conocer el tipo de una clase, devolviendo un booleano.
###-¿De qué otra forma podemos trabajar?

en este caso, hemos hecho un cast con as? para saber el tipo que devolvía cada elemento, usándolo junto con `guard`.

###- ¿Dónde guardarías las imágenes de portada y los pdfs? 

En main Bundle, son elementos que deben persistir y hay que asegurarse que el sistema no los elimina cuando necesite liberar memoria...

###- Para persistir `isFavorite` ¿qué harías?
No he llegado a ese punto... pero supongo que guardando los datos en el bundle con nsUserDefault.

###- ¿cómo enviarias información de Book a LibraryTableViewController?
se podría comunicar a través de target accion, delegado y notificaciones...
lo suyo es usar el mecanismo más sencillo y que haga la funcion necesaria...
en este caso creo que sería buena opción hacerlo con el método del delegado.


### - usar reloadData, ¿te parece una aberración por rendimiento?¿hay una forma alternativa?

la información está guardada en local igual que los parametros de si es o no favorito... por lo que no me parece mala idea...porque no creo que tire mucho del rendimiento de la app. Además, para dotar de contenido a las tablas, se hace según se van mostrando por lo que no colapsa el sistema.

###- ¿que funcionalidades añadirias?‚¿otras versiones para monetizar?

pondría un buscador por título, por palabras claves (tags).
otra versión que haría sería para videos, una videoteca.
