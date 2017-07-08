# Reading Assignments Gem

This gem allows you to assign your readings to your mentees. As an Experience
Engineer at Launch, I'd find myself spending unnecessary energy assigning 
students to readings in the morning. Instead of having to choose people every
morning, I wanted a tool to automate the process and just make my morning a
_little_ bit easier.

## Installation
You can install the gem simply by executing the command:

```
$ gem install reading_assignments
```

In order to use the reading_assignments gem, you simply have to run the command:

```
$ reading_assignments
```

This gem has an executable script, so you can run it from anywhere. Upon running
this command, you'll be asked to setup your group and given three options on
how to randomize your selection: 

* Number: uses this number to seed the random generator
* String: converts the string to a number and uses that as the seed
* Random: no seed number, just uses the random generator

Following that you will be asked how many articles you need to assign and you
should be able to see your assignments!

Upon using the gem again, you'll have the option to keep your group as is, or
to create a new group to select from. This will be especially useful for EEs who
cover multiple mentor groups.

Enjoy and hopefully this will make your morning just a little bit easier!

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
