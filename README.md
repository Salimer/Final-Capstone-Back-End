# Final group capstone - Book an Appointment

<a name="readme-top"></a>

<div align="center">
<h2>ER Diagrma</h2>
<img width="741" alt="Screenshot 2023-09-25 at 12 07 22" src="https://github.com/Salimer/Final-Capstone-Back-End/assets/52242629/596245e7-bca4-4450-af17-43997ac4b1df">

</div>

# 📗 Table of Contents 

- [Final group capstone - Book an Appointment](#final-group-capstone---book-an-appointment)
- [📗 Table of Contents](#-table-of-contents)
- [📖 Final group capstone - Book an Appointment ](#-final-group-capstone---book-an-appointment-)
  - [🚀 Frontend App ](#-frontend-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo ](#-live-demo-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [Run rails](#run-rails)
  - [👥 Authors ](#-authors-)
  - [📆 Kanban Board](#kanban-board)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
      - [Development Team](#development-team)
      - [Institution](#institution)
      - [Reference Design](#reference-design)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Final group capstone - Book an Appointment <a name="about-project"></a>

**[Description]**

The project we built for the Final Project is based on an app to book an appointment to test ride a Harley-Davidson motorcycle. 

## 🚀 Frontend App <a name="frontend"></a>
- [Click here to navigate to the Frontend ](https://github.com/Salimer/Final-Capstone-Front-End)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- Ruby on Rails >=7
- React
- Postgres

### Key Features <a name="key-features"></a>

- Connection between Ruby on Rails and React in different apps
- Book an appointment to try a motorcycle
- Motorcycles that you selected as a theme
- Reserve form

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link](https://harley-davidson-73po.onrender.com/) 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

- [Ruby on Rails >=7](https://rubyonrails.org/)
- [React](https://reactjs.org/)
- [Postgres](https://www.postgresql.org/)
- [Git](https://git-scm.com/downloads)

### Install

```
git clone https://github.com/Salimer/Final-Capstone-Back-End.git
cd Final-Capstone-Back-End
bundle install
```
```
git clone https://github.com/Salimer/Final-Capstone-Front-End.git
cd Final-Capstone-Front-End
npm install
```

### Usage

In the project directory, run the first time:

  ```
  bundle exec rake assets:precompile
  ```

then, you can use:

  ```
  ./bin/dev
  ```

or:

  ```
  rails s
  ```

Check on db/seed.rb for pre-loaded users, groups and, spendings, and likes for development

### Run tests
In the project directory, run the first time:

  ```
  bundle exec rake assets:precompile
  ```
then, you can:

  ```
  rspec .
  ```
however, if you haven't run
```
./bin/dev
```

### Run rails

To configure the database connection in Rails, you need to update the database.yml file located in the config folder. Follow these steps: Locate the database.yml file in the config folder of your Rails application.

1. Open the database.yml file using a text editor.

2. Find the default: &default section in the file.

3. Add the following lines under the default: &default section:
```
  host: localhost
  username: your_username
  password: your_password
  port: 5432
```
 

4. Replace your_username with your actual database username and your_password with your actual database password.
5. Save the changes to the database.yml file.
6. Run
```
rails db:create
```

```
rails db:migrate
```

```
rails db:seed
```

```
rails s
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Marco Díaz**

- GitHub: [@MarcoDiaz](https://github.com/MarcoDiaz2000)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/marco-diaz-0876a7268/)


👤 **Salim Bamahfoodh**

- GitHub: [@salimer](https://github.com/salimer)
- LinkedIn: [LinkedIn](https://linkedin.com/in/sbamahfoodh)


👤 **Sumeya Ibrahim**

- GitHub: [@isume295](https://github.com/isume295)


👤 **Tamoor Saeed**

- GitHub: [@githubhandle](https://github.com/tamoorsaeed22)
- Twitter: [@twitterhandle](https://www.linkedin.com/in/tamoor-saeed-58912a233/)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/tamoorsaeed/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Kanban Board -->

## 📆 Kanban Board <a name="kanban-board"></a>

- [Our kanban board](https://github.com/Salimer/Final-Capstone-Back-End/projects/1)
- [Kanban board initial state](https://user-images.githubusercontent.com/125866339/269276243-8a11c76f-a047-43ac-a45a-6bcf02e168be.jpg)
- We are a team of 4 members as stated in the authors section

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- Add different categories of motorcycles
- Add online shopping
- Add extra styling

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you found this project helpful, consider giving a ⭐️!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

We would like to express our deepest gratitude to all the people and institutions that have contributed to make this project possible.

#### Development Team
- **Sumeya Ibrahim**: Thank you for your constant support and your incredible problem-solving skills. Your knowledge and experience have been invaluable.
- **Salim Bamahfoodh**: I appreciate your commitment and dedication. Your perspective has always been essential for the project's development.
- **Tamoor Saeed**: Thank you for your collaboration and meaningful contributions, which have helped shape and direct the project.
- **Marco Díaz**: Your technical skill and creative input have been pivotal in achieving our goals. Thank you for always being available.

#### Institution
- **Microverse**: My sincerest thanks for creating this bootcamp. The program's structure and the quality of education provided have been crucial for my growth as a developer.

#### Reference Design
- I would also like to thank [<a href="https://www.behance.net/muratk">Murat Korkmaz</a>] for the original design on Behance that served as inspiration for this project.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
