# Two sided Marketplace - ToolYard



## <u>Table of content</u>

1. Introduction and important links 
2. Problem identification
   1. What is the problem?  
   2. why we need to solve it? 
   3. How to solve it?
   4. Current solutions
3. Market research
   1. Market size and information
   2. Target users 
   3. user stories 
   4. Current offerings
4. UX/UI design
   1. Mood board
   2. Colour theme
   3. Wire frames 
5. Database design
   1. ERD from wireframe  
   2. Database relation  
   3. Schema design  
   4. MVC structure - *their relationship to each other* 
   5. Third party services and APIs 
6. Rails website
   1. Purpose
   2. Functions/Features
   3. Site map
   4. tech stack
   5. Gems
7. Project management
   1. Trello 
   2. Issue log
   3. Coding standards



## 1. Introduction

This is my first website with full CRUD resource and MVC structure written from scratch. The core components of the website consist of the following

1. The website will be using the framework **Ruby on Rails**.
2. The website will be using **Postgresql** database in development and production. 
3. User authentication system using **Devise**.
4. Users will be restricted to what they can see based on their account type and authorisation.
5. The website will have image uploading capability using **Amazon Web Services** S3.
6. Deployment will be using **Heroku**.

Other elements of the website will be identified in the following sections of this document. 

**link to website:** https://tool-yard-marketplace.herokuapp.com/

**link to GitHup repo:** https://github.com/waynezdev/tool_yard 



## 2. Problem identification

### What is Problem

The Initial research was done around a few areas of interest. 

- used power tools

- power tools

- groceries

- construction materials

- Used tools


![keyword search volume](C:\projects\Two_sided_marketplace\keyword_research01.PNG)



Initial research shows that people are searching for the keyword "power tools" and "groceries" at similar volume. Since I'm more familiar with power tools I decided to tackle this problem.

One of the biggest problems of the construction industry is to get quality tools for the job. It is important that workers have the right tools. If tools are not working or they don't have the right accessories it can slow down or even stop the project. With construction companies so busy on the job they need to quickly compare find the right tools and at the best price. 

### Why we need to solve it?

This problem needs to be better addressed so companies in industries can get the right tools quicker and cheaper. This will create better efficiency and provide more economical outcome for their clients. In turn this will drive the Australian construction industry. If the cost of construction can come down, it can potentially make housing more affordable. It might also help home buyers get their dream home sooner.

### How to solve it?

Creating a marketplace for hardware stores or tool shops to sell their products. This will allow customers to see products across multiple stores and even stores from interstates.

By allowing customers search and find power tools in an online marketplace, they are able to benefit from the efficiency of finding suitable products faster. Those benefits can include:

- compare prices from different stores in one place

- find the closest store to pick up the product

- find the store that has the product

- delivery to work site

- one check out page for multiple store purchases



## 3. Market research

### Market size and information

The size of the power tool market is about $1.5 billion in Australia. 

One of the biggest tool retailer is SydneyTools and their sales accounts for 14% of the total market. Even though there is a down turn in the construction and mining industry there is still room for growth. There are enough room for more players in the market. 

### Target users

Target users(buyer) will be Professional tradesman/construction company/construction workers because they have the most needs for using professional trade standard tools. Their work demands high quality, high precision and long lasting. 

Target user(seller) are independent hardware stores, independent speciliased tool store.  These stores has the tools that buyers want but they might not have the capability to reach more buyers outside of their physical area. A marketplace will allow them to be exposed to more customers and compete with other stores . 

### User stories

1.  As a builder, I want find buy power tools at the best price  so that I can provide the best price to my customers. 

2. As a carpenter, I want to get my tools delivered to me, so that I don't have to waste time travelling to different stores.
3. As a handyman, I want to search different type of tools from multiple stores but having one transaction to pay all the different stores.
4. As an independent trade tool store, I want to reach more customers online, so that I can grow my business.

