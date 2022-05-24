spark-shell \
--packages org.apache.hudi:hudi-spark-bundle_2.12:0.9.0,org.apache.spark:spark-avro_2.12:2.4.7,org.apache.avro:avro:1.8.2 \
--conf "spark.serializer=org.apache.spark.serializer.KryoSerializer" \
--conf 'spark.sql.extensions=org.apache.spark.sql.hudi.HoodieSparkSessionExtension' \
--conf "spark.sql.hive.convertMetastoreParquet=false"
 
import org.apache.spark.sql.SaveMode._
import org.apache.hudi.DataSourceWriteOptions._
import org.apache.hudi.DataSourceWriteOptions
import org.apache.hudi.DataSourceReadOptions._
import org.apache.hudi.DataSourceReadOptions
import org.apache.hudi.QuickstartUtils._
import org.apache.spark.sql.DataFrame
