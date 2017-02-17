#deploy jar

create_jar_dir:
  file.directory:
    - user: root
    - name: /usr/java_app
    - group: root
    - 755

deploy-jar:
  file.managed:
    - name: /usr/java_app/name.jar
    - source: salt://steam/steam/target/steamboat-0.0.1-SNAPSHOT.jar 

#run_jar:
#  cmd.run:
#    - name: "java -jar /usr/java_app/name.jar"
