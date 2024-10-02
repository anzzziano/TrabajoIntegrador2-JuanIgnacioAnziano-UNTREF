# Trabajo integrador 2 untref

## Descripcion del Trabajo

En este proyecto, se desarrolla una plataforma de streaming usando Node.js y Sequelize con MySQL.esta App permitirá realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) sobre una base de datos relacional (MySQL), utilizando el archivo trailerflix.json como referencia para diseñar la base de datos.

El trabajo integrador 100% funcional deberá ser presentado el 10 de octubre de 2024.


## Actividades a desarrollar:

- [x] Ruta de inicio .
- [x] Ruta para **obtener todos los contenidos**.
- [x] obtener un contenido por su **ID** .
- [x] filtrar un contenido por la busqueda de su **TITULO**.
- [x] agregar un contenido con **POST**.
- [x] modificar un contenido con **PUT**.
- [x] eliminar un contenido con **DELETE**.
- [x] control de **ERRORES** de cada **ENDPOINT** y por si hay **RUTAS INEXISTENTES**.

-  **la logica de los **endpoints** señalados anteriormente se encuentran en el entry point index.js**

- [x] conexion a **MySQL** con **sequelize** : esta conexion esta armada en la carpeta src : **(src/conexion/connection.js)** , donde sequelize se conecta a la base de datos atraves de la informacion proporcionada en el archivo **.env**
- [x] la carpeta **MODELOS**(src/modelos), muestra la composicion de cada tabla de la base de datos a utilizar
- [x] la **base de datos** se encuentra **armada** en el archivo **DBTrailerflix.sql**, solo se debera ejecutar en mysql y ya estaria a tu alcance la DB.

**-RUTA DE INICIO**

**codigo**

```javascript
app.get("/", (req, res) => {
  res.status(200).send("ruta de inicio");
});
```

**-RUTA PARA OBTENER TODOS LOS CONTENIDOS**

```javascript
app.get("/contenidos", async (req, res) => {
  try {
    const allContenidos = await contenido.findAll();
    allContenidos !== 0
      ? res.status(200).json(allContenidos)
      : res.status(404).json({ error: "no se encontraron contendios" });
  } catch (error) {
    res.status(500).json({ error: "error en el servidor" });
  }
});
```

respuesta un **200 OK** , devolviendo un json con todo el contenido.
example = /contenidos

**RUTA PARA OBTENER UN CONTENIDO POR SU ID**

```javascript
app.get("/contenidos/:idContenido", async (req, res) => {
  try {
    const { idContenido } = req.params;
    const content = await contenido.findByPk(idContenido);

    !content
      ? res
          .status(404)
          .json({ error: "no se encontro un contenido con ese id" })
      : res.status(200).json(content);
  } catch (error) {
    res.status(500).json({ error: "error en el servidor" });
  }
});
```

**parametros en la busqueda:**
idContenido = especificar el id del contenido que desee buscar.
example : /contenidos/22

respuesta un **200 OK** devolviendo en contenido del id proporcionado

**RUTA PARA FILTRAR UN CONTENIDO POR SU TITULO**

```javascript
app.get("/contenidos/titulo/:titulo", async (req, res) => {
  try {
    const { titulo } = req.params;
    const title = await contenido.findAll({
      where: {
        titulo: {
          [Op.like]: `%${titulo}%`,
        },
      },
    });
    if (title.length !== 0) {
      res.status(200).json(title);
      //console.log(title);
    } else {
     res.status(404).json({error :"titulo no encontrado / no disponible"});
      //console.log(title);
    }
  } catch (error) {
    res.status(500).json({ error: "error en el servidor" });
  }
});
```

los **PARAMETROS** de esta busqueda deben contener el titulo del contenido proporcionado , exmple = /contenidos/titulo/riverdale

si la busqueda fue correcta devolveria un **200 OK**

**CREAR UN CONTENIDO UTILIZANDO POST**


```javascript
app.post("/contenidos", async (req, res) => {
  try {
    const {
      idContenido,
      poster,
      titulo,
      idCategoria,
      resumen,
      temporadas,
      idTrailer,
    } = req.body;

    const content = await contenido.create({
      idContenido,
      poster,
      titulo,
      idCategoria,
      resumen,
      temporadas,
      idTrailer,
    });

    res.status(201).json(content);
  } catch (error) {
    res.status(500).json({ error: "error del servidor" });
    console.log(error);
  }
});
```

en postman establecer esta ruta al hacer el **POST** : http://localhost:3000/contenidos 

luego establecida esa ruta ingresar en el **BODY** de la peticion el siguiente JSON:

