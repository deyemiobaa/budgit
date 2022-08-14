# Budgit - A finance tracker app

A web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

![image](https://user-images.githubusercontent.com/55185309/184540699-4353c054-c3e5-49e9-9b55-ece9ea3f6721.png)



### Live demo: [Budgit](https://my-budgit-app.herokuapp.com/)

## Built With

- Ruby
- Ruby on Rails
- Devise
- PostgreSQL

## Getting Started

To get a local copy up and running follow these simple example steps.


## Pre-requisites
Make sure you have Ruby and Rails installed on your computer. If not, you can follow this [tutorial](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project) to install them.

If you don't have PostgreSQL installed, you can follow this [tutorial](https://www.postgresql.org/download/) to install it.

If you don't have yarn installed, you can follow this [tutorial](https://classic.yarnpkg.com/en/docs/install/#debian-stable) to install it.
  
## Usage
In your terminal, navigate to your current directory and run this code

`git clone https://github.com/deyemiobaa/budgit.git`

Then run

`cd budgit`

Open the project in your favorite code editor. `code .` for VS Code.

  - Use the command `bundle install` to install all project dependencies.
  - Run `yarn install` to install all the JavaScript dependencies.
  - Run `yarn build:css` to build the CSS files.
  - Run `rails db:create db:migrate` to create the database and run migrations.
  - You might need to supply a username and password for your PostgreSQL database if you run into an error with the previous step.
  - Simply navigate to `config/database.yml` and add your username and password to the `username` and `password` fields.
  - Type in the terminal `rails s` to start the server then click on `http://127.0.0.1:3000`
  - Start tracking your budget!
  

## Testing

Within the projects working directory run test using the following command:
 `rspec` in the terminal


## Author

👤 **Sodiq**

- GitHub: [@deyemiobaa](https://github.com/deyemiobaa)
- Twitter: [@deyemiobaa](https://twitter.com/deyemiobaa)
- LinkedIn: [Sodiq Aderibigbe](https://linkedin.com/in/sodiqa)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/deyemiobaa/budgit/issues).


## Show your support

Give a ⭐️ if you like this project!


## Acknowledgments

- Design idea by [Gregoire Vella](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding) on Behance


## 📝 License

This project is [MIT](LICENSE) licensed.
