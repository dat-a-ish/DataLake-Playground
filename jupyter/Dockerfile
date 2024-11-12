FROM jupyter/scipy-notebook:notebook-6.4.11

USER root

# Install Java (e.g., OpenJDK 11)
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get install -y wget && \
    apt-get clean;

# Set JAVA_HOME environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-arm64
ENV PATH="${JAVA_HOME}/bin:${PATH}"

RUN pip install pyspark==3.5.1

# Set SPARK_HOME environment variable
# ENV SPARK_HOME=/opt/spark
# ENV PATH="${SPARK_HOME}/bin:${PATH}"

RUN mkdir -p /opt/spark/jars

# Download the required JARs (or you can download them manually)
RUN wget -P /opt/spark/jars https://repo1.maven.org/maven2/org/apache/iceberg/iceberg-spark-runtime-3.5_2.12/1.5.2/iceberg-spark-runtime-3.5_2.12-1.5.2.jar
RUN wget -P /opt/spark/jars https://repo1.maven.org/maven2/org/projectnessie/nessie-integrations/nessie-spark-extensions-3.5_2.12/0.99.0/nessie-spark-extensions-3.5_2.12-0.99.0.jar
RUN wget -P /opt/spark/jars https://repo1.maven.org/maven2/software/amazon/awssdk/bundle/2.20.131/bundle-2.20.131.jar
RUN wget -P /opt/spark/jars https://repo1.maven.org/maven2/software/amazon/awssdk/url-connection-client/2.20.131/url-connection-client-2.20.131.jar


# Set SPARK_HOME to the location of the PySpark installation
ENV SPARK_HOME=/opt/conda/lib/python3.10/site-packages/pyspark

# Ensure your JARs are included in the Spark classpath
ENV SPARK_CLASSPATH=/opt/spark/jars/*

# Add the Spark binaries to the PATH for easy access to commands like spark-submit
ENV PATH="${SPARK_HOME}/bin:${PATH}"

# Set PySpark Python version (if needed)
ENV PYSPARK_PYTHON=python3