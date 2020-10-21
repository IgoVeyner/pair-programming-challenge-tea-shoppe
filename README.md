# Pair Programming Challenge - Tea Shoppe

You've been assigned to fix up an old website called the Tea Shoppe. The website is meant as a database where users register their tea blends but it's currently missing the most important part: the teas!

## Getting Started

**Fork and clone** the repository and `cd` into it. Run `bundle install`. There is no seed data since you'll be creating it through the create action.

There is already a home page with a route for that page. Additionally there's a navbar. Once your routes are set up, feel free to change the anchor tags to `link_to` helpers.

## Models

There's only one model to worry about, the Tea model, which should have these attributes:

```
name => string, names should be unique, required
category => string (examples: oolong, herbal, green), required
description => string
```

Tea names need to be unique, additionally a tea shouldn't be created without a name or category.

## Controller

You'll need to build out a teas controller with these actions: index, show, new, create. The index and show should be business as usual and show teas. If you choose to build routes using resources, make sure you don't include extraneous routes.

If the tea is created without a name, category, or a non-unique name then it needs to re-render the form to create a tea.

## BONUS

Build an additional route that only shows teas of a specific category. For instance, the `/teas/oolong` should show every tea that has the "oolong" category.

HINT: There's a way you can build out these routes without building additional views. Is there a way to recycle the index page?