5. As an independent hardware store, I want my customers to buy from us even when our physical store is closed, so that I can better service them.
6. As an independent hardware store, I want to upload products easily and attach a photo of the product, so that customers can see all the products I have available.
7. As an independent hardware store, I want to be able to modify or delete products online so that my customers can see the most updated inventory I have

### Current solutions

Doing deeper search into where to buy power tools online I found many websites which sell power tools. Some online stores for selling power tools includes

- gettoolsdirect.com.au
- sydneytools.com.au
- totaltools.com.au
- toolmart.com.au

These online stores are individual companies reselling products from major brands. While they offer a way to get these products. The customer might not be getting the best prices without spending time comparing prices from different online stores. 

Another major offering is from Bunnings. They are more focused on the DIY renovation market. Professional tradies need more specialised tools and service.  This is where professional trade quality tool stores can offer and having them all in one marketplace this can also better service the target user. 

The gap is a marketplace for buying professional standard power tools. My website will be servicing this gap in the current market.



## 4. UX/UI design

### Mood board

I generated a mood board to set the overall direction of how the website will look and feel.

**Pintrest** was used and key words such as **"tools", "power tools", "tool sets"** etc were used to generate the following board

![](C:\projects\Two_sided_marketplace\pintrest_board.PNG)

![pintrest_board02](C:\projects\Two_sided_marketplace\pintrest_board02.PNG)

![pintrest_board03](C:\projects\Two_sided_marketplace\pintrest_board03.PNG)



Other app **UI examples** were also used to inspire my design. The UI I like mostly are ones which are clean and simple so the UX can be intuitive and quick because target users need results fast due to their high pressure working environment.



![](C:\projects\Two_sided_marketplace\mobile_UXUI_example.PNG)

![taxi_app_example](C:\projects\Two_sided_marketplace\taxi_app_example.jpg)

### Colour theme

From the mood board and researching similar websites there seems to be a consistent color them of yellow, orange and red. These colors are widely used in construction for safety reasons and to be more visible. This color scheme will be familiar to target users of trade professionals and consumers as well. 

### Wire frames

![](C:\projects\Two_sided_marketplace\wireframes\New Mockup 1.png)

![New Mockup 2](C:\projects\Two_sided_marketplace\wireframes\New Mockup 2.png)

![New Mockup 3](C:\projects\Two_sided_marketplace\wireframes\New Mockup 3.png)

![New Mockup 4](C:\projects\Two_sided_marketplace\wireframes\New Mockup 4.png)



## 5. Database design

### ERD from wireframe

![](C:\projects\Two_sided_marketplace\ToolYard ER Diagram.png)

### Database relation

For the website to meet its goal of helping user find and buy the right product. There needs to be ways of managing **users**, **products** and **payments**. To manage them I will generate models to store the relevant information based on my wireframe design

For **users** I have decided to have buyers and sellers with the sellers having the same basic information as the buyers but adding company name and ABN to their model. This way only sellers are able to upload and sell products. To allow users have product deliver to them there needs to be a model to keep track of their address. An address model is also generated.

For **products** to be found by users it needs to have fields which can identified each unique product. The brand of a product is one of the field which can help identify the product. To manage the data better I have decided to have a separate table for the brands. In the future if the same product is made by different brands it can be easily managed by only have a reference to multiple brand ids in one column in the product table.

Products will also need to have images associated with them simply because it will let users see the actual product. Sellers will be uploading images during the process of creating a product. This is managed by active records. The images are going to be stored in the cloud using Amazon Web Services(AWS). When a product is created, images will be uploaded to AWS S3. It is an object storage service that is flexible enough so that as user increase and images increase the storage capacity in the cloud can be increase. This system is better suited for a marketplace as oppose to having my own server and storing everything in my server. 

For payments this is a very important part of the marketplace. Making sure the payments are safe and secure for the users and making sure payments for the right product is made. Every payment the system will need to know which product the user is paying for and who exactly is the user. The payment table will need to reference a unique product id and a unique user id to make sure every transaction can be tracked and reconciled. 

### Schema design

**User**

