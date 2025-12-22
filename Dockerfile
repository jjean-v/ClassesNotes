FROM docker.io/antora/antora:latest

WORKDIR /antora/ClassesNotes

# Add a run Section if we want to add dependency

CMD ["antora", "antora-playbook.yml", "--stacktrace"]