module.exports = function (poppins) {
  poppins.config = {
    // Github repo to watch
    // https://github.com/myname/myrepo
    target: {
      user: process.env.TARGET_USER,
      repo: process.env.TARGET_REPO
    },

    // Credentials for user who leaves comments, etc.
    // You may want to load these from a seperate file like `config-credentials.js`, and
    // add this file to your `.gitignore` list
    login: {
      username: process.env.LOGIN_USERNAME,
      password: process.env.LOGIN_PASSWORD
    },

    // port for poppins to listen on and URL for Github to ping
    hook: {
      url: process.env.HOOK_URL,
      port: parseInt(process.env.HOOK_PORT)
    }
  };

  poppins.couldYouPlease('poppins-pr-checklist');
  poppins.couldYouPlease('poppins-check-commit');
  poppins.couldYouPlease('poppins-label');
  poppins.couldYouPlease('poppins-configure-label');
};