There are two types of users - buyers and sellers. Every user is a buyer but to be a seller you need to register your company name and ABN in order to gain access to functions such as create, update and delete products. Seller have a separate model to user.

```
create_table "sellers", force: :cascade do |t|
    t.string "company_name"
    t.string "ABN"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sellers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "account_type"
    t.string "mobile"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
```

Every user will have an address, that's another separate model. That is to allow for future expansion of users having multiple addresses for delivery.

Also, address table is separated from the User table so in the future if I want to add more advance delivery services I don't have to increase the size of the User table. It will be a small table to look up data making the application a bit faster.

```
 create_table "addresses", force: :cascade do |t|

  t.string "street"

  t.string "suburb"

  t.string "state"

  t.integer "postcode"

  t.bigint "user_id"

  t.datetime "created_at", null: false

  t.datetime "updated_at", null: false

  t.index ["user_id"], name: "index_addresses_on_user_id"

 end
```

**Product**

When a seller creates a product they will need to specify:

1. brand
2. product title
3. description
4. price
5. condition

```
create_table "products", force: :cascade do |t|
    t.string "title"
    t.bigint "brand_id"
    t.text "description"
    t.integer "price"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "condition"
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end
```

Brand is a in a table on it is own. Currently each product has only one brand and one brand can have multiple products. In the future it might be possible that the same product will be made by different brands so it could be a many to many relationship between products and brands. Having separate tables will help me manage. 

```
create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
```

Products will reference the user table using user id to manage the ownership of the product. This will allow the seller know which address to make the delivery by referencing the address table.

Currently, one image is associated with the product by referencing the product id. Images are created using active storage. There are two tables in active storage - "active storage attachment" and "active storage blob"

```
create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end
```

The attachment table is a join table which connects to the blob table. Blob  table stores the image metadata , and  their identifier key in the storage service.



Finally, **payments** table will reference user id and product id to confirm which product was bought and who bought it.

```
create_table "payments", force: :cascade do |t|

  t.bigint "user_id"

  t.bigint "product_id"

  t.string "stripe_transaction_id"

  t.datetime "created_at", null: false

  t.datetime "updated_at", null: false

  t.index ["product_id"], name: "index_payments_on_product_id"

  t.index ["user_id"], name: "index_payments_on_user_id"

 end


```



**Seed file**

To populate the database with some initial data for testing, some fake data will need to be generated in the seed.rb file. 

The purpose of generating data is to see a sample of tools in the views

The type of data need to be generated:

- Brands
- Products
- Sellers

**Brands**

In Australia the overall consensus that the following brands are among your top picks for power tools: 

1. Hilti
2. Makita
3. Bosch
4. Dewalt
5. AEG
6. Milwaukee
7. Panasonic

**Most popular power tool names**

1. Miter Saw and/or Table Saw
2. Cordless Drill/Driver
3. Reciprocating Saw (aka Sawzall)
4. Circular Saw
5. Jigsaw
6. Random Orbital Sander
7. Paint Sprayer
8. Air Compressor
9. Hammer Drill
10. Wood Router



### MVC structure - *their relationship to each other*

My website follows the MVC(Model, View, Controller) structure and Rails conventions. 

The general flow of the MVC components:

1. Firstly a request made at the browser 
2. Request received at router of the Rails application
3. Request routed to an appropriate controller 
4. Controller either renders a view template or communicates with the model
5. Model communicates with database, it acts like a translator between the database and the controller
6. Model sends back information to controller
7. Controller renders a view, giving a response to the request



In my Rails application I generated 6 **models**:

1. address
2. brand
3. payment
4. product
5. seller
6. user

The models contain tables which data can be stored and deleted, some of the data will be rendered on to a page depending on the request.



I created 4 **controllers**:

1. pages controller
2. products controller
3. sellers controller
4. payments controller

The **pages controller** contains only one view, the home page view

The **product controller** contains the methods for managing the power tools in the database.

The views for the products are:

1. index view - showing all the products in the database
2. show view - showing a specific product
3. new view - renders the form for creating a new product in the database
4. edit view - renders the form containing information of a particular product and allowing the user to change these information
5. form view - the actual form with the data fields which the user can input information. This form can be rendered in the new view and edit view

