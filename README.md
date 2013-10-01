Disposition
===========

Disposition is a set of functions handful when manipulating and setting the components of CGRect structures. 

It's current reach is short, but tested and expected to grow over time. 


Installation 
-----------

1. Copy the ```Source/CGRect+Disposition.h``` header file to your project. 
2. Show those CGRect structures who is the boss. 


Use
---

1. The following function headers self-explain the reach of the library. 
Note that the CGRect structure to modify should be passed by reference. 

```obj-c
void CGRectSetSize(CGRect *rect, CGSize size);
void CGRectSetWidth(CGRect *rect, CGFloat width);
void CGRectSetHeight(CGRect *rect, CGFloat height);

void CGRectSetOrigin(CGRect *rect, CGPoint originPoint);
void CGRectSetX(CGRect *rect, CGFloat x);
void CGRectSetY(CGRect *rect, CGFloat y);
```


Contribution
-------------

Contribution is always welcomed. Create a pull request or raise an issue if you develop a new feature or enhancement or want to start discussing a topic concerning the library. 


License
--------
Released under the MIT License. 
Refer to the LICENSE file for more. 


Author
-------

Hector Zarate ([@hecktorzr](http://twitter.com/hecktorzr))
