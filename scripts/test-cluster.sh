#bin!

##### Running instructions ######
##### Script will take no arguments ######

/opt/mapr/spark/spark-2.4.4/bin/spark-submit --master yarn \
               --deploy-mode client \
               --class com.mpojeda84.demos.Import csv-to-parquet-1.0-SNAPSHOT.jar hdfs:///user/mapr/demo/test.csv hdfs:///user/mapr/demo/test


#/opt/mapr/spark/spark-2.4.4/bin/spark-submit --master yarn \
#               --deploy-mode client \
#               --driver-java-options "-Dlog4j.debug=true -Dlog4j.configuration=file:/opt/mapr/spark/spark-2.4.4/conf/log4j.properties.template" \
#               --conf spark.executor.extraJavaOptions=-Dlog4j.configuration=file:/opt/mapr/spark/spark-2.4.4/conf/log4j.properties.template \
#               --conf spark.driver.extraJavaOptions=-Dlog4j.configuration=file:/opt/mapr/spark/spark-2.4.4/conf/log4j.properties.template \
#               --class com.mpojeda84.demos.Import csv-to-parquet-1.0-SNAPSHOT.jar hdfs:///user/mapr/demo/test.csv hdfs:///user/mapr/demo/test2