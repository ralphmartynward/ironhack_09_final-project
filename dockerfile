# Dockerfile
FROM python:3.8-slim-buster

# ADD . /

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy your service account key into the Docker image
COPY purrposterous-88022749ebcc.json .

# Set environment variables
ENV REDDIT_CLIENT_ID=HB8Q6dZD6ZUkRwUdkg5T0g
ENV REDDIT_SECRET=yqrfKvlmPpd7XbyocYuvedibdgqPcA
ENV OPENAI_API_KEY=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
ENV DISCORD_TOKEN=MTEwODY5MjE1MTYzMTYyNjI0MQ.GJXTy7.CebTnGEUTOKaXk4X_ZxlTv9mHbLVeW91eiy1zI
ENV GOOGLE_APPLICATION_CREDENTIALS=purrposterous-88022749ebcc.json

# Make port 80 available to the world outside this container
EXPOSE 80

# Run discord_bot.py when the container launches
CMD ["python", "app.py"]
