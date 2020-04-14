# Quelques exercices de chauffe en Ruby


Projet : Petits programmes de mise en chauffe
1. Introduction

Dans cette magnifique journée, tu vas réaliser plein de programmes qui vont te faire te creuser les méninges. L'objectif de ces programmes est de t'apprendre à décomposer un algorithme, et de prendre le temps de bien y réfléchir.

Voici un petit teasing des exercices :

    Tu vas travailler sur des théories mathématiques qui feront pâlir de jalousie ton prof de troisième ;
    Tu vas apprendre à chiffrer des données ;
    Tu vas faire un algorithme de trading ;
    Tu vas compter le nombre de gros mots dans l’œuvre de Shakespeare.

Bref, un programme vraiment passionnant en perspective. Évidemment, comme tu es rigoureux, tu vas écrire tout seul, comme un grand, des tests pour checker automatiquement tous ces programmes.
⚠️ DISCLAIMER

Le projet d'aujourd'hui est volontairement très long : les grands débutants en développement informatique parmi vous n'arriverez pas à finir les 4. Et c'est normal ! THP est un bootcamp et l'objectif d'un bootcamp, c'est (notamment) de donner des objectifs très ambitieux pour ne pas frustrer les bons et tirer tout le monde vers le haut.

Notre consigne : va aussi loin que possible et passe outre ta frustration de ne pas tout finir. Ne te compare pas forcément aux autres et demande-leur plutôt de t'aider si tu vois qu'ils avancent plus vite.

Notre conseil : pour bien réussir chaque exercice, pense à bien réfléchir en amont à ce que tu veux faire (relis et applique le cours sur l'approche analytique), avant de te jeter en mode tête brûlée sur le code.

Notre expérience : ceux qui carburent au début de THP ne sont pas forcément les mêmes en fin de formation. Donc si tu galères : ne lâche rien. Si tu défonces tout : ne te relâche pas.
2. Le projet

Ce projet sera dans un dossier qui contient tout : les tests, les programmes. Pour cette journée, nous avanceront en mode Test Driven Development (TDD). Tu verras ainsi les avantages de cette technique.
Commençons par initialiser un repo

Créé un nouveau repository dans lequel tu vas mettre un Gemfile qui contiendra les gems du jour :

source "https://rubygems.org"
ruby '2.5.1'
gem 'rubocop', '~> 0.57.2'
gem 'rspec'

Lance un $ bundle install pour installer les gems dans le repo, puis initialise Rspec avec $ rspec --init. Il ne te reste plus qu'à créer le dossier lib et ton repo sera fin prêt ! 👌
2.1. Multiples de 3 et 5

Dans ce premier exercice, on va te guider pas à pas afin que tu vois comment un développeur réfléchi face à un problème. Pour les autres exercices, tu seras livré à toi-même : charge à toi de faire la même approche !
2.1.1. L'énoncé

Cédric Villani a besoin d'aide pour enfin décrocher le prix Nobel de Mathématiques. Il a besoin de résoudre le problème suivant :

    Si on liste tous les entiers naturels strictement inférieurs à 11 et qui sont multiples de 3 ou 5, on obtient 3, 5, 6, 9 et 10. La somme de ces nombres est égale à 33.
    => Trouve la somme des entiers naturels strictement inférieurs à 1000 et qui sont multiples de 3 ou 5.

Pour t'aider sur ce premier exercice, on va décomposer des étapes qui vont nous permettre de le résoudre : découper le problème en petits problèmes (en méthodes), écrire les tests en premier (pour faire du Test Driven Development) puis finalement coder le programme.
2.1.2. Mise en oeuvre de l'approche analytique

Comme on l'a appris, pour résoudre ce problème compliqué, on va le découper en plein de petits problèmes simples, chacun résolus par une méthode. Ici, on doit écrire un programme qui prend un nombre, et qui ressort la somme des multiples de 3 ou 5 inférieurs à ce nombre.

Moi, quand je lis ça, je me dis "ok, mon programme va aller de zéro jusqu'à 1000 (par exemple) et à chaque chiffre va tester s'il est multiple de 3 ou 5. Si c'est le cas, il met le chiffre de côté, dans une boite, pour faire une somme à la fin. Si le chiffre n'est pas multiple, on l'oublie et on passe au suivant".

Hum, en écrivant ça sur papier, j'ai identifié 2 choses qui vont composer mon programme final :

    "mon programme va aller de zéro jusqu'à 1000 (par exemple)" => Il va y avoir une boucle !
    "à chaque chiffre [mon programme] va tester s'il est multiple de 3 ou 5" => voilà un problème simple et bien défini : être capable d'identifier si un nombre est multiple de 3 ou 5 !

La boucle, je la mettrais dans ma méthode principale sum_of_3_or_5_multiples(final_number). Par contre, identifier un multiple de 3 ou 5, je peux l'isoler dans une méthode que j'appelerais : is_multiple_of_3_or_5?(n).

En faisant notre approche analytique, on a défini qu'il y avait deux méthodes à écrire et on sait ce qu'elles doivent faire chacunes :
a) la méthode is_multiple_of_3_or_5?(current_number)

