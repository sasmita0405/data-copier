FROM python


#installed os Modules
RUN apt update -y && \
    apt install telnet -y && \
    rm -rf /var/lib/apt/lists/*

# Copy source code
RUN mkdir -p /data-copier
copy app /data-copier/app
copy requirements.txt / data-copier

# Install application dependancies
RUN pip install -r /data-copier/requirements.txt