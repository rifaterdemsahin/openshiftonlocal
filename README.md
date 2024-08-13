# OpenShift Sandbox Setup Guide

This guide will walk you through the steps to create a sandbox environment in OpenShift. By following this guide, you will be able to set up an OpenShift cluster on your local machine and start experimenting with OpenShift's features.

## Prerequisites

Before you begin, make sure you have the following installed on your machine:

- Docker (for running the OpenShift cluster)
- Git (for cloning repositories)
- An OpenShift CLI (`oc`) tool
- A GitHub account (for cloning and pushing repositories)

## Step 1: Clone the Repository

First, clone your GitHub repository where you want to set up the OpenShift sandbox.

```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

## Step 2: Download and Set Up the OpenShift Cluster

To create an OpenShift sandbox, you need to download and set up the OpenShift cluster. Use the following command to do this:

```bash
oc cluster up
```

This command will download and set up the OpenShift cluster, which may take some time depending on your internet connection and system performance.

## Step 3: Logging into OpenShift

Once the cluster is up, you can log into it using the OpenShift CLI:

```bash
oc login -u system:admin
```

This will log you in as the admin user, allowing you to manage the entire OpenShift cluster.

## Step 4: Deploying an Application

You can deploy an application in your new OpenShift sandbox by following these steps:

1. Create a new project:
   
   ```bash
   oc new-project my-sandbox
   ```

2. Deploy an application (e.g., Node.js) from a GitHub repository:

   ```bash
   oc new-app https://github.com/sclorg/nodejs-ex.git
   ```

3. Expose the service to create a route:

   ```bash
   oc expose svc/nodejs-ex
   ```

4. Get the route to access your application:

   ```bash
   oc get routes
   ```

## Step 5: Accessing the OpenShift Web Console

You can access the OpenShift Web Console by navigating to the URL provided by the `oc cluster up` command in your web browser. Use the same credentials (`system:admin`) to log in.

## Step 6: Cleaning Up

Once you're done experimenting, you can stop the OpenShift cluster with the following command:

```bash
oc cluster down
```

This will shut down the OpenShift cluster on your local machine.

## Connect with Me

If you found this guide helpful or have any questions, feel free to connect with me:

- **LinkedIn**: [Rifat Erdem Sahin](https://www.linkedin.com/in/rifaterdemsahin/)
- **Twitter**: [@rifaterdemsahin](https://x.com/rifaterdemsahin)
- **YouTube**: [Rifat Erdem Sahin](https://www.youtube.com/@RifatErdemSahin)

Thank you for following along with this guide!