Elle vérifie si le chiffre en entrée (current_number) est multiple ou non de 3 ou 5. Elle retourne un booléen (true ou false) en fonction.

Des exemples de sorties attendues de cette méthode selon ce qu'on lui donne en entrée seraient :

    3 ou 5 devraient renvoyer true
    51 ou 45 devraient renvoyer true
    2, 7 ou 64 devraient renvoyer false

b) la méthode sum_of_3_or_5_multiples(final_number)

Elle boucle sur les nombres de 0 à "final_number" : chaque nombre est testé par is_multiple_of_3_or_5?(current_number) pour savoir (à chaque tour de boucle), s'il faut mettre le nombre en question dans la somme finale ou passer au suivant.

Des exemples de sorties attendues de cette méthode selon ce qu'on lui donne en entrée seraient :

    10 devrait renvoyer 23,
    11 devrait renvoyer 33,
    0 ou 3 devraient renvoyer 0,
    -1, 1.23 ou "chiffre" devrait nous donner un truc du genre Yo ! Je ne prends que les entiers naturels. TG.

Grâce à ceci, nous avons l'ossature globale et le contenu de notre programme.

Tu as bien compris le cheminement que j'ai suivi ? Si ce n'est pas le cas, relis la partie 2.1.2. en entier. Calmement.
2.1.3. Écriture des tests

Créé donc un programme de test intitulé multiples_spec.rb, qui ira tester les deux méthodes is_multiple_of_3_or_5?(n) et sum_of_3_and_5_multiples(n) située dans un fichier intitulé multiples.rb. Rien de bien sorcier, cela reprend ce que tu as fait hier. Il faudra y inclure les différents cas entrée-sorties que je t'ai donnés ci-dessus.

Ton programme de test Rspec aura 2 describe différents : un par méthode testée. Et ensuite, sous chacun d'eux, tu auras plusieurs it "***" do pour classer les types de tests qu’on fera. Pour t'aider, je te donne le début de ton code de test :

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    # je te laisse écrire ces tests-là
  end
end

Fait le même travail avec le describe de sum_of_3_or_5_multiples en le découpant en deux it : le premier quand la méthode doit retourner un résultat (même zéro), le second quand elle refuse l'entrée de l'utilisateur (ça n’est pas un entier naturel).

Comme tu peux le voir, écrire les tests AVANT permet de bien cerner ce que va faire ton programme et de penser aux éventualités auxquelles tu vas être confronté. Écrire ce "cahier des charges" en avance est toute la philosophie du TDD ! Une fois qu'il est rédigé, il ne reste plus qu'à coder les méthodes pour que les tests soient validés.
2.1.3. Coder tes méthodes

