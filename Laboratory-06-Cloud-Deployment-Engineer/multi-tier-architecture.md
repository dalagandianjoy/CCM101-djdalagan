# Multi-Tier Architecture

## What is a Two-Tier Architecture?

Based on what I learned, a Two-Tier Architecture separates an application into two main parts. One part handles the application that the user interacts with, while the other part handles the data needed by the application. In this activity, Nextcloud will be the web/application tier and MariaDB will be the database tier.

## Web/Application Tier

The Web/Application Tier is responsible for the part of the system that users interact with. It handles requests from users and displays the web application. For this activity, Nextcloud will serve as the Web/Application Tier.

## Database Tier

The Database Tier is responsible for storing and managing the data needed by the application. In this activity, MariaDB will store information such as user accounts and file metadata used by Nextcloud.

## Why Separate Them?

It is better to place the web application and database in separate containers because each one has a different role. Separating them also makes the system easier to manage because one service can be maintained or changed without putting everything inside a single container.
