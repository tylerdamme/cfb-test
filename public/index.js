var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      conferences: [],
      teams: []
    };
  },
  created: function() {
    axios.get("api/v1/conferences").then(
      function(response) {
        console.log(response.data);
        this.conferences = response.data;
        this.conferences.map(conference => {
          this.teams = conference.teams;
          console.log(this.teams);
        });
      }.bind(this)
    );
  },
  methods: {},
  computed: {}
};

var router = new VueRouter({
  routes: [{ path: "/", component: HomePage }],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});
