package com.mpojeda84.demos

import org.apache.log4j.LogManager
import org.apache.spark.sql.SparkSession

object Import {
  val logger = LogManager.getLogger(this.getClass.getName)
  logger.info("******** Process Initiated ********")

  def main(args: Array[String]): Unit = {

    val spark = SparkSession.builder().getOrCreate()

    val csvPath = args(0)
    val parquetPath = args(1)
    spark.sparkContext.setLogLevel("INFO")

    val sourceDF = spark.read.format("csv").option("header", "true").load(csvPath)
    sourceDF.coalesce(1).write.format("parquet").mode("overwrite").save(parquetPath)


  }
}
