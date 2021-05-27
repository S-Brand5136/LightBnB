const properties = require('./json/properties.json');
const users = require('./json/users.json');
const { Pool } = require('pg');

// Connect database

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'lightbnb'
});

pool.connect(() => {
  console.log('Connected to database');
})


/// Users

/**
 * Get a single user from the database given their email.
 * @param {String} email The email of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithEmail = function(email) {
  return pool
    .query(
      `SELECT * FROM users WHERE email = $1;`,
    [`${email}`])
    .then((result) => {
      const user = result.rows[0]
      if(user) {
        return user
      }
      return null
    })
    .catch((err) => {
      return err
    });
}
exports.getUserWithEmail = getUserWithEmail;

/**
 * Get a single user from the database given their id.
 * @param {string} id The id of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithId = function(id) {
  return pool
    .query(
      `SELECT * FROM users WHERE id = $1;`,
    [`${id}`])
    .then((result) => {
      const user = result.rows[0]
      if(user) {
        return user
      }
      return null
    })
    .catch((err) => {
      return err
    });}
exports.getUserWithId = getUserWithId;


/**
 * Add a new user to the database.
 * @param {{name: string, password: string, email: string}} user
 * @return {Promise<{}>} A promise to the user.
 */
const addUser =  function({name, email, password}) {
  return pool
  .query(
    `INSERT INTO users (name, email, password)
    VALUES ($1, $2, $3) RETURNING *;`,
  [`${name}`, `${email}`, `${password}`])
  .then((result) => {
    const user = result.rows[0]
    if(user) {
      return user
    }
    return null
  })
  .catch((err) => {
    return err
  })
}
exports.addUser = addUser;

/// Reservations

/**
 * Get all reservations for a single user.
 * @param {string} guest_id The id of the user.
 * @return {Promise<[{}]>} A promise to the reservations.
 */
const getAllReservations = function(guest_id, limit = 10) {
  return getAllProperties(null, 2);
}
exports.getAllReservations = getAllReservations;

/// Properties

/**
 * Get all properties.
 * @param {{}} options An object containing query options.
 * @param {*} limit The number of results to return.
 * @return {Promise<[{}]>}  A promise to the properties.
 */
const getAllProperties = function(options, limit = 10) {

  return pool  
    .query(
      `SELECT * FROM properties LIMIT $1;`, 
      [limit])
    .then((result) => {
      return result.rows
    })
    .catch(err => {
      return err.message;
    });
}
exports.getAllProperties = getAllProperties;


/**
 * Add a property to the database
 * @param {{}} property An object containing all of the property details.
 * @return {Promise<{}>} A promise to the property.
 */
const addProperty = function(property) {
  const propertyId = Object.keys(properties).length + 1;
  property.id = propertyId;
  properties[propertyId] = property;
  return Promise.resolve(property);
}
exports.addProperty = addProperty;
