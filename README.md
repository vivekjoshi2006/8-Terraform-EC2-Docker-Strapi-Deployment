# 🚀 Strapi Deployment on AWS using Terraform & Docker

## Project Overview
This project automates the deployment of a **Strapi CMS** application to an **AWS EC2** instance. It uses **Docker** for containerization and **Terraform** for Infrastructure as Code (IaC).

## 🛠 Tech Stack
- **Framework:** Strapi (Node.js based CMS)
- **Containerization:** Docker & Docker Hub
- **Infrastructure:** Terraform
- **Cloud Provider:** AWS (EC2, Security Groups)
- **Environment:** GitHub Codespaces

## 📂 Project Structure
- `/terraform`: Contains `main.tf`, `provider.tf`, and `outputs.tf` for AWS setup.
- `/src`, `/config`, `/public`: Strapi application source code and configurations.
- `Dockerfile`: Multi-stage build for optimizing the Strapi production image.

## 🚀 How to Run Locally

1. **Clone the repository:**
   ```bash
   git clone <your-repo-link>
   cd 8-Terraform-EC2-Docker-Strapi-Deployment

```

2. **Build Docker Image:**
```bash
docker build -t vivekjoshi20/strapi-aws:latest .

```



## ☁️ Deployment Steps

1. **Initialize Terraform:**
```bash
cd terraform
terraform init

```


2. **Deploy to AWS:**
```bash
terraform apply -auto-approve

```


*The `user_data` script in Terraform will automatically install Docker and pull the image from Docker Hub.*



3. **Access the App:**
```bash
Once the deployment is complete, the terminal will output the `public_ip`. Access it at:
`http://<public_ip>:1337/admin`

```
=======
# 🚀 Getting started with Strapi

Strapi comes with a full featured [Command Line Interface](https://docs.strapi.io/dev-docs/cli) (CLI) which lets you scaffold and manage your project in seconds.

### `develop`

Start your Strapi application with autoReload enabled. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-develop)

```
npm run develop
# or
yarn develop
```

### `start`

Start your Strapi application with autoReload disabled. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-start)

```
npm run start
# or
yarn start
```

### `build`

Build your admin panel. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-build)

```
npm run build
# or
yarn build
```

## ⚙️ Deployment

Strapi gives you many possible deployment options for your project including [Strapi Cloud](https://cloud.strapi.io). Browse the [deployment section of the documentation](https://docs.strapi.io/dev-docs/deployment) to find the best solution for your use case.

```
yarn strapi deploy
```

## 📚 Learn more

- [Resource center](https://strapi.io/resource-center) - Strapi resource center.
- [Strapi documentation](https://docs.strapi.io) - Official Strapi documentation.
- [Strapi tutorials](https://strapi.io/tutorials) - List of tutorials made by the core team and the community.
- [Strapi blog](https://strapi.io/blog) - Official Strapi blog containing articles made by the Strapi team and the community.
- [Changelog](https://strapi.io/changelog) - Find out about the Strapi product updates, new features and general improvements.

Feel free to check out the [Strapi GitHub repository](https://github.com/strapi/strapi). Your feedback and contributions are welcome!

## ✨ Community

- [Discord](https://discord.strapi.io) - Come chat with the Strapi community including the core team.
- [Forum](https://forum.strapi.io/) - Place to discuss, ask questions and find answers, show your Strapi project and get feedback or just talk with other Community members.
- [Awesome Strapi](https://github.com/strapi/awesome-strapi) - A curated list of awesome things related to Strapi.

---

<sub>🤫 Psst! [Strapi is hiring](https://strapi.io/careers).</sub>
>>>>>>> 22bc54ff (feat: setup terraform and dockerized strapi for aws deployment)


---
**Task 5 Completed by Vivek Joshi**
