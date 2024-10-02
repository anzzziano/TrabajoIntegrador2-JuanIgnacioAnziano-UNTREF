const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const contenido = sequelize.define(
  "contenido",
  {
    idContenido: {
     type: DataTypes.INTEGER,
     allowNull : false,
     primaryKey : true,
     autoIncrement : true,
    },
    poster: {
    type: DataTypes.STRING,
    allowNull : false,  
    },
    titulo: {
    type : DataTypes.STRING,
    allowNull : false,
    },
    idCategoria: {
    type : DataTypes.INTEGER,//foreign key
    allowNull : false,

    },
    resumen: {
   type : DataTypes.TEXT,
   allowNull : false,
    },
    temporadas: {
    type : DataTypes.INTEGER,
    allowNull : true,
    },
    idTrailer: {
    type : DataTypes.INTEGER, //foreign key
    allowNull : true,

    },
  },
  {
    tableName: "contenido",
    timestamps: false,
  }
);

module.exports = contenido;