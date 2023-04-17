<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Run](#run)
  - [Usage](#usage)
  - [Test](#tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Recipe-app] <a name="about-project"></a>

The **Budget app** keeps track of your transcations It allows the user to:

- register and log in, so that the data is private to them.
- introduce new transactions associated with a category.
- see the money spent on each category.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://www.ruby-lang.org/en/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Authentication**
- **Authorization**
- **Keep track of each transactions**
- **Add new transactions**
- **User friendly interface**
- **Interactive Navbar**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Live demo <a name="live-demo"></a>

Click this [live demo](https://budget-app-bbuu.onrender.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

- Ruby (ruby --version)
- SQLite3 (sqlite3 --version)
- Node.js (node --version)
- Yarn (yarn --version)

### Install

Since Rails started out as a project full of packages and libraries, and has since become the full-stack framework it is, it can be easy to forget that it is also just a package itself.
If these are all good, you can check:

- Rails (rails --version)

If you get a good version, you're ready to go! (Almost).
If you didn't, you may still need to install the Rails gem.

`gem install rails`

It can be good to keep in mind which version you're using as each of these will update on their own schedule and sometimes the code changes just enough to give us bugs. This will be true for all the packages, gems, APIs, or any other dependencies you may bring into your projects as a developer.


### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone git@github.com:shella12/budget-app.git
```

### Run

To run this app on your local environment install the gems by running the command `bundle install`.
To create a database run: 

```rb

rails db:create
rails db:migrate

```

To insert some data into your database you can run the seed

```rb

rails db:seed

```

### Usage

You need to get your Rails application server running,in order to see your app in the browser. This is like live preview in the browser for rails applications. Run :


```sh
 $ bin/rails server

```

OR

```sh
$ rails s

```

visit [localhost](http://localhost:3000/) in your browser!

To exit server enter “Control (^ )+ C”

### Tests

To create tests, RSpec testing framework is used. In order to run tests use following command:


```sh
 $ rspec spec

```
_Note: You can also run the test by using just `rspec` but it runs all tests folders and files with name like `****_spec`_

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Ayesha Arshad**

- GitHub: [@shella12](https://github.com/shella12)
- Twitter: [@Ayesha Arshad](https://twitter.com/AyeshaA03712974)
- LinkedIn: [Ayesha Arshad](https://www.linkedin.com/in/ayesha-arshad-a690a015a/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Improving UI**
- [ ] **Make an API of this app**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project please give this repo a star ⭐️

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

 Design credit to [Gregoire Vella](https://www.behance.net/gregoirevella) on Behance the author of the original design

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
