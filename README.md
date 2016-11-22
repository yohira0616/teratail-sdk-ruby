# teratail-sdk-ruby

sdk which call apis of Programming Q&A Site [Teratail](https://teratail.com/)

You Can Develop an awesome web service which uses teratail's api more rapidly.

## notice
This is unofficial sdk.

## install

Write your Gemfile

```
gem 'teratail-sdk-ruby'
```

## usage

```Ruby
client = Teratail.new(access_token) #input your access token

# get questions
client.question.find_all

# with paging and array limit option
client.question.find_all(2,30) #you can get 2 page and 30 question array element

# get tags
client.tag.find_all
# get users
client.user.find_all

```


# rule
This library's license is MIT.You can alter or reproduct this.
Please follow [teratail service api term](https://teratail.com/legal) when you use.

# official document
[Teratail API Document](http://docs.teratailv1.apiary.io/#introduction)
