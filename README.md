# pillarbook
A Seaside application to write and publish reference books in Pillar markup

Metacello new baseline: #PillarBook; repository: 'github://mikefilonov/pillarbook'; load.

## Installation

```smalltalk
Gofer it
    smalltalkhubUser: 'mikefilonov' project: 'PillarBook';
    configuration;
    loadDevelopment.
```

Or donwload the newest image from INRIA CI: https://ci.inria.fr/pharo-contribution/job/PillarBook/

## Configuration

```smalltalk
ZnZincServerAdaptor startOn: 8080.
PBEditorApplication registerAt: 'editor'.
PBEditorApplication title: 'My Book Name'.
PBArticle exportDirectory: '/home/user/book/dir' asFileReference.
PBArticle root importChildren.
```

Open at http://localhost:8080/editor

## Exported files and figures

Files are exported into image directory under PillarBook/ fodler. If you want to use figures put them into PillarBook/figures and link them with +file:///figures/some.png+


## PillarProperties
You can add additional properties to a Pillar document to manage behaviour of the site:
- "default" (true|false) - to set the article as a default
- "reference" (string) - sets URL path segment of this article
- "header" (string) - adds this article to page header with label in value
- "title" (string) - force a title to the article

Example:

```
{
"reference": "home",
"default": true, 
"header": "Documentation"
}
!My default article
```



You can also use first-line achnor to define "reference" if properties block is not set in the document.

Example

```
@myname

!Article accessible by /article/myname

```

