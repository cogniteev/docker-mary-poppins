module.exports = function (poppins) {
  poppins.config = {
    // Github repo to watch
    // https://github.com/myname/myrepo
    target: {
      user: '{{ repository_owner }}',
      repo: '{{ repository_name }}'
    },

    // Credentials for user who leaves comments, etc.
    // You may want to load these from a seperate file like `config-credentials.js`, and
    // add this file to your `.gitignore` list
    login: {
      username: '{{ bot_name }}',
      password: '{{ bot_password }}'
    },

    // port for poppins to listen on and URL for Github to ping
    hook: {
      url: '{{ server_url }}',
      port: {{ server_port }}
    }
  };

  // load plugins from the cwd
  poppins.theUsualPlease();
};
