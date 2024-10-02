require("dotenv").config();

const express = require("express");
const app = express();

const PORT = process.env.PORT || 3000;

const sequelize = require("./src/conexion/connection");

const categorias = require("./src/modelos/categorias");
const contenido = require("./src/modelos/contenido");
const contenidogeneros = require("./src/modelos/contenidogeneros");
const contenidorepartos = require("./src/modelos/contenidorepartos");
const generos = require("./src/modelos/generos");
const repartos = require("./src/modelos/repartos");
const trailer = require("./src/modelos/trailer");

const { Op } = require("sequelize");

app.use(express.json());

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

//ruta de inicio

app.get("/", (req, res) => {
  res.status(200).send("ruta de inicio");
});

//ruta para obtener todos los contenidos
app.get("/contenidos", async (req, res) => {
  try {
    const allContenidos = await contenido.findAll();
    //console.log(allContenidos);
    allContenidos !== 0
      ? res.status(200).json(allContenidos)
      : res.status(404).json({ error: "no se encontraron contendios" });
  } catch (error) {
    res.status(500).json({ error: "error en el servidor" });
  }
});

//-------------------------------------

//ruta para obtener  un contenido por su id

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

//-------------------------------------

//ruta para filtrar un contenido por su titulo

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
      res.status(404).json({ error: "titulo no disponible" });
      //console.log(title);
    }
  } catch (error) {
    res.status(500).json({ error: "error en el servidor" });
  }
});

//--------------------------------------

//agregar un nuevo contenido

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

//-------------------------------------

//actualiza parcialmente un contenido

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

//eliminar un contenido

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

//-------------------------------------

//rutas inexistentes
app.use((req, res, next) => {
  res.status(404).send("no existe esa ruta");
});

app.listen(PORT, () => {
  console.log(`http://localhost:${PORT}`);
});
