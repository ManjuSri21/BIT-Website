#Start with a ready-made Nginx web server
FROM nginx:alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy your project files into nginx
COPY . /usr/share/nginx/html

# Expose nginx port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

# CMD - Start Nginx when container runs
# CMD - Used to run the main application

#RUN = Build the house
#CMD = Live in the house