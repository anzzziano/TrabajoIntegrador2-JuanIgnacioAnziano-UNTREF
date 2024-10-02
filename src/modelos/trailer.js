const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const trailer = sequelize.define(
  "trailer",
  {
    idTrailer: {
     type: DataTypes.INTEGER,
     allowNull : false,
     primaryKey : true,
     autoIncrement : true,
    },
    url: {
    type: DataTypes.STRING,
    allowNull : true,  
    },
  },
  {
    tableName: "trailer",
    timestamps: false,
  }
);

module.exports = trailer;