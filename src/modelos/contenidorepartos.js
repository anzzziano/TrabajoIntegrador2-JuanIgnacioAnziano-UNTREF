const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const contenidorepartos = sequelize.define(
  "contenidorepartos",
  {
    idContenido: {
     type: DataTypes.INTEGER,
     allowNull : false,
     primaryKey : true,
    },
    idReparto: {
    type: DataTypes.INTEGER,
    allowNull : false,
    primaryKey : true,
    },
  },
  {
    tableName: "contenidorepartos",
    timestamps: false,
  }
);

module.exports = contenidorepartos;