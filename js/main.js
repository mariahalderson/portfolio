const vm = new Vue({
    el: "#app",
    

    data: {
        logo: "",
        message: "test",
        mytitles: [
          {title: "front-end developer"},
          {title: "UX designer"},
          {title: "a third thing"}
        ],
        projects: [
          {projectid: "1", projectpath: "images/#", projecttitle: "project1", projecttype: "development",},
          {projectid: "2", projectpath: "images/#", projecttitle: "project2", projecttype: "design",},
          {projectid: "3", projectpath: "images/#", projecttitle: "project3", projecttype: "design",},
          {projectid: "4", projectpath: "images/#", projecttitle: "project4", projecttype: "development",}
        ]
    },

    // created(){
    //   this.getData();
    // },

    methods: {

        getData(e) {
            //debugger;
            //let targetURL = `./includes/connect.php?imagename=${e.currentTarget.id}`;
            let targetURL = "./includes/connect.php?imagename=logo";
            fetch(targetURL) // go get the data and bring it back
              .then(res => res.json()) // turn the result into a plain JS object
              .then(data => {
                console.log(data);
      
                this.showData(data[0]); // run a function to put the data on the page
              }) // let's see what we got
              .catch(function(error) {
                console.log(error); // if anything broke, log it to the console
              });
            //run a function to parse our data
          },
      
          showData(data) {
            //console.log(data);
            this.logo = "images/" + data.images_path;
            //document.querySelector("img").src = "images/" + this.logo;
          }

    }

});