podman run -it --rm --network host -v .:/opt/app --entrypoint sh zhoutijie/code:latest -c "cd /opt/app && sh"

podman run -it --rm --network host -v .:/opt/app --entrypoint sh node:22-alpine -c "cd /opt/app && npm install && sh"


podman run -it --rm --network host -v .:/opt/app -e ANTHROPIC_BASE_URL="https://api.com" -e ANTHROPIC_AUTH_TOKEN="sk-gRpmxt" --entrypoint sh zhoutijie/code:latest -c "cd /opt/app && zsh"


# linux
podman compose up -d && podman compose exec app zsh

podman compose down

# windows(powershell)
podman compose up -d; podman compose exec app zsh

podman compose down