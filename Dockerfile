# Use the official Tomcat 9 image from Docker Hub
FROM tomcat:9.0

# Set environment variables for Tomcat
ENV CATALINA_HOME /usr/local/tomcat

# Create a directory for your template
RUN mkdir -p $CATALINA_HOME/webapps/ROOT

# Copy your template files into the ROOT directory (for default web application)
COPY ./resume.html /usr/local/tomcat/webapps/ROOT/

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
