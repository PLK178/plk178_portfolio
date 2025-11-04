<<<<<<< HEAD
docker run --rm -p 8080:80 my-portfolio:local
# Simple Portfolio + DevOps Learning Kit

This repository is a tiny hands-on lab to learn DevOps fundamentals while shipping a real artifact: a static portfolio site.

Goals
- Ship a small static site.
- Containerize it with Docker for consistent local/runtime behavior.
- Build a simple CI/CD pipeline that publishes the site to GitHub Pages.
- Teach core DevOps concepts with commands, explanations, and exercises you can complete.

Repository contents
- `index.html`, `styles.css`, `script.js` — the static site
- `Dockerfile` — builds an nginx-based image to serve the site locally
- `.github/workflows/ci-cd.yml` — GitHub Actions pipeline that publishes to GitHub Pages
- `.gitignore`, `LICENSE` — housekeeping

Quick-start (PowerShell)

1) Preview with Python's simple HTTP server (fast, no Docker required)

```powershell
cd "c:\Users\kumar\OneDrive\Desktop\devops\vscode"
python -m http.server 8000
# then open http://localhost:8000
```

2) Build and run with Docker (recommended if you have Docker installed)

```powershell
cd "c:\Users\kumar\OneDrive\Desktop\devops\vscode"
docker build -t my-portfolio:local .
docker run --rm -p 8080:80 my-portfolio:local
# open http://localhost:8080
```

If `docker run` exits or shows an error, try running it detached to read logs:

```powershell
docker run --name portfolio-test -d -p 8080:80 my-portfolio:local
docker logs portfolio-test --tail 200
docker rm -f portfolio-test
```

CI/CD (how this repo is wired)
- The workflow file `.github/workflows/ci-cd.yml` triggers on pushes to `main`.
- It checks out the repo and uses `peaceiris/actions-gh-pages` to publish the repository contents to the `gh-pages` branch.
- In GitHub, enable Pages (Settings → Pages) and set it to serve from the `gh-pages` branch.

Notes about the workflow
- `publish_dir: ./` publishes the repository root. For larger projects you'd typically build into a `dist/` folder and publish that instead.
- `GITHUB_TOKEN` (automatically provided to Actions) is used to push the `gh-pages` branch.

DevOps concepts — concise explainer

- Source Control (Git/GitHub)
	- Single source of truth. Use branches (feature/xyz) and pull requests to review changes before merging.
	- Commands you'll use frequently:

```powershell
# create a repo locally
git init
git add .
git commit -m "initial commit"
git branch -M main
git remote add origin https://github.com/<your-user>/<your-repo>.git
git push -u origin main
```

- CI (Continuous Integration)
	- Automates checks on every push/PR (tests, linters, builds). Gives quick feedback.

- CD (Continuous Deployment)
	- Automatically deliver build artifacts to an environment after CI succeeds. In this repo, GitHub Actions publishes to GitHub Pages.

- Containerization (Docker)
	- Encapsulate runtime and files so the app behaves the same across machines. Here we use nginx as the runtime.

- Infrastructure-as-Code (IaC)
	- Describe infra (DNS, cloud buckets, CDNs) in code (Terraform/CloudFormation) and store it in version control.

- Observability (monitoring/logs)
	- Collect logs/metrics and set alerts. For static sites, simple uptime monitoring is a good first step.

Troubleshooting tips (common issues)
- Docker: container exits immediately
	- Check `docker images` to ensure the image exists.
	- Run the container detached and inspect logs (`docker logs <name>`).
	- Ensure Docker Desktop/daemon is running (on Windows check the Docker Desktop tray icon).

- GitHub Actions failures
	- Open the Actions tab in the repo, pick the failed run, and read logs step-by-step.
	- Add `run: echo "debug info"` steps or increase verbosity in build tools to surface errors.

Learning exercises (practical labs)

1) Push & run
	- Push this project to a new GitHub repo.
	- Verify GitHub Actions runs on push.
	- Enable Pages and confirm your site is live.

2) Linting step
	- Add an HTML linter (htmlhint) to the workflow. Fail the job on lint errors.
	- Add the linter configuration and intentionally introduce a style error to see the job fail.

3) Staging & preview environments
	- Add a `develop` branch and modify the workflow to deploy `develop` to a preview environment (or use a separate `gh-pages` folder like `preview/`).

4) Replace Pages with cloud hosting
	- Deploy to AWS S3 + CloudFront or Netlify. Add Terraform to define the S3 bucket and CloudFront distribution.

5) Observability
	- Add a simple uptime check (UptimeRobot or GitHub Actions scheduled workflow that curls your page and notifies on failure).

6) Extend the pipeline
	- Add tests (unit tests for JS if you add functionality), produce a build artifact, and version releases using tags.

Where to go from here
- Tell me which specific lab you want next and I will implement it step-by-step:
	- Push & deploy to GitHub with the exact PowerShell commands and Pages setup
	- Add linting to CI (I can add the YAML/commands + config files)
	- Add a staging preview for PRs
	- Add Terraform + deploy to S3/CloudFront

Appendix — small reference: Git & Docker commands

```powershell
# Git
git status
git add .
git commit -m "message"
git push

# Docker
docker build -t my-portfolio:local .
docker run --rm -p 8080:80 my-portfolio:local
docker ps -a
docker logs <container>
```

---
If you want, I'll now (choose one):
- A) Walk you through creating a GitHub repo and pushing this code (I'll provide exact PowerShell commands)
- B) Add linting (htmlhint) to the GitHub Actions workflow and commit the changes
- C) Add a staging/preview deploy for PRs
- D) Create a step-by-step lab in a new `LABS.md` with answers and expected outputs

Tell me which you prefer and I will continue.
=======
this is my portfolio i have recreate in fsd lab test
>>>>>>> 980c8e4547534827c3751c20d113f7163cd2ce9b