Si tu fais tourner les tests juste après les avoir écrits, ton programme en Rspec devrait t'envoyer une sale erreur, car tu n'as pas défini de méthode du tout dans ton fichier multiples.rb. Donc définie ces deux méthodes (vides pour le moment), et fais tourner les tests. Il te dit en théorie que rien ne passe (c'est tout rouge quoi). Reste alors à coder le contenu des méthodes et tout faire passer au vert.

Bon, comment faire le programme ? Commence par écrire la sous-méthode la plus simple : is_multiple_of_3_or_5?(current_number) et débugge-la jusqu'à ce que les tests, que tu as écrit pour elle, fonctionnent tous.

Ensuite il va falloir s'attaquer à la méthode principale sum_of_3_or_5_multiples(final_number). Notre réflexion nous a permis de définir que :

    Elle prend en entrée un Integer et fournie en sortie un autre Integer (tu as écrit les tests en ce sens)
    Elle contient une boucle qui va scanner chaque entier entre zéro et final_number.

Si tu es assez à l'aise en code, lance-toi dès à présent.
Si tu veux encore un peu d'aide, voici un "squelette" de la méthode. Inspire t'en pour la coder.

def sum_of_3_or_5_multiples(final_number)

  final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro

#
   Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
   cette boucle indente à chaque tour une variable (par exemple "current_number") qui vaudra 0 puis 1 puis 2 ... etc.
#

    if is_multiple_of_3_or_5?(current_number)
      # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
    else
      # si la réponse est "false"…ben y a pas de else : ce "current_number" n'est pas multiple,
      # donc on passe au suivant en oubliant celui-là. On repart dans la boucle.
    end

  #Ici, positionne la fin de la boucle

  return final_sum #on retourne la variable qui contient la somme du tout
end

sum_of_3_or_5_multiples(11) #=> 33
sum_of_3_or_5_multiples(10) #=> 23

Bon courage !
2.2. Cryptofolies

Après ce petit tour de chauffe, voici un autre exercice sous forme d'initiation à la cybersécurité, avec un algorithme de chiffrement hyper secure (lol) : le chiffrement par décalage. En effet, la NSA a besoin de chiffrer ses e-mails et veut faire appel à toi pour implémenter cette méthode indéchiffrable par un enfant de 5 ans.

    En cryptographie, le chiffrement par décalage, aussi connu comme le chiffre de César ou le code de César, est une méthode de chiffrement très simple utilisée par Jules César dans ses correspondances secrètes.
    Le texte chiffré s'obtient en remplaçant chaque lettre du texte clair original par une lettre à distance fixe, toujours du même côté, dans l'ordre de l'alphabet. Si jamais on dépasse la dernière lettre de l'alphabet, on continue à compter depuis le début. Par exemple avec un décalage de 3 vers la droite, A est remplacé par D, B devient E, W devient Z, X devient A, Y devient B, etc.
    Il s'agit d'une permutation circulaire de l'alphabet. La longueur du décalage, 3 dans l'exemple évoqué, constitue la clé du chiffrement qu'il suffit de transmettre au destinataire — s'il sait déjà qu'il s'agit d'un chiffrement de César — pour que celui-ci puisse déchiffrer le message. Dans le cas de l'alphabet latin, le chiffre de César n'a que 26 clés possibles (plus la clé nulle, qui ne modifie pas le texte).

Ta mission : créer une méthode caesar_cipher, dans un programme caesar_cipher.rb qui prend en paramètres un string et une clé de chiffrement (nombre de lettres à décaler) pour en sortir le string modifié.

> caesar_cipher("What a string!", 5)
=> "Bmfy f xywnsl!"

Évidemment, ce programme (à faire pâlir les hackeurs russes) devra être réalisé en TDD. Grâce à cette organisation, tu seras amené à imaginer les différents cas de ton programme (respect de la casse, les lettres qui bouclent, input qui ne sont pas des strings... etc).

Allez, on va pas t'abandonner tout seul...voici les astuces pour faire un code au poil :

    Découper ce gros problème en petits problèmes simples : commence déjà à coder UNE lettre (écrit une méthode qui fait ça). Ensuite tu travailleras sur des mots ou des phrases.
    Tu vas devoir utiliser l'ASCII.
    N'oublie pas de reboucler de z à a.
    La casse doit être identique (=les majuscules restent des majuscules).

2.3. Jean-Michel Trader

Si tu es arrivé à bout des deux premiers exercices, bien joué ! On continue sur notre lancée.

Après la cybersécurité à la NSA, Lehman Brothers veut te débaucher pour faire de la finance. Hyper cool. Ils te demandent cette fois de coder un programme qui permet, à partir d'un array de prix, de connaître le meilleur jour d'achat et le meilleur jour de revente pour faire le maximum de bénéfices.

Si l'on considère l'array de prix suivant : [17, 3, 6, 9, 15, 8, 6, 1, 10], la fonction day_trader doit renvoyer qu'il s'agit du deuxième jour à l'achat et du cinquième jour à la revente.

> day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
=> [1,4]  # $15 - $3 == $12

Comme précédemment, écris ce programme en TDD.

NB : N'oublie pas (et c'est là, la petite difficulté de cet exercice) qu’on ne peut pas vendre avant d'avoir acheté…
2.4. Compter les mots
2.4.1. La première version

Après Lehman Brothers, Google a besoin de toi pour faire de la Data Science. Quelle star ! Écris une fonction intitulée word_counter qui prend en paramètres 2 éléments :

    le corpus, string dans lequel tu devras checker le nombre d'occurrences de différents strings
    le dictionnaire, une array de mots (strings) qui seront recherchés dans le corpus

La fonction devra renvoyer le nombre d'occurrences de chaque mot du dictionnaire dans le corpus sous la forme d'un hash. Ainsi :

> dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
> word_counter("below", dictionnary)
=> {"below"=>1, "low"=>1}
> word_counter("Howdy partner, sit down! How's it going?", dictionnary)
=> {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}

TDD toussa, tu as compris la rengaine
2.4.2. Compter chez Shakespeare
a) Les mots communs

Google veut savoir combien de fois l'on peut trouver dans l'œuvre intégrale de Shakespeare les mots suivants :

dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

Crée un fichier shakespeare.txt qui reprend le corpus intégral de l'oeuvre de l'écrivain anglais. Ton programme appellera le fichier shakespeare.txt (indice : c'est plus facile s'ils sont dans le même dossier) pour s'en servir comme corpus, pour ensuite compter les occurrences du dictionnaire.
b) Les gros mots lol

Après les mots communs, Google est de plus en plus curieux. Ils voudraient savoir combien de gros mots sont contenus dans l'œuvre de Shakespeare, pour voir si l'auteur anglais était un coquin. Voici une liste de gros mots au format .txt. Télécharge ce fichier, mets-le à côté de Shakespeare.txt. Trouve un moyen pour transformer cette liste de mots au format .txt en une array de string qui te servira de dictionnaire.
3. Rendu attendu

Un joli dossier bien organisé qui contient tous les programmes et tous les tests qui les couvrent.
