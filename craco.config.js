const path = require('path');

module.exports = {
  // Existing configuration...
  resolve: {
    alias: {
      // Point to the React version used in your app
      react: path.resolve('./node_modules/react'),
      'react-dom': path.resolve('./node_modules/react-dom'),
    },
  },
};
