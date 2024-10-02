const { Sequelize } = require("sequelize");
const dotenv = require("dotenv");

dotenv.config();

const sequelize = new Sequelize(
  process.env.DATABASE,
  process.env.DBUSER, //conexion a mysql con sequalize
  process.env.PASSWORD,
  {
    host: process.env.HOST,
    dialect: "mysql",
    pool: {
      max: 5,//max de conecciones del grupo
      min: 0,// min de conexiones
      acquire: 30000,//tiempo max para liberar las conexiones inactivas
      idle: 10000,//tiempo max para cerrar las conexiones inactivas
    },
  }
);

module.exports = sequelize;