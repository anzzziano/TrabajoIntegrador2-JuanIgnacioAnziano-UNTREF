const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const contenidogeneros = sequelize.define(
  "contenidogeneros",
  {
    idContenido: {
     type: DataTypes.INTEGER,
     allowNull : false,
     primaryKey : true,
    },
    idGenero: {
    type: DataTypes.INTEGER,
    allowNull : false,

    },
  },
  {
    tableName: "contenidogeneros",
    timestamps: false,
  }
);

module.exports = contenidogeneros;