const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const categorias = sequelize.define(
  "categorias",
  {
    idCategoria: {
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
    tableName: "categorias",
    timestamps: false,
  }
);

module.exports = categorias;