The **seller controller** contains the methods for managing the register sellers .  

The view managed by this controller is the form for registering to become a seller.

The views for normal users(buyers) are managed by the Devise gem which created controllers and views for creating, updating and deleting user accounts.

The **payment controller** contains the methods for managing the payment process with Stripe and making sure transaction details are captured after users bought a product 



### Third party services and APIs

**Heroku** - for deployment

Heroku is a container-based cloud Platform as a Service (PaaS). It is used  to deploy, manage, and scale modern this marketplace.  It supports development in Ruby on Rails, Java, Node.js, Python, Scala and Clojure. Currently my Heroku server is connected to my GitHub repo so any files pushed to GitHub will be automatically deployed on Heroku.  To deploy the website and running all the migration files will need to be run on Heroku.  Any master keys and secret keys for the Rails app will need to be stored in Config variables on Heroku. Any webhook endpoint will need to be pointing to Heroku as well.

**AWS** - for image upload

Amazon Simple Storage Service (Amazon S3) is an object storage service. It is currently used for storing product images. It can be scaled up to suit the increase demand for more cloud storage. 

For a product to have an image, the seller must upload a picture of the product. I have create a S3 bucket in the Asia Pacific(sydney) region ( ap-southeast-2 ). The end point is  **apigateway.ap-southeast-2.amazonaws.com** 



**Future integrations**

To meet the deliver needs of this marketplace I planned to use Zoom2u as the deliver service for sellers who do not have the capability to deliver.

 Zoom2u is a courier marketplace software that serves as a platform to  link businesses and eCommerce stores  with a network  of couriers across Australia.

Their API is designed to allow developers to get quotes and place bookings quickly and with flexibility, and fetch booking information or cancel erroneous bookings.



##### Delivery methods

1. Pick up from store
2. Delivery (by store)
3. Delivery (by Zoom2u)



## 6. Rails website

### Functions and features

The overall vision of the website is to be have all the functions and features listed below but due to the time constraints of this project and my current technical ability some of them might need to be implemented at a later time.

Features of this website:

1. **Checks valid ABN as users register a seller account**
2. **Top searched terms listed showing in the home page**
3. **Normal users(buyers) and Sellers authorization/restrictions**
4. **image upload capability for Sellers**



##### Valid ABN                         

The Australian Business Number (ABN) is a unique 11 digit identifier  issued to all entities registered in the Australian Business Register  (ABR). 

​    The 11 digit ABN is structured as a 9 digit identifier with two leading check digits. The leading check digits are derived using a modulus 89 (remainder after dividing by 89) calculation. 

To verify an ABN:

1. Subtract 1 from the first (left-most) digit of the ABN to give a new 11 digit number
2. Multiply each of the digits in this new number by a "weighting factor" based on its position as shown in the table below
3. Sum the resulting 11 products
4. Divide the sum total by 89, noting the remainder
5. If the remainder is zero the number is a valid ABN

For example, to check if **51 824 753 556** is a valid ABN:

1. Subtract 1 from the first (left-most) digit (5) to give **41 824 753 556**
2. Multiply each of the digits in **41 824 753 556** by the "weighting factor"  based on its position as shown in the table below
3. Sum (Digit * weight) to give a total of 534
4. Divide 534 by 89 giving 6 with zero remainder.
5. As the remainder is zero, **51 824 753 556** is a valid ABN.

| Digit | Position | Weighting  | Digit * weight |
| ----- | -------- | ---------- | -------------- |
| 4     | 1        | 10         | 40             |
| 1     | 2        | 1          | 1              |
| 8     | 3        | 3          | 24             |
| 2     | 4        | 5          | 10             |
| 4     | 5        | 7          | 28             |
| 7     | 6        | 9          | 63             |
| 5     | 7        | 11         | 55             |
| 3     | 8        | 13         | 39             |
| 5     | 9        | 15         | 75             |
| 5     | 10       | 17         | 85             |
| 6     | 11       | 19         | 114            |
|       |          | **Total:** | **534**        |

