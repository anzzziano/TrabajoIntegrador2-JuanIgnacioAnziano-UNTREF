const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const repartos = sequelize.define(
  "repartos",
  {
    idReparto: {
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
    tableName: "repartos",
    timestamps: false,
  }
);

module.exports = repartos;