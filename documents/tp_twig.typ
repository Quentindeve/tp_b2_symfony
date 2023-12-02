#set document(title: "TP B2 - Contrôleurs et Twig", author: "DUTILLEUL Quentin")

#set page(paper: "a4")
#set text(size: 24pt, font: "Noto Serif", weight: "medium")

#set heading(numbering: "1.a >")

#show heading: it => [
  #set align(center)
  #set text(24pt, weight: "bold")
  #block(smallcaps(it.body))
]

#show raw: it => block(
  fill: rgb("#fafafa"),
  inset: 8pt,
  radius: 5pt,
  text(fill: rgb("#a2aabc"), it, weight: "bold", font: "Cascadia Code", size: 14pt),
)

#set align(center)
#set text()

= TP Symfony - Contrôleurs & Twig

#set text(size: 15pt)
#set align(left)

#pagebreak()

= Contexte
#linebreak()

On va réaliser un site où des posts peuvent être créés par tout le monde (y compris des personnes non-authentifiées), et où des personnes authentifiées peuvent commenter les posts.

#pagebreak()

= Mise en place
#linebreak()

On va commencer par mettre en place le projet

```sh
# Crée la base de données
symfony console doctrine:database:create

# Crée la migration
symfony console make:migration

# Envoie la migration sur le serveur
symfony console doctrine:migrations:migrate
```

#pagebreak()

= Création du formulaire de création d'User
#linebreak()

Parce que ce n'est pas le sujet ici, *l'Entity User est déjà créée*. Par contre le formulaire d'inscription et de connexion des User ne sont pas créés. Ca va être à vous de le faire, mais vous ne serez pas largués !

#linebreak()

- 1: Créer un formulaire permettant de s'inscrire en tant qu'utilisateur. On ne souhaite pas vérifier l'email entré, on souhaite que l'utilisateur soit automatiquement authentifié après la création de son compte et après l'enregistrement de son compte, il doit être redirigé vers la page nommée *app_index*. Voici une source pour aiguiller vos recherches:
  
  - #link("https://symfony.com/doc/4.1/doctrine/registration_form.html")[Symfony 4 Doc - Registration Form]

- 2: Avoir créé le formulaire c'est bien, mais y avoir accès c'est mieux ! Rajouter le lien vers le formulaire d'enregistrement dans le <a> correspondant dans l'index. _indices: regarder la route dans Controller/RegistrationController.php et le template utilisé dans IndexController.php_

#pagebreak()