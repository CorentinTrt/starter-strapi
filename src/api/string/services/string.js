'use strict';

/**
 * string service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::string.string');
