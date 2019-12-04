docker build -t apprenticeship_web .
docker run -p 4000:4000 -v "$(pwd)"/_apprenticeship:/srv/_apprenticeship app_web
