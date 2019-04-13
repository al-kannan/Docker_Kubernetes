# use the existing docker image as the base
FROM alpine

# now run you r commands 
RUN echo "echo This is to test the run command" >  n.sh
RUN chmod 777  n.sh

# execute command 
CMD ["sh", "n.sh"]
