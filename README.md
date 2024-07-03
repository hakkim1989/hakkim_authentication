1.Install laravel (here i using version 8.83.27) and create the project name and also install composer.
2.Ensure the database name in .env(app/.env) file.
3.create table name `users` using migration file (php artisan:migrate) which i added column name user_id.
4.Create the register and login form using html,css,bootstrap.
5.Validate the form using jquery in front end and back end using laravel.
6.Now create route(web.php) and user_controller(php artisan:make controller user_controller -r)which function name is mention.
7.In controller save the data from form request,before ensure app/model,facades what i need and generate alphanumeric id using `use Illuminate\Support\Str` and static boot method to create user defined function 'generateUniqueUserCode` in model it generate the unique id for each user.
8.After insert the data then authenticate using auth login method and redirect the dashbord page.Now registration is done.
9.Next,login submission same what i do in register process but additionally we auth attempt to check valid user or not,
10.Finally,using middleware('auth') to restrict directly access the dashboard page without authentication and  middleware('guest') using redirect if authentication.
 
  