```json
{
  "idContenido":"36",
     "poster":"/poster/36.jpg",
     "titulo": "The Matrix",
     "idCategoria":"36",
    "resumen": "Un hacker descubre que el mundo que conoce es una simulación y se une a una rebelión para liberarlo.",
    "idTrailer":"20"
}
```

intente en lo posible de insertar ese json (el que esta arriba)porque esta configurado con claves foraneas de otras tablas y si intenta de insertar otros valores corrobore que existan las claves foraneas de otras tablas si no le va a aparecer un error.

**ACTUALIZAR PARCIALMENTE UN PRODUCTO**

```javascript
app.put("/contenidos/:idContenido", async (req, res) => {
  try {
    const { idContenido } = req.params;

    const { poster, titulo, idCategoria, resumen, temporadas, idTrailer } =
      req.body;

    const [contenidoToUpdate] = await contenido.update(
      {
        poster,
        titulo,
        idCategoria,
        resumen,
        temporadas,
        idTrailer,
      },
      {
        where: { idContenido },
      }
    );

    if (contenidoToUpdate === 0) {
      res.status(404).json({ error: "contenido no encontrado" });
    }

    const updateContent = await contenido.findByPk(idContenido);
    res.status(200).json(updateContent);
  } catch (error) {
    res.status(500).json({ error: "error en el servidor" });
  }
});
```
en postman establecer esta ruta al hacer el **PUT** : http://localhost:3000/contenidos/36 

luego establecida esa ruta ingresar en el **BODY** de la peticion el siguiente JSON:

```json
{
     "poster":"/poster/36.jpg",
     "titulo": " Matrix, pelicula del hacker",
     "idCategoria":"36",
    "resumen": "Un hacker descubre que el mundo que conoce es una simulación y se une a una rebelión para liberarlo.",
    "idTrailer":"20"
 }
```
intente en lo posible de insertar ese json (el que esta arriba) porque esta configurado con claves foraneas de otras tablas y si intenta de insertar otros valores corrobore las claves foraneas.

**ELIMINAR UN CONTENIDO**

```javascript
app.delete("/contenidos/:idContenido", async (req, res) => {
  try {
    const { idContenido } = req.params;
    const contentToDelete = await contenido.findByPk(idContenido);

    if (!contentToDelete) {
      return res.status(404).json({ error: "contenido no encontrado" });
    }

    await contentToDelete.destroy();

    res.status(204).send();

  } catch (error) {
    res.status(500).json({ error: "error en el servidor" });
  }
});
```
en postman establecer esta ruta al hacer el **DELETE** : http://localhost:3000/contenidos/36 

en este caso no establecer ningun body porque lo que estamos buscando es eliminar el contenido


**CONTROL DE ERRORES PARA RUTAS INEXISTENTES**

```javascript
app.use((req, res, next) => {
  res.status(404).send("no existe esa ruta");
});
```

**MIDDLEWARE PARA QUE SE SINCRONICE EL ENTRY POINT (INDEX.JS) CON EL MODELO DE CADA TABLA**

```javascript
app.use(async (req, res, next) => {
  try {
    await sequelize.authenticate();
    await categorias.sync();
    await contenido.sync();
    await contenidogeneros.sync();
    await contenidorepartos.sync();
    await generos.sync();
    await repartos.sync();
    await trailer.sync();
    next();
  } catch (error) {
    res.status(500).json({ error: "error en el servidor" });
  }
});
```

estos metodos utilizados anteriormente ej = authenticate,sync.... son metodos que ya vienen implementados con sequialize.

## MODELOS DE LAS TABLAS

**Categorías**
idCategoria: Clave primaria.
nombre: Nombre de la categoría.

**Contenido**
idContenido: Clave primaria.
poster: Ruta de la imagen del póster.
titulo: Título del contenido.
idCategoria: Clave foranea hacia la tabla categorias.
resumen: Descripción del contenido.
temporadas: Número de temporadas, acepta null porque puede ser pelicula
idTrailer: Clave foranea hacia la tabla trailer, acepta null porque quizas no tenga trailer

**Generos**
idGenero: Clave primaria.
nombre: Nombre del género, serie/pelicula.

**Repartos**
idReparto: Clave primaria.
nombre: miembros del reparto.

**Trailer**
idTrailer: Clave primaria.
url: URL del tráiler.

**Relaciones**
contenidoGeneros: Relación de muchos a muchos entre contenido y generos.
contenidoRepartos: Relación de muchos a muchos entre contenido y repartos.

**-dependencias utilizadas :**
-express
-dotenv
-mysql2
-sequelize

## instalacion

para instalar node_modules

```shell
npm i
```

**instalacion de dependecias a utilizar en el proyecto**

```shell
npm install express dotenv sequelize mysql2
```
