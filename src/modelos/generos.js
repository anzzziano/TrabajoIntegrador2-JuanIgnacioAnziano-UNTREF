const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const generos = sequelize.define(
  "generos",
  {
    idGenero: {
     type: DataTypes.INTEGER,
     allowNull : false,
     primaryKey : true,
     autoIncrement : true,
    },
    nombre: {
    type: DataTypes.STRING,
    allowNull : false,  
    },
  },
  {
    tableName: "generos",
    timestamps: false,
  }
);

module.exports = generos;