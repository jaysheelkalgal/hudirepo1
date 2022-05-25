Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\ \/ _ \/ _ `/ __/  '_/
   /___/ .__/\_,_/_/ /_/\_\   version 2.4.8
      /_/
         
Using Scala version 2.12.10 (OpenJDK 64-Bit Server VM, Java 1.8.0_312)
Type in expressions to have them evaluated.
Type :help for more information.

scala>

import org.apache.spark.sql.SaveMode._
import org.apache.hudi.DataSourceWriteOptions._
import org.apache.hudi.DataSourceWriteOptions
import org.apache.hudi.DataSourceReadOptions._
import org.apache.hudi.DataSourceReadOptions
import org.apache.hudi.QuickstartUtils._
import org.apache.spark.sql.DataFrame

scala> val sc_sql=spark.sql("""CREATE  TABLE product_dtl(
     |    `_hoodie_commit_time` STRING
     |   ,`_hoodie_commit_seqno` STRING
     |   ,`_hoodie_record_key` STRING
     |   ,`_hoodie_partition_path` STRING
     |   ,`_hoodie_file_name` STRING
     |   ,`seller_id`    STRING 
     |   ,`product_id`   STRING 
     |   ,`producer_name`    STRING 
     |   ,`discount` STRING 
     |   ,`EFF_START_TS` STRING 
     |   ,`EFF_END_TS`   STRING
     |   ) PARTITIONED BY (ACTV_IND STRING)
     |    ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
     |    STORED AS INPUTFORMAT
     |    'com.uber.hoodie.hadoop.HoodieInputFormat'
     |    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
     |   LOCATION 'gs://target_bucket/hudi_scd2_poc';""")