This logic will be written in the code to check valid ABN so at the time of the registration the website can inform the user if the ABN is not valid and they can corrected.

**Top searches**

This feature will display the most searched tool on the marketplace. When a tool is searched by most users it will be displayed in this section on the home page. 

![](C:\projects\Two_sided_marketplace\topsearch.PNG)

This feature will make it more efficient for most users because they would be looking for the same top searches as other users. It will make the UX even faster.



**Buyer and Seller authorisation**

When a seller created a product, in the product show page it will have the "edit" and "delete" link. When other buyers or sellers see the same page it will only show the buy button. 

![](C:\projects\Two_sided_marketplace\loggedin.PNG)





![](C:\projects\Two_sided_marketplace\loggedin_normal_user.PNG)

When a user is not signed in they will be not allowed to see any products and will be redirected to see the log in page or they need to sign up.

**Image upload capability**

![](C:\projects\Two_sided_marketplace\create_product.PNG)



Each product needs to have an image but if the seller does not have an image yet, the marketplace will give a default image. The right image can be updated later in edit mode.

```
<% if @product.picture.attached? %>

  

  <%= image_tag @product.picture %> <%# add styling to limit image size later%>

  

<%else %> 

  <%= image_tag "drill.jpg", alt:"power drill"%> 

  

<%end %>
```





### Site map

### ![](C:\projects\Two_sided_marketplace\Toolyard Site Map.png)

### Tech stack

**Programming languages**

Ruby

HTML 5

CSS 3

**Framework**

Ruby on Rails

Bootstrap

**Hosting**

Heroku

**Database storage**

Postgresql

AWS S3



### Gems

Gems other than the ones which comes with Rails:

Devise - user authentication

Bootstrap - styling

Jquery-rails - styling

Stripe - payment

Faker - seeding database with fake data



## 7. Project management

### Trello

Based on the goal of this project I have list out all the foreseeable task to be done and assign different stages for the tasks. 

Trello was used to manage the stages of the tasks. It is easy to add new task to the Trello board but it would be better to view the time a task should take and the priority of each task. It will help decide which task to allocate resources and time.

I also started using a issue log to record the issues encountered during the development process and record the solutions used. This will also help future projects development but due to lack of time and lack of streamline process, the issue log was not well used and not all issues got recorded.

![trello01](C:\projects\Two_sided_marketplace\trello_screenshots\trello01.PNG)

![trello02](C:\projects\Two_sided_marketplace\trello_screenshots\trello02.PNG)

![trello03](C:\projects\Two_sided_marketplace\trello_screenshots\trello03.PNG)

![trello04](C:\projects\Two_sided_marketplace\trello_screenshots\trello04.PNG)

![trello05](C:\projects\Two_sided_marketplace\trello_screenshots\trello05.PNG)



### Issue log

in seeds.rb

```

for i in 1..10

  user = User.create(

		account_type: 1,
		name: Faker::Name.name,
		email: Faker::Internet.email,
		mobile: "#{040} #{rand(100..999)} #{rand(100..999)}",  
		password: "123123"


  )

end
```



the #{040} gave an output of 32 in the database

solution

```
for i in 1..10
    user = User.create(
        account_type: 1,
        name: Faker::Name.name,
        email: Faker::Internet.email,
        mobile: "04#{rand(0..9)}#{rand(0..9)} #{rand(100..999)} #{rand(100..999)}",
        password: "123123"

    )
end
```



![](C:\projects\Two_sided_marketplace\issues_log01.PNG)

### Coding standards

1.  Controllers always provide correct information from the models to the application views,  does so elegantly.
2.  Perform correct database queries. 
3.  Code comments demonstrate how the queries implemented and all comments are clearly written for future reference. 
4.  Identifies and uses appropriate model methods for querying on self and its relationships, extends models scope where appropriate 
5.  Minimise all database calls and implement eager loading where appropriate 
6.  Validates and sanitises all input 





**End of document**

------

