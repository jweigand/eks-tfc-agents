FROM hashicorp/tfc-agent:latest
RUN mkdir -p /home/tfc-agent/.tfc-agent
ADD --chown=tfc-agent:tfc-agent hooks /home/tfc-agent/.tfc-agent/hooks
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip && ./aws/install