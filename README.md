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
