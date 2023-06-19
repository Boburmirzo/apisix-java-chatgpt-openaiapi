# Managing AI-powered Java App with API Management

This repo demonstrates how to use OpenAI ChatGPT APIs in Spring Boot, secure and manage the traffic
with Apache APISIX.

### Prerequisites

Before we start, make sure you have the following:

- Create an [OpenAI API Key](https://platform.openai.com/docs/api-reference/authentication): To access the OpenAI API, you will need to create an API Key. You can do this by logging into the OpenAI website and navigating to the API Key management page.
- [Docker](https://www.docker.com/products/docker-desktop/) is installed on your machine to run APISIX and Spring Boot.

### How to set up the project

To set up the project, we can simply run `docker compose up` command. Because we have already defined all necessary services in [docker-compose.yml](https://github.com/Boburmirzo/apisix-java-chatgpt-openaiapi/blob/main/docker-compose.yml). This file defines only 2 containers one for APISIX, and another for the Spring boot application. In this sample project, we run APISIX in [standalone mode](https://apisix.apache.org/docs/apisix/2.15/stand-alone/). There are other APISIX [installation options](https://apisix.apache.org/docs/apisix/installation-guide/) and [deployment modes](https://apisix.apache.org/docs/apisix/deployment-modes/) as well. Now APISIX as a separate service is running on `localhost:9080` and Spring Boot app on `localhost:8080`.

### Community

🙋 [Join the Apache APISIX Community](https://apisix.apache.org/docs/general/join/)
🐦 [Follow us on Twitter](https://twitter.com/ApacheAPISIX)
📝 [Find us on Slack](https://join.slack.com/t/the-asf/shared_invite/zt-vlfbf7ch-HkbNHiU_uDlcH_RvaHv9gQ)
💁 [How to contribute page](https://apisix.apache.org/docs/general/how-to-contribute/)

### About the author

Visit my blog: [www.iambobur.com](https://www.iambobur.com/)
Ask questions: [on Slack](https://join.slack.com/t/the-asf/shared_invite/zt-vlfbf7ch-HkbNHiU_uDlcH_RvaHv9gQ)

