#bin!

##### Running instructions ######
##### Script will take no arguments ######

/Users/maikel/Downloads/spark-2.4.4-bin-hadoop2.7/bin/spark-submit --master local \
               --deploy-mode client \
               --driver-java-options "-Dlog4j.debug=true -Dlog4j.configuration=file:/Users/maikel/Downloads/spark-2.4.4-bin-hadoop2.7/conf/log4j.properties.template" \
               --conf spark.executor.extraJavaOptions=-Dlog4j.configuration=file:/Users/maikel/Downloads/spark-2.4.4-bin-hadoop2.7/conf/log4j.properties.template \
               --conf spark.driver.extraJavaOptions=-Dlog4j.configuration=file:/Users/maikel/Downloads/spark-2.4.4-bin-hadoop2.7/conf/log4j.properties.template \
               --class com.mpojeda84.demos.Import /Users/maikel/projects/demo-spark-csv-parquet/target/csv-to-parquet-1.0-SNAPSHOT.jar /Users/maikel/projects/demo-spark-csv-parquet/test.csv /Users/maikel/projects/demo-spark-csv-parquet/test