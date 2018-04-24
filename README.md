Base image  
See [jboss-as-docker](https://github.com/WellsG/jboss-as-docker)

Tree

````
├── Dockerfile
├── maitai-guvnor-web.war
├── maitai-process-designer-web.war
└── README.md
````

Build image  
````
 sudo docker build -t wguo/jboss-drools-guvnor:0.1 .
 sudo docker images
 sudo docker run -d -p 8081:8080 <imageID>
````

View the webconsole with username:password(admin:admin)    
````
http://localhost:8081/drools-guvnor/
````
