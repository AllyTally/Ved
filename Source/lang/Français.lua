-- Language file for Ved
--- Language: Français (fr)
--- Last converted: 2019-11-22 22:10:59 (CET)

--[[
	If you would like to help translate Ved, please get in touch with Dav999
	to get access to the online translation system!
	If you want to continue translating in this file, it's possible to import
	it into the system later, so don't worry.
]]

-- Plural equations for each language: http://docs.translatehouse.org/projects/localization-guide/en/latest/l10n/pluralforms.html
-- (but then in Lua's syntax)
function lang_plurals(n) return (n > 1) end

function fontpng_ascii(c)
	if c == "à" then
		return "a"
	elseif c == "é" or c == "è" or c == "ê" then
		return "e"
	elseif c == "É" or c == "Ê" then
		return "E"
	elseif c == "ç" then
		return "c"
	elseif c == "ô" then
		return "o"
	elseif c == "î" then
		return "i"
	elseif c == "ù" or c == "û" then
		return "u"
	end
end

L = {

TRANSLATIONCREDIT = "", -- If you're making a translation, feel free to set this to something like "Translation made by (you)".

OUTDATEDLOVE = "Votre version de L{ve est obsolète. Veuillez utiliser la version 0.9.1 ou ultérieure.\nVous pouvez télécharger la dernière version de L{ve sur le site https://love2d.org/.",
OUTDATEDLOVE090 = "Ved ne supporte plus L{ve 0.9.0. Cependant, L{ve 0.9.1 et toute version ultérieure seront supportées.\nVous pouvez télécharger la dernière version de L{ve sur https://love2d.org/.",
UNKNOWNSTATE = "État inconnu ($1), entré depuis l'état $2",
FATALERROR = "ERREUR FATALE : ",
FATALEND = "Veuillez fermer le jeu et réessayer. Et si vous êtes Dav, veuillez le réparer.",

OSNOTRECOGNIZED = "Votre système d'exploitation ($1) n'est pas reconnu! Utilisation des valeurs par défaut des fonctions du système de fichiers; les niveaux sont stockés dans:\n\n$2",
MAXTRINKETS = "Le nombre maximum de médailles (20) a été atteint dans ce niveau.",
MAXCREWMATES = "Le nombre maximum d'équipiers (20) a été atteint dans ce niveau.",
EDITINGROOMTEXTNIL = "Le texte de la salle existante que vous éditiez est nil !",
STARTPOINTNOLONGERFOUND = "L'ancien point de départ ne peut plus être trouvé !",
UNSUPPORTEDTOOL = "Outil non supporté! Outil : ",
SURENEWLEVEL = "Êtes-vous sûr de vouloir créer un nouveau niveau? Vous perdrez tout contenu non sauvegardé.",
SURELOADLEVEL = "Êtes-vous sûr de vouloir charger un niveau? Vous perdrez tout contenu non sauvegardé.",
COULDNOTGETCONTENTSLEVELFOLDER = "Le contenu du dossier de niveaux n'a pas pu être récupéré. Veuillez vérifier si $1 existe et réessayez.",
MAPSAVEDAS = "L'image de la carte a été sauvegardée en tant que $1 !",
RAWENTITYPROPERTIES = "Vous pouvez changer les valeurs brutes des propriétés de cette entité ici.",
UNKNOWNENTITYTYPE = "Type d'entité $1 inconnu",
METADATAENTITYCREATENOW = "L'entité de métadonnées n'existe pas. Voulez vous la créer maintenant?\n\nL'entité de métadonnées est une entité cachée qui peut être ajoutée à des niveaux de VVVVVV pour stocker des données supplémentaires utilisées par Ved, comme par exemple des notes sur le niveau, des noms de drapeaux et bien d'autres choses.",
WARPTOKENENT404 = "Le jeton de téléportation n'existe plus !",
SPLITFAILED = "La séparation a misérablement échoué ! Avez-vous trop de lignes entre une commande texte et une commande speak ou speak_active ?", -- Command names are best left untranslated
NOFLAGSLEFT = "Il n'y a plus de drapeaux disponibles, donc au moins un nouveau nom de drapeau ne peut pas être associé à un numéro de drapeau. L'utilisation de ce script dans VVVVVV a des chances de le casser. Veuillez enlever toutes les références vers des drapeaux que vous n'utilisez plus et réessayez.\n\nQuitter l'éditeur ?",
NOFLAGSLEFT_LOADSCRIPT = "Il n'y a plus de drapeaux disponibles, donc un script de chargement utilisant un nouveau drapeau n'a pas pu être créé. A la place, un script de chargement qui charge le script cible avec iftrinkets(0,$1) a été créé. Veuillez enlever toutes les références vers des drapeaux que vous n'utilisez plus et réessayez.",
LEVELOPENFAIL = "Impossible d'ouvrir le fichier $1.vvvvvv.",
SIZELIMIT = "La taille maximum d'un niveau est de 20 par 20.\n\nA la place, la taille du niveau va être changée en $1 par $2.",
SCRIPTALREADYEXISTS = "Le script \"$1\" existe déjà !",
FLAGNAMENUMBERS = "Les noms de drapeaux ne peuvent pas être composés que de nombres.",
FLAGNAMECHARS = "Les noms de drapeaux ne peuvent pas contenir de virgules, de parenthèses ou d'espaces.",
FLAGNAMEINUSE = "Le nom de drapeau $1 est déjà utilisé par le drapeau $2",
DIFFSELECT = "Choisissez le niveau à comparer. Le niveau que vous sélectionnez sera considéré comme l'ancienne version.",
SUREQUIT = "Êtes-vous sûr de vouloir quitter? Vous allez perdre tout contenu non sauvegardé.",
SUREQUITNEW = "Vous avez des changements non sauvegardés. Voulez-vous sauver ces changements avant de quitter ?",
SURENEWLEVELNEW = "Vous avez des changements non sauvegardés. Voulez-vous sauver ces changements avant de créer un nouveau niveau ?",
SCALEREBOOT = "La nouvelle configuration d'échelle seront prises en compte après avoir redémarré Ved.",
NAMEFORFLAG = "Nom pour le drapeau $1 :",
SCRIPT404 = "Le script \"$1\" n'existe pas !",
ENTITY404 = "L'entité #$1 n'existe plus !",
GRAPHICSCARDCANVAS = "Nous sommes désolés, mais il semble que votre carte graphique ou son pilote ne supporte pas cette fonctionnalité !",
MAXTEXTURESIZE = "Nous sommes désolés, créer une image de dimensions $1x$2 ne semble pas être supporté par votre carte graphique ou son pilote..\n\nLa taille limite sur ce système est $3x$3.",
SUREDELETESCRIPT = "Êtes-vous sûr de vouloir supprimer le script \"$1\" ?",
SUREDELETENOTE = "Êtes-vous sûr de vouloir supprimer cette note ?",
THREADERROR = "Erreur de processus !",
WHATDIDYOUDO = "Qu'avez-vous fait ?!",
UNDOFAULTY = "Qu'est-ce que vous faites ?",
SOURCEDESTROOMSSAME = "La salle de départ et de destination sont les mêmes !",
UNKNOWNUNDOTYPE = "Type de retour en arrière \"$1\" inconnu !",
MDEVERSIONWARNING = "Ce niveau semble avoir été créé dans une version ultérieure de Ved, et peut contenir des données pouvant être perdues lorsque vous sauverez ce niveau.",
FORGOTPATH = "Vous avez oublié de spécifier un chemin !",
MDENOTPASSED = "Attention: aucune entité de métadonnées n'a été passée à savelevel() !",
RESTARTVEDLANG = "Après avoir changé la langue, vous devez relancer Ved pour que les changements prennent effet.",

SELECTCOPY1 = "Sélectionnez la salle à copier",
SELECTCOPY2 = "Sélectionnez l'emplacement où copier cette salle",
SELECTSWAP1 = "Sélectionnez la première salle à échanger",
SELECTSWAP2 = "Sélectionnez la seconde salle à échanger",

TILESETCHANGEDTO = "Jeu de tuiles changé à $1",
TILESETCOLORCHANGEDTO = "La couleur du jeu de tuiles à été changé à $1",
ENEMYTYPECHANGED = "Type d'ennemi changé",

-- These four strings aren't used apart of each other, so if necessary you could even make CHANGEDTOMODE "$1" and make the other three full sentences
CHANGEDTOMODE = "Type de placement de tuiles changé à $1",
CHANGEDTOMODEAUTO = "automatique",
CHANGEDTOMODEMANUAL = "manuel",
CHANGEDTOMODEMULTI = "multi jeux de tuiles",

BUSYSAVING = "Sauvegarde en cours...",
SAVEDLEVELAS = "Niveau sauvegardé en tant que $1.vvvvvv",

ROOMCUT = "Salle coupée et sauvegardée dans le presse papiers",
ROOMCOPIED = "Salle copiée dans le presse papiers",
ROOMPASTED = "Salle collée",

METADATAUNDONE = "Options de niveaux remises en arrière",
METADATAREDONE = "Options de niveaux rétablies",

BOUNDSTOPLEFT = "Sélectionnez le coin en haut à gauche de la zone de sélection",
BOUNDSBOTTOMRIGHT = "Sélectionnez le coin en bas à droite",

TILE = "Tuile $1",
HIDEALL = "Tout cacher",
SHOWALL = "Tout montrer",
SCRIPTEDITOR = "Éditeur de script",
FILE = "Fichier",
NEW = "Nouveau",
OPEN = "Ouvrir",
SAVE = "Sauver",
UNDO = "Revenir en arrière",
REDO = "Revenir en avant",
COMPARE = "Comparer",
STATS = "Statistiques",
SCRIPTUSAGES = "Utilisations",
EDITTAB = "Modifier",
COPYSCRIPT = "Copier le script",
SEARCHSCRIPT = "Chercher",
GOTOLINE = "Aller à la ligne",
GOTOLINE2 = "Aller à la ligne :",
INTERNALON = "Sc.int est activé",
INTERNALOFF = "Sc.int est désactivé",
INTERNALYESBARS = "say(-1) sc.int",
INTERNALNOBARS = "Chgt script sc.int",
VIEW = "Vue",
SYNTAXHLOFF = "Color. syn. : oui",
SYNTAXHLON = "Color. syn. : non",
TEXTSIZEN = "Taille du texte: Normal",
TEXTSIZEL = "Taille du texte: Grand",
INSERT = "Insérer",
HELP = "Aide",
INTSCRWARNING_NOLOADSCRIPT = "Script de chargement requis !",
INTSCRWARNING_BOXED = "Réf. directe à l'invite de commande du script !\n\n",
COLUMN = "Colonne : ",

BTN_OK = "OK",
BTN_CANCEL = "Annuler",
BTN_YES = "Oui",
BTN_NO = "Non",
BTN_APPLY = "Appliquer",
BTN_QUIT = "Quitter",
BTN_DISCARD = "Jeter",
BTN_SAVE = "Sauver",
BTN_CLOSE = "Fermer",
BTN_LOAD = "Charger",

COMPARINGTHESE = "Comparaison entre $1.vvvvvv et $2.vvvvvv en cours",
COMPARINGTHESENEW = "Comparaison entre (niveau non sauvegardé) et $1.vvvvvv en cours",

RETURN = "Retour",
CREATE = "Créer",
GOTO = "Aller à",
DELETE = "Supprimer",
RENAME = "Renommer",
CHANGEDIRECTION = "Changer la direction",
DIRECTION = "Direction->",
UP = "haut",
DOWN = "bas",
LEFT = "gauche",
RIGHT = "droit",
TESTFROMHERE = "Tester depuis ici",
FLIP = "Renverser",
CYCLETYPE = "Changer le type",
GOTODESTINATION = "Aller à la destination",
GOTOENTRANCE = "Aller à l'entrée",
CHANGECOLOR = "Changer la couleur",
EDITTEXT = "Éditer le texte",
COPYTEXT = "Copier le texte",
EDITSCRIPT = "Éditer le script",
OTHERSCRIPT = "Changer le nom du script",
PROPERTIES = "Propriétés",
CHANGETOHOR = "Modifié à horizontal",
CHANGETOVER = "Modifié à vertical",
RESIZE = "Déplacer/Redimensionner",
CHANGEENTRANCE = "Déplacer l'entrée",
CHANGEEXIT = "Déplacer la sortie",
COPYENTRANCE = "Copier l'entrée",
LOCK = "Vérouiller",
UNLOCK = "Dévérouiller",
BUG = "[Bogue!]",

VEDOPTIONS = "Options de Ved",
LEVELOPTIONS = "Options de niveau",
MAP = "Carte",
SCRIPTS = "Scripts",
SEARCH = "Chercher",
SENDFEEDBACK = "Envoyer un avis",
LEVELNOTEPAD = "Commentaires de niveau",
PLUGINS = "Modules",

BACKB = "Retour <<",
MOREB = "Plus >>",
AUTOMODE = "Mode : auto",
AUTO2MODE = "Mode : multi",
MANUALMODE = "Mode : manuel",
PLATFORMSPEED = "Vit. de plateforme : $1",
ENEMYTYPE = "Type d'ennemi: $1",
PLATFORMBOUNDS = "Limites de plateforme",
WARPDIR = "Dir de TP: $1",
ENEMYBOUNDS = "Zone des ennemis",
ROOMNAME = "Nom de la salle",
ROOMOPTIONS = "Options de la salle",
ROTATE180 = "Tourner à 180 degrés",
ROTATE180UNI = "Tourner à 180°",
HIDEBOUNDS = "Cacher les limites",
SHOWBOUNDS = "Afficher les limites",

ROOMPLATFORMS = "Plateformes de la salle", -- basically, platforms/enemies in/for this room
ROOMENEMIES = "Ennemis de la salle",

OPTNAME = "Nom",
OPTBY = "Par",
OPTWEBSITE = "SiteWeb",
OPTDESC = "Desc", -- If necessary, you can span multiple lines
OPTSIZE = "Taille",
OPTMUSIC = "Musique",
CAPNONE = "AUCUN",
ENTERLONGOPTNAME = "Nom du niveau :",

X = "x", -- Used for level size: 20x20

SOLID = "Solide",
NOTSOLID = "Non solide",

TSCOLOR = "Couleur : $1",

ONETRINKETS = "M :",
ONECREWMATES = "Eq :",
ONEENTITIES = "En :",

LEVELSLIST = "Niveaux",
LOADTHISLEVEL = "Charger ce niveau : ",
ENTERNAMESAVE = "Entrer le nom utilisé pour la sauvegarde : ",
SEARCHFOR = "Chercher pour : ",

VERSIONERROR = "Impossible de vérifier la version.",
VERSIONUPTODATE = "Votre version de Ved est à jour.",
VERSIONOLD = "Mise à jour disponible! Dernière version : $1",
VERSIONCHECKING = "Recherche de mise à jour...",
VERSIONDISABLED = "Recherche de mise à jour désactivée",

SAVESUCCESS = "Sauvegarde effectuée !",
SAVENOSUCCESS = "La sauvegarde a échouée! Erreur : ",
INVALIDFILESIZE = "Taille de fichier invalide.",

EDIT = "Modifier",
EDITWOBUMPING = "Modifier sans réordonner la liste",
COPYNAME = "Copier le nom",
COPYCONTENTS = "Copier le contenu",
DUPLICATE = "Dupliquer",

NEWSCRIPTNAME = "Nom :",
CREATENEWSCRIPT = "Créer un nouveau script",

NEWNOTENAME = "Nom :",
CREATENEWNOTE = "Créer une nouvelle note",

ADDNEWBTN = "[Ajouter nouveau]",
IMAGEERROR = "[ERREUR D'IMAGE]",

NEWNAME = "Nouveau nom :",
RENAMENOTE = "Renommer la note",
RENAMESCRIPT = "Renommer le script",

LINE = "ligne ",

SAVEMAP = "Sauver la carte",
SAVEFULLSIZEMAP = "Sauver la carte globale",
COPYROOMS = "Copier la salle",
SWAPROOMS = "Échanger les salles",

FLAGS = "Drapeaux",
ROOM = "salle",
CONTENTFILLER = "Contenu",

FLAGUSED = "Utilisé    ", -- preferably same length as L.FLAGNOTUSED
FLAGNOTUSED = "Non utilisé",
FLAGNONAME = "Aucun nom",
USEDOUTOFRANGEFLAGS = "Drapeaux hors limites utilisés :",

CUSTOMVVVVVVDIRECTORY = "Dossier de VVVVVV",
CUSTOMVVVVVVDIRECTORYEXPL = "Le répertoire par défaut de VVVVVV que Ved attend est:\n$1\n\nCe chemin ne doit pas mener au dossier \"levels\".",
CUSTOMVVVVVVDIRECTORY_NOTSET = "Vous n'avez pas donné de dossier VVVVVV personnalisé.\n\n",
CUSTOMVVVVVVDIRECTORY_SET = "Votre dossier de VVVVVV est situé dans un chemin personnalisé:\n$1\n\n",
LANGUAGE = "Langue",
DIALOGANIMATIONS = "Animations de dialogue",
FLIPSUBTOOLSCROLL = "Inverser la direction de défilage des sous-outils",
ADJACENTROOMLINES = "Indicateurs de tuiles dans les salles adjacentes",
ASKBEFOREQUIT = "Demander avant de quitter",
NEVERASKBEFOREQUIT = "Ne jamais demander avant de quitter, même s'il y a des modifications non sauvegardées",
COORDS0 = "Afficher les coordonnées en commençant à 0 (comme dans les scripts internes)",
ALLOWDEBUG = "Activer le mode de débogage",
SHOWFPS = "Afficher le compteur de FPS",
IIXSCALE = "Échelle 2x",
CHECKFORUPDATES = "Chercher une mise à jour",
PAUSEDRAWUNFOCUSED = "Ne pas effectuer de rendu lorsque la fenêtre n'est pas en premier plan",
ENABLEOVERWRITEBACKUPS = "Faire des sauvegardes des fichiers de niveaux qui sont remplacés",
AMOUNTOVERWRITEBACKUPS = "Nombre de sauvegardes à garder par niveau",
SCALE = "Échelle",
LOADALLMETADATA = "Charger des métadonnées (ex : titre, auteur, description) pour tous les fichiers dans la liste de niveaux",
COLORED_TEXTBOXES = "Utiliser des couleurs pour l'éditeur de script",

SCRIPTSPLIT = "Séparer",
SPLITSCRIPT = "Scripts de séparation",
COUNT = "Compte : ",
SMALLENTITYDATA = "texte",

-- Stats screen
AMOUNTSCRIPTS = "Scripts :",
AMOUNTUSEDFLAGS = "Drapeaux :",
AMOUNTENTITIES = "Entités :",
AMOUNTTRINKETS = "Médailles :",
AMOUNTCREWMATES = "Équipiers :",
AMOUNTINTERNALSCRIPTS = "Scripts internes :",
TILESETUSSAGE = "Utilisation du jeu de tuiles",
TILESETSONLYUSED = "(seules les salles ayant des tuiles sont comptées)",
AMOUNTROOMSWITHNAMES = "Salles ayant un nom :",
PLACINGMODEUSAGE = "Modes de placement de tuiles :",
AMOUNTLEVELNOTES = "Notes de niveau :",
AMOUNTFLAGNAMES = "Nom des drapeaux :",
TILESUSAGE = "Utilisation des tuiles",
AMOUNTTILES = "Tuiles :",
AMOUNTSOLIDTILES = "Tuiles solides :",
AMOUNTSPIKES = "Pointes :",


UNEXPECTEDSCRIPTLINE = "Ligne de script sans script inattendue : $1",
DUPLICATESCRIPT = "Le script $1 est un doublon! Il ne peut être chargé qu'une seule fois.",
MAPWIDTHINVALID = "La largeur de la carte est invalide : $1",
MAPHEIGHTINVALID = "La hauteur de la carte est invalide : $1",
LEVMUSICEMPTY = "La musique du niveau est vide !",
NOT400ROOMS = "Le nombre d'entrées de levelMetadata n'est pas 400 !",
MOREERRORS = "et $1 autres",

DEBUGMODEON = "Mode de débogage activé",
FPS = "FPS",
STATE = "Etat",
MOUSE = "Souris",

BLUE = "Bleu",
RED = "Rouge",
CYAN = "Cyan",
PURPLE = "Violet",
YELLOW = "Jaune",
GREEN = "Vert",
GRAY = "Gris",
PINK = "Rose",
BROWN = "Marron",
RAINBOWBG = "Arc-en-ciel",

-- b14
SYNTAXCOLORS = "Couleurs syntaxiques",
SYNTAXCOLORSETTINGSTITLE = "Options de coloration syntaxique lors de la modification de scripts",
SYNTAXCOLOR_COMMAND = "Commande",
SYNTAXCOLOR_GENERIC = "Générique",
SYNTAXCOLOR_SEPARATOR = "Séparateur",
SYNTAXCOLOR_NUMBER = "Nombre",
SYNTAXCOLOR_TEXTBOX = "Boite de texte",
SYNTAXCOLOR_ERRORTEXT = "Commande non reconnue",
SYNTAXCOLOR_CURSOR = "Curseur",
SYNTAXCOLOR_FLAGNAME = "Nom de drapeau",
SYNTAXCOLOR_NEWFLAGNAME = "Nouveau nom de drapeau",
RESETCOLORS = "Remise à zéro des couleurs",
STRINGNOTFOUND = "\"$1\" n'a pas été trouvé",

-- b17 - L.MAL is concatenated with L.[...]CORRUPT
MAL = "Le fichier de niveau est mal formaté : ",
METADATACORRUPT = "Les métadonnées sont manquantes ou corrompues.",
METADATAITEMCORRUPT = "Les métadonnées pour $1 sont manquantes ou corrompues.",
TILESCORRUPT = "Les tuiles sont manquantes ou corrompues.",
ENTITIESCORRUPT = "Les entités sont manquantes ou corrompues.",
LEVELMETADATACORRUPT = "Les métadonnées des salles sont manquantes ou corrompues.",
SCRIPTCORRUPT = "Les scripts sont manquants ou corrompus.",

-- 1.1.0
LOADSCRIPTMADE = "Script de chargement créé",
COPY = "Copier",
CUSTOMSIZE = "Taille de pinceau customisée : $1x$2",
SELECTINGA = "Sélection - coin haut gauche",
SELECTINGB = "Sélection : $1x$2",
TILESETSRELOADED = "Jeux de tuiles et images rechargées",

-- 1.2.0
BACKUPS = "Sauvegardes",
BACKUPSOFLEVEL = "Sauvegardes du niveau $1",
LASTMODIFIEDTIME = "Dernière modification", -- List header
OVERWRITTENTIME = "Remplacé", -- List header
SAVEBACKUP = "Sauver dans le dossier de VVVVVV",
DATEFORMAT = "Format de date",
TIMEFORMAT = "Format d'heure",
CUSTOMDATEFORMAT = "Format de date personnalisé",
SAVEBACKUPNOBACKUP = "Faites en sorte de choisir un nom unique pour ceci si vous ne voulez rien remplacer, car AUCUNE sauvegarde ne sera effectuée dans ce cas-ci !",

-- 1.2.4
AUTOSAVECRASHLOGS = "Sauver les historiques de plantage automatiquement",
MOREINFO = "Dernières nouvelles",
COPYLINK = "Copier le lien",
SCRIPTDISPLAY = "Montrer",
SCRIPTDISPLAY_USED = "Utilisé",
SCRIPTDISPLAY_UNUSED = "Non utilisé",

-- 1.3.0 (more changes)
RECENTLYOPENED = "Niveaux récemment ouverts",
REMOVERECENT = "Voulez-vous l'enlever de la liste des niveaux ouverts récemment ?",
RESETCUSTOMBRUSH = "(Clic droit pour donner une nouvelle taille)",

-- 1.3.2
DISPLAYSETTINGS = "Affichage/\nÉchelle",
DISPLAYSETTINGSTITLE = "Options d'Affichage/Échelle",
SMALLERSCREEN = "Largeur de la fenêtre plus petite (800px au lieu de 896px)",
FORCESCALE = "Forcer les options d'échelle",
SCALENOFIT = "Les options d'échelle courantes rendent la fenêtre trop grande pour être affichée.",
SCALENONUM = "Les options d'échelle courantes sont invalides.",
MONITORSIZE = "Moniteur $1x$2",
VEDRES = "Résolution de Ved : $1x$2",
NONINTSCALE = "Échelonnage non entière",

-- 1.3.4
USEFONTPNG = "Utiliser font.png du dossier d'images de VVVVVV comme police",
REQUIRESHIGHERLOVE = " (requiert L{VE $1 ou version ultérieure)",
SYNTAXCOLOR_COMMENT = "Commentaire",
FPSLIMIT = "Limite de FPS",

MAPRESOLUTION = "Résolution", -- Map export size
MAPRES_ASSHOWN = "Comme illustré (max 640x480)", -- $1x$2 is resolution, max 640x480
MAPRES_PERCENT = "$1% ($2x$3 par salle)", -- Example: 50% (160x120 per room)
MAPRES_RATIO = "$1:$2 ($3x$4 par salle)", -- Example: 1:8 (40x30 per room)
TOPLEFT = "Haut gauche",
WIDTHHEIGHT = "Largeur & hauteur",
BOTTOMRIGHT = "Bas droit",
RENDERERINFO = "Information sur le moteur de rendu :",
MAPINCOMPLETE = "La carte n'est pas encore prête (au moment où vous avez appuyé sur Sauver), veuillez réessayer quand elle sera prête.",
KEEPDIALOGOPEN = "Garder le dialogue ouvert",
TRANSPARENTMAPBG = "Arrière plan transparent",
MAPEXPORTERROR = "Erreur lors de la création de la carte.",
VIEWIMAGE = "Voir", -- Verb, view image
INVALIDLINENUMBER = "Veuillez entrer un numéro de ligne valide.",
OPENLEVELSFOLDER = "Ouvrir dossier niveaux", -- Open levels directory/folder in Explorer, Finder or another system file manager. I went for making it fit on one line in the button, but this can be near impossible in another language, so feel free to make it longer to use two lines.
MOVEENTITY = "Déplacer",
GOTOROOM = "Aller dans la salle",
ESCTOCANCEL = "[Appuyez sur Échap pour annuler]",

INVALIDFILENAME_WIN = "Windows n'autorise pas les caractères suivants dans un nom de fichier:\n\n: * ? \" < > |\n\n(| étant une barre verticale)",
INVALIDFILENAME_MAC = "macOS n'autorise pas le caractère : dans un nom de fichier.",

-- Keyboard key. Please use CAPITAL LETTERS ONLY
TINY_CTRL = "CTRL",
TINY_SHIFT = "MAJ",
TINY_ALT = "ALT",
TINY_ESC = "Échap",
TINY_TAB = "TAB",
TINY_HOME = "Menu",
TINY_END = "END",
TINY_INSERT = "INS",
TINY_DEL = "Suppr",

-- Header for search results
SEARCHRESULTS_SCRIPTS = "Scripts [$1]",
SEARCHRESULTS_ROOMS = "Salles [$1]",
SEARCHRESULTS_NOTES = "Notes [$1]",

ASSETS = "Ressources", -- If this is hard to translate, try "resources" or just raw "assets". Assets are files like graphics (tiles.png, sprites.png, etc), music or sound effects
MUSICPLAYERROR = "La chanson ne peut pas être lue. Il est possible qu'elle n'existe pas ou qu'elle aie un type non supporté.",
SOUNDPLAYERROR = "Le son ne peut pas être lu. Il est possible qu'il n'existe pas ou qu'il aie un type non supporté.",
MUSICLOADERROR = "Impossible de charger $1 : ",
MUSICLOADERROR_TOOSMALL = "Le fichier son est trop petit pour être valide.",
MUSICEXISTSYES = "Existe",
MUSICEXISTSNO = "N'existe pas",
LOAD = "Charger",
RELOAD = "Recharger",
UNLOAD = "Décharger",
MUSICEDITOR = "Editeur de musique",
LOADMUSICNAME = "Charger .vvv",
INSERTSONG = "Insérer une chanson dans la piste $1",
SUREDELETESONG = "Etes-vous sûr de vouloir supprimer la chanson $1 ?",
SONGOPENFAIL = "Impossible d'ouvrir $1, la chanson n'a pas été remplacée.",
SONGREPLACEFAIL = "Quelque chose s'est mal passé lors du remplacement de la chanson.",
KILOBYTES = "$1 ko",
MEGABYTES = "$1 Mo",
GIGABYTES = "$1 Go",
CANNOTUSENEWLINES = "Le caractère \"$1\" ne peut pas être utilisé dans le nom d'un script !",
MUSICTITLE = "Titre : ",
MUSICARTIST = "Artiste : ",
MUSICFILENAME = "Nom de fichier : ",
MUSICNOTES = "Notes :",
SONGMETADATA = "Métadonnées pour la chanson $1",
MUSICFILEMETADATA = "Métadonnées du fichier",
MUSICEXPORTEDON = "Exporté : ", -- Followed by date and time
SAVEMETADATA = "Sauver métadonnées",
SOUNDS = "Sons",
GRAPHICS = "Graphismes",
FILEOPENERNAME = "Nom : ",
PATHINVALID = "Le chemin est invalide.",
DRIVES = "Lecteurs", -- like C: or F: on Windows
DOFILTER = "Seulement montrer *$1", -- "*.txt" for example
DOFILTERDIR = "Seulement montrer les dossiers",
FILEDIALOGLUV = "Désolé, votre système d'exploitation n'est pas reconnu, donc le dialogue de fichier ne fonctionne pas.",
RESET = "Réinit.",
CHANGEVERB = "Changer", -- verb
LOADIMAGE = "Charger image",
GRID = "Grille",
NOTALPHAONLY = "RBV",

OPAQUEROOMNAMEBACKGROUND = "Rendre l'arrière-plan du nom de salle opaque",
PLATVCHANGE_TITLE = "Changer la vitesse de la plateforme",
PLATVCHANGE_MSG = "Vitesse :",
PLATVCHANGE_INVALID = "Vous devez entrer un nombre.",
RENAMESCRIPTREFERENCES = "Renommer les références",
PLATFORMSPEEDSLIDER = "Vit. :",

TRINKETS = "Médailles",
LISTALLTRINKETS = "Lister toutes les médailles", -- "Give a list of all trinkets", on a button. Alternatively: "Find all trinkets".
LISTOFALLTRINKETS = "Liste de toutes les médailles",
NOTRINKETSINLEVEL = "Il n'y a pas de médaille dans ce niveau.",
CREWMATES = "Équipiers",
LISTALLCREWMATES = "Lister tous les équipiers", -- "Give a list of all rescuable crewmates", on a button. Alternatively: "Find all crewmates".
LISTOFALLCREWMATES = "Liste de tous les équipiers secourables",
NOCREWMATESINLEVEL = "Il n'a pas d'équipier secourable dans ce niveau.",
SHIFTROOMS = "Déplacer la salle", -- In the map. Move all rooms in the entire level in any direction


OLDSHORTCUT_SCRIPTJUMP = "CTRL+gauche/droite sera bientôt enlevé, utilisez ALT+gauche/droite à la place", -- CTRL and ALT are capitalized here for extra clarity in this string
OLDSHORTCUT_ASSETS = "Ctrl+A sera bientôt enlevé, utilisez Ctrl+R à la place",
OLDSHORTCUT_OPENLVLDIR = "Ctrl+D sera bientôt enlevé, utilisez Ctrl+F à la place",


}

-- Please check the reference for plural forms
L_PLU = {
	NUMUNSUPPORTEDPLUGINS = {
		[0] = "Vous avez $1 module qui n'est pas supporté dans cette version.",
		[1] = "Vous avez $1 modules qui ne sont pas supportés dans cette version.",
	},
	LEVELFAILEDCHECKS = {
		[0] = "Ce niveau a échoué $1 test. Le problème a peut-être été réparé automatiquement, mais il est possible que certains problèmes et incohérences subsistent.",
		[1] = "Ce niveau a échoué $1 tests. Les problèmes ont peut-être été réparés automatiquement, mais il est possible que certains problèmes et incohérences subsistent.",
	},
	SCRIPTUSAGESROOMS = {
		[0] = "$1 utilisation dans les salles : $2",
		[1] = "$1 utilisations dans les salles : $2",
	},
	SCRIPTUSAGESSCRIPTS = {
		[0] = "$1 utilisation dans les scripts : $2",
		[1] = "$1 utilisations dans les scripts : $2",
	},
	ENTITYINVALIDPROPERTIES = {
		[0] = "L'entité à [$1 $2] a $3 propriété invalide !",
		[1] = "L'entité à [$1 $2] a $3 propriétés invalides !",
	},
	ROOMINVALIDPROPERTIES = {
		[0] = "Les métadonnées du niveau pour la salle #$1 a $2 propriété invalide !",
		[1] = "Les métadonnées du niveau pour la salle #$1 a $2 propriétés invalides !",
	},
	SCRIPTDISPLAY_SHOWING = {
		[0] = "Affichage de $1",
		[1] = "Affichage de $1",
	},
	FLAGUSAGES = {
		[0] = "Utilisé $1 fois dans les scripts : $2",
		[1] = "Utilisé $1 fois dans les scripts : $2",
	},
	NOTALLTILESVALID = {
		[0] = "La tuile $1 n'est pas un nombre entier valide dans l'intervalle 0-1199",
		[1] = "Les tuiles $1 ne sont pas des nombres entiers valides dans l'intervalle 0-1199",
	},
	BYTES = {
		[0] = "$1 octet",
		[1] = "$1 octets",
	},
}

toolnames = {

"Mur",
"Arrière-plan",
"Pique",
"Médailles",
"Point de sauvegarde",
"Plateforme disparaissante",
"Tapis roulant",
"Plateforme mobile",
"Ennemi",
"Ligne de gravité",
"Texte de salle",
"Moniteur",
"Boite de script",
"Jeton de téléportation",
"Ligne de téléportation",
"Équipiers",
"Point de départ",

}

subtoolnames = {

[1] = {"Pinceau 1x1", "Pinceau 3x3", "Pinceau 5x5", "Pinceau 7x7", "Pinceau 9x9", "Remplir horizontalement", "Remplir verticalement", "Taille de pinceau customisée", "Seau de remplissage", "Patate pour Faire des Trucs qui sont Magiques"},
[2] = {},
[3] = {"Auto 1", "Expansion auto G+D", "Expansion auto G", "Expansion auto D"},
[4] = {},
[5] = {"Vertical", "Renversé"},
[6] = {},
[7] = {"Petit D", "Petit G", "Grand D", "Grand G"},
[8] = {"Bas", "Haut", "Gauche", "Droite"},
[9] = {},
[10] = {"Horizontal", "Vertical"},
[11] = {},
[12] = {},
[13] = {},
[14] = {"Entrée", "Quitter"},
[15] = {},
[16] = {"Rose", "Jaune", "Rouge", "Vert", "Bleu", "Cyan", "Aléatoire"},
[17] = {"Tourner vers la droite", "Tourner vers la gauche"},

}

warpdirs = {

[0] = "x",
[1] = "H",
[2] = "V",
[3] = "A",

}

warpdirchangedtext = {

[0] = "Téléportation dans la même salle désactivée",
[1] = "Direction de téléportation : horizontal",
[2] = "Direction de téléportation : vertical",
[3] = "Direction de téléportation : vertical et horizontal",

}

langtilesetnames = {

short0 = "Stn. Spat.",
long0 = "Station Spatiale",
short1 = "Extérieur",
long1 = "Extérieur",
short2 = "Labo",
long2 = "Labo",
short3 = "Zone de TP",
long3 = "Zone de Téléportation",
short4 = "Vaisseau",
long4 = "Vaisseau",

}

ERR_VEDHASCRASHED = "Ved a planté !"
ERR_VEDVERSION = "Version de Ved :"
ERR_LOVEVERSION = "Version de L{VE :"
ERR_STATE = "État :"
ERR_OS = "SE :"
ERR_TIMESINCESTART = "Temps depuis le début :"
ERR_PLUGINS = "Modules :"
ERR_PLUGINSNOTLOADED = "(non chargé)"
ERR_PLUGINSNONE = "(aucun)"
ERR_PLEASETELLDAV = "Veuillez contacter Dav999 à propos de ce problème.\n\n\nDétails : (appuyez sur Ctrl/Cmd+C pour copier dans le presse papiers)\n\n"
ERR_INTERMEDIATE = " (version intermédiaire)" -- pre-release version, so a version in between officially released versions
ERR_TOONEW = " (trop récent)"

ERR_PLUGINERROR = "Erreur de module !"
ERR_FILE = "Fichier à éditer :"
ERR_FILEEDITORS = "Modules qui modifient ce fichier :"
ERR_CURRENTPLUGIN = "Module qui a provoqué cette erreur :"
ERR_PLEASETELLAUTHOR = "Un module était supposé modifier le code de Ved, mais le code à remplacer n'a pas été trouvé.\nIl est possible que ceci soit causé par un conflit entre deux modules, ou qu'une mise à jour de Ved aie cassé ce module.\n\nDétails : (appuyez sur Ctrl/Cmd+C pour copier dans le presse papiers)\n\n"
ERR_CONTINUE = "Vous pouvez continuer en appuyant sur Échap ou Entrée, mais cette modification erronée peut causer des problèmes."
ERR_REPLACECODE = "Impossible de trouver ceci dans %s.lua :"
ERR_REPLACECODEPATTERN = "Impossible de trouver ceci dans %s.lua (en tant que motif) :"
ERR_LINESTOTAL = "%i lignes au total"

ERR_SAVELEVEL = "Pour sauver une copie de votre niveau, appuyez sur S"
ERR_SAVESUCC = "Niveau sauvegardé avec succès en tant que %s !"
ERR_SAVEERROR = "Erreur de sauvegarde! %s"
ERR_LOGSAVED = "Plus d'informations peuvent être trouvées dans le rapport de plantage :\n%s"


diffmessages = {
	pages = {
		levelproperties = "Propriétés de niveaux",
		changedrooms = "Salles modifiées",
		changedroommetadata = "Métadonnées de salle modifiée",
		entities = "Entités",
		scripts = "Scripts",
		flagnames = "Nom des drapeaux",
		levelnotes = "Notes de niveau",
	},
	levelpropertiesdiff = {
		Title = "Le nom a été changé de \"$1\" à \"$2\"",
		Creator = "L'auteur a été changé de \"$1\" à \"$2\"",
		website = "Le site internet a été changé de \"$1\" à \"$2\"",
		Desc1 = "La description 1 a été changée de \"$1\" à \"$2\"",
		Desc2 = "La description 2 a été changée de \"$1\" à \"$2\"",
		Desc3 = "La description 3 a été changée de \"$1\" à \"$2\"",
		mapsize = "La taille de la carte a été changée de $1x$2 à $3x$4",
		mapsizenote = "NOTE: La taille de la carte a été changée de $1x$2 à $3x$4.\\o\nLes salles en dehors de $5x$6 ne sont pas listées.\\o",
		levmusic = "La musique du niveau a été changée de $1 à $2",
	},
	rooms = {
		added1 = "Ajouté ($1,$2) ($3)\\G",
		added2 = "Ajouté ($1,$2) ($3 -> $4)\\G",
		changed1 = "Modifié ($1,$2) ($3)\\Y",
		changed2 = "Modifié ($1,$2) ($3 -> $4)\\Y",
		cleared1 = "Tuiles dans la zone ($1,$2) ($3) enlevées\\R",
		cleared2 = "Tuiles dans la zone ($1,$2) ($3 -> $4) enlevées\\R",
	},
	roommetadata = {
		changed0 = "Salle $1,$2 :",
		changed1 = "Salle $1,$2 ($3) :",
		roomname = "Nom de la salle modifié de \"$1\" à \"$2\"\\Y",
		roomnameremoved = "Nom de la salle \"$1\" enlevé\\R",
		roomnameadded = "Salle nommée \"$1\"\\G",
		tileset = "Jeu de tuiles $1 couleur $2 modifié à jeu de tuiles $3 couleur $4\\Y",
		platv = "Vitesse de la plateforme modifiée de $1 à $2\\Y",
		enemytype = "Type d'ennemi modifié de $1 à $2\\Y",
		platbounds = "Bords de la plateforme modifiées de $1,$2,$3,$4 à $5,$6,$7,$8\\Y",
		enemybounds = "Bords de l'ennemi modifié de $1,$2,$3,$4 à $5,$6,$7,$8\\Y",
		directmode01 = "Mode direct activé\\G",
		directmode10 = "Mode direct désactivé\\R",
		warpdir = "Direction de téléportation modifiée de $1 à $2\\Y",
	},
	entities = {
		added = "Type d'entité $1 ajouté à la position $2,$3 dans la salle ($4,$5)\\G",
		removed = "Type d'entité $1 supprimé à la position $2,$3 dans la salle ($4,$5)\\R",
		changed = "Type d'entité $1 modifié à la position $2,$3 dans la salle ($4,$5)\\Y",
		changedtype = "Type d'entité $1 modifié en type $2 à la position $3,$4 dans la salle ($5,$6)\\Y",
		multiple1 = "Entités modifiées à la position $1,$2 dans la salle ($3,$4) :\\Y",
		multiple2 = "vers :",
		addedmultiple = "Entités ajoutées à la position $1,$2 dans la salle ($3,$4) :\\G",
		removedmultiple = "Entités supprimées à la position $1,$2 dans la salle ($3,$4) :\\R",
		entity = "Type $1",
		incomplete = "Toutes les entités n'ont pas pu être traitées! Veuillez reporter ceci à Dav.\\r",
	},
	scripts = {
		added = "Script \"$1\" ajouté\\G",
		removed = "Script \"$1\" supprimé\\R",
		edited = "Script \"$1\" modifié\\Y",
	},
	flagnames = {
		added = "Ajouté un nom pour le drapeau $1 : \"$2\"\\G",
		removed = "Nom \"$1\" supprimé pour le drapeau $2\\R",
		edited = "Nom du drapeau $1 modifié de \"$2\" à \"$3\"\\Y",
	},
	levelnotes = {
		added = "Note de niveau \"$1\" ajoutée\\G",
		removed = "Note de niveau \"$1\" supprimée\\R",
		edited = "Note de niveau \"$1\" modifiée\\Y",
	},
	mde = {
		added = "Entité de métadonnées ajoutée\\G",
		removed = "Entité de métadonnées supprimée\\G",
	},
}



LH = {

-- These are the help articles.

--[[

-------------------------------------------
A T T E N T I O N   T R A N S L A T O R S :
-------------------------------------------


The lines in the help do not automatically wrap, so their lengths should not exceed the width of the window!

Use the following as a ruler:
----------------------------------------------------------------------------------[]-

The scrollbar [] is the limit, however formatting/control characters may cause the line to be smaller/wider.
You can also remember the number 83, when you're in that column, you've reached the limit (subtracting the amount of invisible formatting characters)


If you'd rather not translate the help articles, it's no big deal!


-------------------------------------------


Flags after \:
h - double font size for headers (remember to keep an extra line blank for that)
# - anchor (not yet implemented). There will be a way to switch/link to anchors quickly.
0..9 - display image 0..9 on this line (array index in imgs starts at 0, and remember to keep lines blank to accommodate for the image height)
^ - Put this before the image number, shift image number by 10. So ^4 makes image 14, ^^4 makes image 24. And 3^1^56 makes images 3, 11, 25 and 26.
_ - Put this before the image number to decrease the image number by 10.
> - Put this before the image number to shift further images to the right by 8 pixels. This can be repeated, so 0>>>>1 puts image 0 at x=0 and image 1 at x=32.
< - Same, but shift to the left.
n - normal text
r - red text
g - gray text
w - white text
b - blue text
o - orange text
v - green text
c - Cyan
y - Yellow
p - Purple
V - Dark green
z - black text
Z - dark gray text
C - cyan text (Viridian)
P - pink text (Violet)
Y - yellow text (Vitellary)
R - red text (Vermilion)
G - green text (Verdigris)
B - blue text (Victoria)
& - Interpret next color code as background color instead of text color
l - Link color (not yet supported)
- - Horizontal line
+ - expand background color to end of line
= - underline header (on next line)
) - Return to previous state

Flags can be combined, like \rh or \hr for a red header
Invalid flags will be ignored

1234567890123456789012

Room for 82 characters on a line (85, but the last three characters will have a scrollbar if it is needed. 
----------------------------------------------------------------------------------[]-
]]

{
subj = "Retour",
imgs = {},
cont = [[
\)
]] -- This should be left the same!
},

{
splitid = "010_Getting_started",
subj = "Démarrage",
imgs = {},
cont = [[
Démarrage\wh#
\C=

Cet article va vous aider à prendre Ved en main. Pour commencer à utiliser
l'éditeur, vous devez charger ou créer un niveau.


L'éditeur\h#

Sur le côté gauche, vous trouverez les outils de sélection. La majorité de ces
outils ont des outils subsidiaires qui seront listés sur leur droite. Pour changer
d'outil, utilisez leur raccourci ou utilisez la molette en appuyant sur les
touches Ctrl et Maj. Pour changer d'outil secondaire, utilisez seulement la
molette. Pour plus d'informations sur les outils, veuillez consulter la page
d'aider sur les ¤Outils¤.\nwl
Effectuez un clic droit sur les entités pour faire apparaître un menu contextuel
pour cette entité. Pour supprimer une entité sans utiliser son menu contextuel,
effectuez un clic droit sur celle-ci en appuyant sur la touche Maj.
Sur le côté droit de l'écran, vous trouverez beaucoup de boutons et d'options.
Les boutons supérieurs sont liés au niveau tout entier tandis que les boutons
inférieurs (sous Options de salle) sont spécifiques à la salle courante. Pour plus
d'informations sur ces boutons, veuillez consulter leurs pages d'aide respectives,
si elles sont disponibles.

Dossiers de niveau\h#

Ved utilise normalement le même dossier que VVVVVV utilise pour stocker ses 
niveaux, donc il est facile de passer de l'éditeur de niveau de VVVVVV à Ved et
vice versa. So Ved ne détecte pas votre dossier de VVVVVV correctement, vous
pouvez entrer un chemin personnalisé dans les options de Ved.
]]
},

{
splitid = "020_Tile_placement_modes",
subj = "Modes de placement de tuiles",
imgs = {"autodemo.png", "auto2demo.png", "manualdemo2.png"},
cont = [[
Modes de placement de tuiles\wh#
\C=

Ved supporte trois modes différents pour placer des tuiles.

     Mode automatique\h#0

          Ce mode est le plus facile à utiliser. Dans ce mode, vous pouvez
          ajouter des murs et arrière-plans et les bordures vont être placées
          correctement. Cependant, en utilisant ce mode, tous les murs et
          arrière-plans dans la salle doivent utiliser les mêmes couleurs et
          jeux de tuiles.

     Mode multi-jeu de tuiles\h#1

          Très similaire au mode automatique, mis à part qu'il est possible
          d'utiliser plusieurs jeux de tuiles dans la même salle. Cela veut dire
          que changer un jeu de tuiles n'affectera pas les tuiles de mur et
          d'arrière-plan déjà placées, et multiples types de tuiles peuvent être
          ajoutés dans la même salle.

     Mode manuel\h#2

          Aussi appelé Mode Direct, dans ce mode vous pouvez placer
          n'importe quel tuile manuellement, donc vous n'êtes pas limité par
          les différents groupes dans les jeux de tuiles, et les bords ne seront
          pas ajoutés automatiquement aux murs, vous donnant un contrôle
          complet sur l'aspect de la salle. Cependant, ce mode d'édition est
          plus lent à utiliser.
]]
},

{
splitid = "030_Tools",
subj = "Outils",
imgs = {"tools2/on/1.png", "tools2/on/2.png", "tools2/on/3.png", "tools2/on/4.png", "tools2/on/5.png", "tools2/on/6.png", "tools2/on/7.png", "tools2/on/8.png", "tools2/on/9.png", "tools2/on/10.png", "tools2/on/11.png", "tools2/on/12.png", "tools2/on/13.png", "tools2/on/14.png", "tools2/on/15.png", "tools2/on/16.png", "tools2/on/17.png", },
cont = [[
Outils\wh#
\C=

Vous pouvez utiliser ces différents outils pour remplir les salles de votre
niveau :

\0
   Mur\h#


L'outil de mur peut être utiliser pour placer des murs.

\1
   Arrière-plan\h#


L'outil d'arrière-plan peut être utilisé pour placer des arrière-plans.

\2
   Pointes\h#


L'outil de pointes peut être utiliser pour placer des pointes. Vous pouvez
utiliser le sous-outil d'expansion pour placer des pointes sur un mur en un clic
(ou glissement).

\3
   Médaille\h#


L'outil de médaille peut être utiliser pour placer des médailles. Veuillez noter
qu'il existe une limite de vingt médailles dans un niveau.

\4
   Point de sauvegarde\h#


L'outil de point de sauvegarde peut être utilisé pour placer des points de
sauvegarde.

\5
   Plateforme disparaissante\h#


L'outil de plateforme disparaissante peut être utilisé pour places des plateformes
disparaissantes.

\6
   Tapis roulant\h#


L'outil de tapis roulant peut être utilisé pour placer des tapis roulants.

\7
   Plateforme mobile\h#


L'outil de plateforme mobile peut être utilisé pour placer des plateformes
mobiles.

\8
   Ennemi\h#


L'outil d'ennemi permet de placer des ennemis. La forme et couleur de l'ennemi est
déterminé respectivement par l'option de type d'ennemi et le jeu de tuiles
(couleur).

\9
   Ligne de gravité\h#


L'outil de ligne de gravité permet de placer des lignes de gravité.

\^0
   Texte de salle\h#


L'outil de texte de salle permet de placer du texte.

\^1
   Terminal\h#


L'outil de terminal permet de placer des terminaux. En premier, placer le
terminal, ensuite entrer un nom pour son script. Pour plus d'informations sur la
programmation de script, veuillez référer aux références de programmation de
script.

\^2
   Boite de script\h#


L'outil de boite de script permet de placer des boits de script. Tout d'abord
cliquez sur le coin en haut à gauche, puis en bas à droite et enfin entrez le nom
du script. Pour plus d'informations sur la programmation de script, veuillez
référer aux références de programmation de script.

\^3
   Jeton de téléportation\h#


L'outil de jeton de téléportation peut être utilisé pour placer des jetons de 
téléportation. Tout d'abord cliquez à l'endroit où l'entrée doit être, puis à
l'endroit où la sortie doit être.

\^4
   Ligne de téléportation\h#


L'outil de ligne de téléportation peut être utilisé pour placer des lignes de
téléportation. Veuillez noter que les lignes de téléportation ne peuvent être
placées que sur les bords d'une salle.

\^5
   Équipier\h#


L'outil d'équipier peut être utilisé pour placer des équipiers disparus qui
peuvent être secourus. Si tous les équipiers sont secourus, le niveau est terminé.
Veuillez noter qu'il y a une limite de vingt équipiers dans un niveau.

\^6
   Point de départ\h#


L'outil de point de départ peut être utilisé pour placer le point de départ.
]]
},
{
splitid = "040_Script_editor",
subj = "Éditeur de script",
imgs = {},
cont = [[
Éditeur de script\wh#
\C=

Avec l'éditeur de script, vous pouvez gérer et éditer les scripts de votre niveau.


Noms de drapeaux\h#

Pour un confort et une lisibilité de script, il est possible d'utiliser des noms
de drapeaux plutôt que des nombres. Quand un nombre est utilisé à la place d'un
drapeau, un nombre est automatiquement associé à ce nom en arrière-plan.
Il est alors possible de choisir quel nombre utiliser avec chaque nom de drapeau.

Mode de création de script interne\h#

Pour utiliser un script interne dans Ved, vous pouvez activer le mode de création
de script interne dans l'éditeur pour gérer toutes les commandes de ce script
en tant que script interne. Voir le mode Sc.int¤ pour plus d'informations sur le
mode de création de scripte interne. Pour plus d'informations sur la création de
script interne, veuillez consulter la référence sur la création de script interne.

Séparer les scripts\h#

Il est possible de séparer un script en deux scripts avec l'éditeur de script.
Après avoir placé le curseur de texte sur la première ligne qui doit faire partie
du nouveau script, appuyez sur le bouton Séparer et entrez le nom du nouveau
script. Les lignes avant le curseur resteront dans le script original, et toute
ligne en dessous du curseur seront déplacées dans le nouveau script.

Sauter dans les scripts\h#

Dans les lignes avec les commandes iftrinkets, ifflag, customiftrinkets ou
customifflag, il est possible de sauter dans un script donné en cliquant sur le
bouton "Aller à" quand le curseur est sur cette ligne. Vous pouvez aussi entrer
Alt+Droite¤ pour faire ceci, et vous pouvez utiliser ¤Alt+Gauche¤ pour revenir en\wnw
arrière d'un pas dans la chaîne de scripts dans lesquels vous vous trouviez
précédemment.
]]
},

{
splitid = "050_Int_sc_mode",
subj = "Mode sc.int",
imgs = {},
cont = [[
Mode de création de script interne\wh#
\C=

Pour utiliser le mode de création de script interne dans Ved, vous devez activer
le mode de création de script interne dans l'éditeur afin de gérer toutes les
commandes dans ce script en tant que script interne. Avec cette fonctionnalité,
vous n'avez pas à beaucoup vous soucier de comment faire fonctionner le
script interne; vous n'avez pas à utiliser de commande ¤say¤, de compter les\nw
lignes, d'entrer ¤text(1,0,0,4)¤ ou ¤text,,,,4¤ ou n'importe quelle forme de ces\nwnw
commandes - vous n'avez qu'à écrire vos scripts internes comme s'ils étaient
pour le vrai jeu. Vous n'avez même pas besoin de finir avec une commande
¤loadscript¤.\nw

Ved supporte différentes méthodes de création de script interne. Pour mettre
en évidence leurs différences techniques, nous allons utiliser ce script d'exemple
ci-dessous :

  cutscene()\G
  untilbars()\G
  squeak(player)\G
  text(cyan,0,0,1)\G
  ...\G
  position(player,above)\G
  speak_active\G
  endtext\G
  endcutscene()\G
  untilbars()\G

Les lignes de ce script interne sont en ¤vert clair¤, les lignes qui sont ajoutées\nG
automatiquement et sont nécessaires pour que l'exploit de script fonctionne seront
en ¤gris¤. Veuillez noter que cet exemple a été un peu simplifié; Ved ajoute ¤#v¤\ngnw
à la fin des lignes grises pour être sûr que les scripts modifiés manuellement ne
seront pas changés, et les blocs ¤say¤ qui sont trop grands devront être séparés\nw
en des blocs plus petits.

Pour plus d'informations sur la création de script interne, veuillez vous référer
à la référence sur la création de script interne.

Sc.int loadscript\h#

La méthode loadscript est probablement la méthode la plus utilisée aujourd'hui.
C'est la méthode que Ved a supporté depuis sa version alpha.

Elle requiert un script supplémentaire, le script de chargement, pour charger le
script interne. Le script de chargement, dans sa forme la plus basique, doit
contenir une commande telle que ¤iftrinkets(0,yourscript)¤, mais il y a d'autres\nw
commandes utilisables à sa place, et vous pouvez aussi utiliser ¤ifflag¤ à la place\nw
de ¤iftrinkets¤. Le plus important est que votre script interne doit être chargé\nw
depuis un autre script pour qu'il fonctionne.

Le script interne serait converti plus ou moins en tant que ceci :

  squeak(off)\g
  say(11)\g
  cutscene()\G
  untilbars()\G
  squeak(player)\G
  text(cyan,0,0,1)\G
  ...\G
  position(player,above)\G
  speak_active\G
  endtext\G
  endcutscene()\G
  untilbars()\G
  loadscript(stop)\g
  text(1,0,0,3)\g

text(1,0,0,3)¤ doit être la dernière ligne, ou dans l'éditeur de script de VVVVVV,\w
il doit y avoir exactement une ligne vide après le script.

Il est aussi possible de ne pas utiliser ¤squeak(off)¤ et d'utiliser ¤text(1,0,0,4)\nwnw
au lieu de ¤text(1,0,0,3)¤. Cependant, utiliser ¤squeak(off)¤ permet de raccourcir le\nwnw
script de quelques lignes dans un script plus long.

Sc.int say(-1)\h#

La commande say(-1) est plus ancienne et a un désavantage comparé à la méthode
loadscript: elle fait toujours apparaître les barres qui apparaissent lors d'une
cinématique. Cependant, elle a aussi un avantage qui peut être important dans des
niveaux avec beaucoup de scripts: elle n'a pas besoin de script de chargement.
Nous pouvons enlever les commandes ¤cutscene()¤ et ¤untilbars()¤ de ce script car\nwnw
celles-ci seront déjà automatiquement ajoutées par VVVVVV lorsqu'on utilise cette
méthode.

  squeak(off)\g
  say(-1)\g
  text(1,0,0,3)\g
  say(9)\g
  squeak(player)\G
  text(cyan,0,0,1)\G
  ...\G
  position(player,above)\G
  speak_active\G
  endtext\G
  endcutscene()\G
  untilbars()\G
  loadscript(stop)\g

Cette méthode a été ajoutée en tant que méthode de création de script interne
supplémentaire dans Ved 1.6.0.
]]
},

{
splitid = "060_Shortcuts",
subj = "Raccourcis clavier",
imgs = {},
cont = [[
Raccourcis clavier de l'éditeur\wh#
\C=

La majorité des raccourcis clavier utilisable dans VVVVVV peuvent être
utilisés dans Ved.

F1¤  Changer de jeu de tuiles\C
F2¤  Changer de couleur\C
F3¤  Changer d'ennemi\C
F4¤  Limites des ennemis\C
F5¤  Limites des plateformes\C

F10¤  Mode manuel/automatique (mode direct/mode indirect)\C

W¤  Changer la direction de la téléportation\C
E¤  Changer le nom de la salle\C

L¤  Charger carte\C
S¤  Sauver carte\C

Z¤  Pinceau 3x3 (murs et arrière-plans)\C
X¤  Pinceau 5x5 (")\C

< ¤et¤ >¤  Changer d'outil\CnC
Ctrl/Cmd+< ¤et¤ Ctrl/Cmd+>¤  Changer d'outil secondaire\CnC

Plus de raccourcis clavier\h#

Ved introduit aussi quelques raccourcis clavier.

Éditeur principal\gh#

Ctrl+P¤  Aller à la salle contenant le point de départ\C
Ctrl+S¤  Sauvegarde rapide\C
Ctrl+X¤  Couper la salle dans le presse-papier\C
Ctrl+C¤  Copier la salle dans le presse-papier\C
Ctrl+V¤  Coller la salle depuis le presse-papier (si elle est valide)\C
Ctrl+D¤  Comparer ce niveau avec un autre niveau\C
Ctrl+Z¤  Défaire\C
Ctrl+Y¤  Refaire\C
Ctrl+F¤  Recherche\C
Ctrl+/¤  Bloc-notes du niveau\C
Ctrl+F1¤  Aide\C
(NOTE: Sur Mac, replacer Ctrl par Cmd)
N¤  Afficher tous les nombres de tuiles\C
J¤  Afficher la solidité des tuiles\C
M¤  Afficher la carte\C
Q¤  Aller à la salle (entrer les coordonnées avec 4 chiffres)\C
/¤  Scripts\C
[¤  Bloquer la position Y de la souris tant qu'elle est appuyée\C
   (pour dessiner des lignes horizontales facilement)
]¤  Bloquer la position X de la souris tant qu'elle est appuyée\C
   (pour dessiner des lignes verticales facilement)
F11¤  Recharger les jeux de tuiles et images\C

Entités\gh#

Maj+Clic droit¤  Supprimer l'entité\C
Alt+Clic¤        Déplacer l'entité\C
Alt+Maj+Clic¤    Copier l'entité\C

Éditeur de script\gh#

Ctrl+F¤  Chercher\C
Ctrl+G¤  Aller à la ligne\C
Ctrl+I¤  Activer/Désactiver le mode de création de script interne\C
Alt+droite¤  Sauter dans le script de la commande conditionnelle\C
Alt+gauche¤  Sauter dans le script précédent\C

Liste de scripts\gh#

N¤  Créer un nouveau script\C
F¤  Aller dans la liste de drapeaux\C
/¤  Aller dans le script tout en haut\C
]]
},

{
splitid = "070_Simp_script_reference",
subj = "Référence script simple",
imgs = {},
cont = [[
Référence de création de script simple\wh#
\C=

Le langage de création d'un script simplifié de VVVVVV est un langage basique
qui peut être utilisé pour utiliser des scripts dans des niveaux VVVVVV.
Note: quand quelque chose est entre des guillemets, ceux-ci doivent être enlevés.


say¤([lignes[,couleur]] .. "]]" .. [[)\h#w

Affiche une boite de dialogue. Sans aucun argument, cette fonction créée
une boite de dialogue avec une seule ligne, et ressemblera à une boite de
dialogue centrée de terminal par défaut. L'argument couleur peut être une
couleur ou le nom d'un équipier.
Si vous utilisez une couleur et un équipier secourable de cette couleur
est dans la salle, alors la boite de dialogue sera affichée au dessus de
cet équipier.

reply¤([lignes])\h#w

Affiche une boite de dialogue pour Viridian. Sans aucun argument, cette
fonction créée une boite de dialogue avec une seule ligne.

delay¤(n)\h#w

Retarde la prochaine action par n trames. 30 trames fait presque une seconde.

happy¤([équipier])\h#w

Rend un équipier heureux. Sans argument, cette fonction rendre Viridian heureux.
Vous pouvez aussi utiliser "all", "everyone" ou "everybody" comme argument pour
rendre tout le monde triste.

sad¤([équipier])\h#w

Rend un équipier triste. Sans argument, cette fonction rendre Viridian triste.
Vous pouvez aussi utiliser "all", "everyone" ou "everybody" comme argument pour
rendre tout le monde triste.

flag¤(drapeau,on/off)\h#w

Allume ou éteint un drapeau donné. Par exemple, flag(4,on) allumera le
drapeau 4.
Il y a 100 drapeaux, numérotés de 0 à 99.
Par défaut, tous les drapeaux sont éteints quand on démarre un niveau.
Note: Dans Ved, vous pouvez aussi utiliser les noms de drapeaux au lieu
de nombres.

ifflag¤(drapeau,nom de script)\h#w

Si un drapeau donné est ALLUMÉ, exécuter le script ayant comme nom 
nom de script.
Si un drapeau donné est ÉTEINT, continuer dans ce script.
Exemple :
ifflag(20,cutscene) - Si le drapeau 20 est ALLUMÉ, exécuter le script
                      "cutscene", sinon on continue dans ce script.
Note: Dans Ved, vous pouvez aussi utiliser les noms de drapeaux au lieu
de nombres.

iftrinkets¤(nombre,nom de script)\h#w

Si votre nombre de médailles >= nombre, exécuter le script ayant pour
nom nom de script.
Si votre nombre de médailles < nombre, continuer dans ce script.
Exemple :
iftrinkets(3,enoughtrinkets) - Si vous avez 3 médailles ou plus, le script
                               "enoughtrinkets" sera exécuté, sinon ce
                               script sera continué.
Une pratique répandue est d'utiliser 0 comme nombre minimum de
médailles afin de charger un script dans tous les cas.

iftrinketsless¤(nombre,nom de script)\h#w

Si votre nombre de médailles < nombre, exécuter le script ayant pour
nom nom de script.
Si votre nombre de médailles >= nombre, continuer dans ce script.

destroy(objet)\h#w

Les arguments valides peuvent être :
warptokens : Supprime tous les jetons de téléportation de la salle jusqu'à que
vous y entrez une nouvelle fois.
warptokens : Supprime toutes les lignes de gravité de la salle jusqu'à que
vous y entrez une nouvelle fois.
L'option "platforms" existe aussi, mais elle ne marche pas correctement.

music¤(index)\h#w

Change la musique en une autre en utilisant l'index de la chanson.
Pour une liste d'index des chansons, veuillez vous référer à l'article
"Référence de listes".

playremix\h#w

Joue le remix de Predestined Fate en tant que chanson.

flash\h#w

Éclaire l'écran en blanc, émet un son de détonation et fait trembler l'écran
pour un court moment.

map¤(on/off)\h#w

Active (on) ou désactive (off) la carte. Si la carte est désactivée, elle
affichera "NO SIGNAL" jusqu'à ce qu'elle soit activée une nouvelle fois.
Les salles seront toujours découvertes pendant que la carte est désactivée
et seront visibles quand la carte sera activée.

squeak¤(équipier/on/off)\h#w

Fait couiner un équipier, ou active (on) / désactive (off) le couinement lorsqu'une
boite de dialogue est affichée.

speaker¤(couleur)\h#w

Change la couleur et la position des prochaines boites de dialogue créées
avec la commande "say". Cette commande peut être utilisée à la place de
donner un second argument à "say".
]]
},

{
splitid = "080_Int_script_reference",
subj = "Référence script int.",
imgs = {},
cont = [[
Référence de création de script interne\wh#
\C=

La création de script interne donne plus de pouvoir au scripteur, mais c'est
aussi un peu plus compliqué que la création de script simplifié.

Pour utiliser la création de script interne dans Ved, vous pouvez activer le
mode de création de script interne dans l'éditeur afin de gérer toutes les
commandes dans ce script en tant que commandes de script interne.

Codage de couleurs: \w
Normal - Devrait être sûr, dans le pire des cas VVVVVV va planter car vous avez fait
         une erreur.
Bleu¤   - Certaines de ces commandes ne marchent pas dans un niveau\b
         personnalisé, d'autres ne font aucun sens dans un niveau personnalisé,
         ou sont seulement à moitié utile car elles ont surtout été pensées pour
         le jeu principal.
Orange¤ - Celles-ci marchent et normalement rien ne devrait mal se passer, à\o
         moins que vous leur donnez des arguments spécifiques qui peuvent
         effacer votre sauvegarde.
Rouge¤  - Les commandes rouges ne doivent pas être utilisées dans un niveau\r
         personnalisé car elles vont soit débloquer certaines parties du jeu
         principal (ce qui n'est pas le genre de chose que vous voulez qu'un
         niveau personnalisé ne fasse, même si tout le monde a complété le
         jeu) ou complètement corrompre votre sauvegarde.


squeak¤(couleur)\w#h

Émet un couinement depuis un équipier, ou un son de terminal.

couleur - cyan/player/blue/red/yellow/green/purple/terminal

text¤(couleur,x,y,lignes)\w#h

Sauvegarde une boite de dialogue en mémoire avec une couleur, une position
et un nombre de lignes. Normalement, la commande de position est utilisée
après la commande de texte (et ses lignes de texte), ce qui écrase les
coordonnées données ici, donc elles sont usuellement laissées à 0.

couleur - cyan/player/blue/red/yellow/green/purple/gray
x - La position x de la boite de dialogue
y - La position y de la boite de dialogue
lignes - Le nombre de lignes

position¤(x,y)\w#h

Écrase les valeurs x,y d'une commande de texte, fixant la position de la boite
de dialogue.

x - center/centerx/centery ou un nom de couleur
cyan/player/blue/red/yellow/green/purple
y - Seulement utilisé si x est un nom de couleur. Peut prendre comme
valeur above (au-dessus)/below (au-dessous)

endtext\w#h

Force une boite de dialogue à disparaître (en fondu)

endtextfast\w#h

Force une boite de dialogue à disparaître immédiatement (sans fondu)

speak\w#h

Affiche une boite de dialogue sans enlever les anciennes. Pause aussi le script
jusqu'à ce que vous appuyez sur la touche d'action (à moins que la commande
backgroundtext soit au-dessus de celle-ci)

speak_active\w#h

Affiche une boite de dialogue, et supprime toute autre boite de dialogue. Pause
aussi le script jusqu'à ce que vous appuyez sur la touche d'action (à moins que
la commande backgroundtext soit au-dessus de celle-ci)

backgroundtext\w#h

Si vous ajoutez cette commande au-dessus de speak ou speak_active, le jeu
n'attendra pas que vous appuyer sur la touche d'action après avoir créé la boite
de dialogue. Cette commande peut être utilisée pour afficher plusieurs boites de
dialogue en même temps.

changeplayercolour¤(couleur)\w#h

Change la couleur du joueur

couleur - cyan/player/blue/red/yellow/green/purple/teleporter

restoreplayercolour¤()\w#h

Restaure la couleur du joueur par défaut (cyan)

changecolour¤(a,b)\w#h

Change la couleur d'un équipier (note: cette commande ne marque qu'avec les
équipiers créés via la commande createcrewman)

a - Couleur de l'équipier à changer cyan/player/blue/red/yellow/green/purple
b - Nouvelle couleur de l'équipier

alarmon\w#h

Active l'alarme

alarmoff\w#h

Désactive l'alarme

cutscene¤()\w#h

Affiche les barres de cinématique

endcutscene¤()\w#h

Fais disparaître les barres de cinématique

untilbars¤()\w#h

Attend que cutscene()/endcutscene() soit terminé

customifflag¤(n,script)\w#h

Même comportement que ifflag(n,script) dans un script simplifié

ifflag¤(n,script)\b#h

Même comportement que customifflag mais charge un script interne
(du jeu principal)

loadscript¤(script)\b#h

Charge un script interne (du jeu principal). Souvent utilisé dans des niveaux
personnalisés en tant que loadscript(stop)

iftrinkets¤(n,script)\b#h

Même comportement que iftrinkets(n,script) dans un script simplifié,
mais exécute un script interne (du jeu principal)

iftrinketsless¤(n,script)\b#h

Même comportement que iftrinkets(n,script) dans un script simplifié,
mais exécute un script interne (du jeu principal)

customiftrinkets¤(n,script)\w#h

Même comportement que iftrinkets(n,script) dans un script simplifié

customiftrinketsless¤(n,script)\w#h

Même comportement que iftrinketsless(n,script) dans un script simplifié
(mais rappelez-vous que cette fonction ne marche pas)

createcrewman¤(x,y,couleur,humeur,ia1,ia2)\w#h

Créée un équipier (non secourable)

humeur - 0 pour heureux, 1 pour triste
ia1 - followplayer/followpurple/followyellow/followred/followgreen/followblue
      faceplayer/panic/faceleft/faceright/followposition,ia2
ia2 - Position X requise si followposition est utilisé pour ia1

createentity¤(x,y,n,meta1,meta2)\o#h

Créée une entité, veuillez vous référencer à la référence de listes
pour les index d'entités

n - L'index d'entité

vvvvvvman¤()\w#h

Rend le joueur énorme

undovvvvvvman¤()\w#h

Fait revenir le joueur à la normale

hideplayer¤()\w#h

Rend le joueur invisible

showplayer¤()\w#h

Rend le joueur visible

gamestate¤(x)\o#h

Change l'état de jeu à l'index d'état spécifié

gamemode¤(x)\b#h

teleporter pour afficher la carte, game pour la cacher (affiche les téléporteurs du
jeu principal)

x - teleporter/game

blackout¤()\w#h

Rend l'écran noir / bloque l'écran

blackon¤()\w#h

Annule la commande blackout() et revient à la normale

fadeout¤()\w#h

Rend l'écran noir en fondu

fadein¤()\w#h

Affiche l'écran en fondu

befadein¤()\w#h

Affiche l'écran instantanément sans fondu après un appel à la
commande fadeout()

untilfade¤()\w#h

Attend que fadeout()/fadein() soit terminé

gotoroom¤(x,y)\w#h

Change la salle courante à x,y, avec x et y commençant à 0

x - Coordonnée x de la salle, commence à 0
y - Coordonnée y de la salle, commence à 0

gotoposition¤(x,y,f)\w#h

Change la position de Viridian à x,y dans cette salle, et f indique s'il est à
l'envers ou non (1 si à l'envers, 0 si à l'endroit)

f - 1 si à l'envers, 0 si à l'endroit (vous pouvez aussi utiliser gotoposition(x,y),
dans ce cas-ci la gravité du joueur ne sera pas changée par défaut)

flash¤(x)\w#h

Rend l'écran blanc, vous pouvez changer le temps pendant lequel l'écran doit
être blanc (flash tout seul ne marchera pas, vous devez utiliser flash(5) avec
playef(9) et shake(20) si vous voulez un flash normal)

x - Le nombre de trames. 30 trames fait presque une seconde.

play¤(x)\w#h

Joue la chanson ayant l'identifiant de chanson interne donné.

x - Index de chanson interne

jukebox¤(x)\w#h

Rend un terminal jukebox blanc et désactive la couleur de tous les autres
terminaux (dans un niveau personnalisé, on dirait que cette commande
ne fait qu'enlever la couleur blanche de tous les terminaux actifs).

musicfadeout¤()\w#h

Termine la musique en fondu.

musicfadein¤()\w#h

Opposé de musicfadeout() (n'a pas l'air de fonctionner)

stopmusic¤()\w#h

Arrête la musique immédiatement. Équivalent de music(0) dans un script simplifié.

resumemusic¤()\w#h

Opposé de stopmusic() (n'a pas l'air de fonctionner)

playef¤(x,n)\w#h

Joue un effet sonore.

n - Actuellement non utilisé, et peut être omis. Dans VVVVVV 1.x, cet argument
permettait de contrôler le temps en millisecondes auquel le son devait
commencer.

changemood¤(couleur,humeur)\w#h

Change l'humeur d'un équipier (marche seulement sur les équipiers créés
avec la commande createcrewman)

couleur - cyan/player/blue/red/yellow/green/purple
humeur - 0 pour heureux, 1 pour triste

everybodysad¤()\w#h

Rend tout le monde triste (marche seulement pour les équipiers créés avec la
commande createcrewman et le joueur)

changetile¤(couleur,tuile)\w#h

Change la tuile d'un équipier (vous pouvez la changer en n'importe quelle image
dans sprites.png, et cette commande marche seulement sur les équipiers via
avec la commande createcrewman)

couleur - cyan/player/blue/red/yellow/green/purple/gray
tuile - Index de la tuile

face¤(a,b)\w#h

Force la tête d'un équipier a à regarder l'équipier b (fonctionne seulement pour
les équipiers créés via la commande createcrewman)

a - cyan/player/blue/red/yellow/green/purple/gray
b - pareil

companion¤(x)\b#h

Force l'équipier spécifié en tant que compagnon (d'après mes souvenirs,
il me semble que cette commande dépend de la position sur la carte)

changeai¤(équipier,ia1,ia2)\w#h

Change la direction dans laquelle l'équipier regarde ou son comportement
de marche

équipier - cyan/player/blue/red/yellow/green/purple

ia1 - followplayer/followpurple/followyellow/followred/followgreen/followblue
      faceplayer/panic/faceleft/faceright/followposition,ia2
ia2 - Position X requise si followposition est utilisé pour ia1

changedir¤(couleur,direction)\w#h

Comme changeai(couleur,faceleft/faceright), cette fonction change la
direction du regard d'un équipier.

couleur - cyan/player/blue/red/yellow/green/purple
direction - 0 est gauche, 1 est droite

walk¤(direction,x)\w#h

Force le joueur à marcher pour un certain nombre de trames

direction - left (gauche) / right (droite)

flipgravity¤(couleur)\w#h

Change la gravité d'un équipier (peut ne pas marcher sur le joueur)

couleur - cyan/player/blue/red/yellow/green/purple

flipme\w#h

Corrige la position verticale de plusieurs boites de dialogues en mode
inversé

tofloor\w#h

Force le joueur à inverser sa gravité vers le sol s'il est inversé.

flip\w#h

Retourne le joueur

foundtrinket¤(x)\w#h

Force la récupération d'une médaille

x - Index de la médaille

runtrinketscript\b#h

Joue Passion For Exploring?

altstates¤(x)\b#h

Change l'agencement de quelques salles, telles que la salle des médailles
dans le vaisseau ou l'entrée du laboratoire (les niveaux personnalisés ne
supportent pas du tout altstates)

createlastrescued¤(x,y)\b#h

Créée le dernier équipier secouru à la position x,y (?)

rescued¤(couleur)\b#h

Force la rescousse d'un équipier

missing¤(couleur)\b#h

Force la disparition d'un équipier

finalmode¤(x,y)\b#h

Vous téléporte dans la Dimension Externe VVVVVV, (46,54) est la première
salle du dernier niveau

setcheckpoint¤()\w#h

Créée un point de sauvegarde à la position actuelle

textboxactive\w#h

Supprime toutes les boites de dialogue à l'écran sauf la dernière que vous
avez créée

ifexplored¤(x,y,script)\w#h

Si la salle x+1,y+1 est explorée, exécuter le script (interne) script

iflast¤(équipier,script)\b#h

Si le dernier équipier secouru est x, exécuter le script script

équipier - Des index sont utilisés ici: 2: Vitellary, 3: Vermillion, 4: Verdigris, 5
Victoria (Je ne connais pas les index pour Viridian et Violet)

ifskip¤(x)\b#h

Si vous passez les cinématiques en Mode Sans Mort, exécuter le
script x

ifcrewlost¤(équipier,script)\b#h

Si l'équipier est manquant, exécuter le script donné

showcoordinates¤(x,y)\w#h

Montre les coordonnés x,y sur la carte (Cette commande marche pour la
carte d'un niveau personnalisé)

hidecoordinates¤(x,y)\w#h

Cache les coordonnés x,y sur la carte (Cette commande marche sur la
carte d'un niveau personnalisé)

showship\w#h

Affiche le vaisseau sur la carte

hideship\w#h

Cache le vaisseau sur la carte

showsecretlab\w#h

Affiche le laboratoire secret sur la carte

hidesecretlab\w#h

Cache le laboratoire secret sur la carte

showteleporters¤()\b#h

Affiche les téléporteurs sur la carte (Je suppose que cette commande affiche
seulement le téléporteur dans Space Station 1)

hideteleporters¤()\b#h

Cache les téléporteurs sur la carte

showtargets¤()\b#h

Affiche les cibles sur la carte (téléporteurs inconnus affichés en
tant que ?s)

hidetargets¤()\b#h

Cache les cibles sur la carte

showtrinkets¤()\b#h

Affiche les médailles sur la carte

hidetrinkets¤()\b#h

Cache les médailles sur la carte

hascontrol¤()\w#h

Rend le contrôle au joueur, cependant cette commande ne marche pas au
milieu d'un script

nocontrol¤()\w#h

Contraire de hascontrol()

specialline¤(x)\b#h

Dialogue spéciaux qui n'apparaissent que dans le jeu principal

destroy¤(x)\w#h

Même comportement que la commande dans un script simplifié

x - gravitylines/warptokens/platforms

delay¤(x)\w#h

Même comportement que la commande dans un script simplifié

flag¤(x,on/off)\w#h

Même comportement que la commande dans un script simplifié

telesave¤()\r#h

Sauvegarde votre partie (dans la sauvegarde de téléporteur normale,
donc ne l'utilisez pas!)

createactivityzone¤(couleur)\b#h

Créée une zone dans laquelle le joueur peut être qui dira "Press ACTION to
talk to (Équipier)"

createrescuedcrew¤()\b#h

Créée tous les équipiers secourus

trinketyellowcontrol¤()\b#h

Dialogue de Vitellary quand il vous donne une médaille dans le jeu de base

trinketbluecontrol¤()\b#h

Dialogue de Victoria quand elle vous donne une médaille dans le jeu de base

rollcredits¤()\r#h

Affiche les crédits de fin. Cette commande détruit votre sauvegarde après
que les crédits de fin soient finis!

teleportscript¤(script)\b#h

Utilisé pour déterminer quel script est utilisé lorsqu'un téléporteur est
utilisé

clearteleportscript¤()\b#h

Supprime le script de téléportation instauré précédemment avec
teleporterscript(x)

moveplayer¤(x,y)\w#h

Déplace le joueur x pixels à droite et y pixels en bas. Vous pouvez bien sûr
utiliser des valeurs négatives pour le déplacer en haut ou à gauche

do¤(n)\w#h

Commence une boucle de code qui va s'effectuer n fois

loop\w#h

Ajoutez cette commande à la fin d'une boucle de code

leavesecretlab¤()\b#h

Désactive le "Mode laboratoire secret"

shake¤(n)\w#h

Fait trembler l'écran pour n trames. Cette commande ne délayera pas
les commandes suivantes.

activateteleporter¤()\w#h

S'il y a un téléporteur dans la salle, il deviendra blanc et le toucher ne
détruira pas votre sauvegarde. Peut ne pas fonctionner s'il y a plusieurs
téléporteurs.

customposition¤(x,y)\w#h

Remplace les valeurs x,y d'une commande de texte et par conséquent change la
position de la boite de dialogue, mais pour les équipiers, les équipiers à secourir
sont utilisés pour positionner la boite de dialogue à la place des équipiers créés
via la commande createentity.

x - center/centerx/centery, ou un nom de couleur
cyan/player/blue/red/yellow/green/purple (secourable)
y - Seulement utilisé si x est un nom de couleur. Peut prendre comme
valeur above (au-dessus)/below (au-dessous)

custommap¤(on/off)\w#h

La variante interne de la commande map

trinketscriptmusic\w#h

Joue Passion For Exploring sans aucun argument (?)

startintermission2\w#h

Fonctionne comme la commande finalmode(46,54), et téléporte le
joueur dans le dernier niveau sans argument. Plante le jeu en mode
chronométré.

resetgame\w#h

Réinitialise toutes les médailles, les équipiers collectés et les drapeaux, et
téléporte le joueur vers le dernier point de sauvegarde.

redcontrol\b#h

Commence une conversation avec Vermilion comme si vous venez de le
rencontrer dans le jeu principal et vous venez d'appuyer sur la touche
ENTREE. Créée aussi une zone d'activité après l'exécution.

greencontrol\b#h

Commence une conversation avec Verdigris comme si vous venez de le
rencontrer dans le jeu principal et vous venez d'appuyer sur la touche
ENTREE. Créée aussi une zone d'activité après l'exécution.

bluecontrol\b#h

Commence une conversation avec Victoria comme si vous venez de la
rencontrer dans le jeu principal et vous venez d'appuyer sur la touche
ENTREE. Créée aussi une zone d'activité après l'exécution.

yellowcontrol\b#h

Commence une conversation avec Vitellary comme si vous venez de le
rencontrer dans le jeu principal et vous venez d'appuyer sur la touche
ENTREE. Créée aussi une zone d'activité après l'exécution.

purplecontrol\b#h

Commence une conversation avec Violet comme si vous venez de la
rencontrer dans le jeu principal et vous venez d'appuyer sur la touche
ENTREE. Créée aussi une zone d'activité après l'exécution.

foundlab\b#h

Jour l'effet sonore 3, affiche la boite de dialogue "Congratulations! You
have found the secret lab!" Cette commande ne finit pas le texte, et n'a
aucun autre effet indésirable.

foundlab2\b#h

Affiche la seconde boite de dialogue que vous pouvez voir après avoir
découvert le laboratoire secret. Cette commande ne finit pas non plus le
texte, et n'a aucun autre effet indésirable.

entersecretlab\r#h

Débloque le laboratoire secret pour le jeu principal, ce qui n'est
probablement pas quelque chose qu'un niveau personnalisé devrait
faire. Active le mode laboratoire secret.
]]
},

{
splitid = "090_Lists_reference",
subj = "Référence listes",
imgs = {},
cont = [[
Références des listes

Ce qui suit sont des listes d'index utilisés dans VVVVVV, en grande majorité
copiées depuis des postes de forums. Un grand merci à tout ceux qui ont
assemblé ces listes!


Index\w&Z+
\&Z+
#Index de musiques (script simplifié)\C&Z+l
#Index de musiques (script interne)\C&Z+l
#Index d'effets sonores\C&Z+l
#Entités\C&Z+l
#Couleurs pour les équipiers créés via createentity()\C&Z+l
#Type de mouvement des ennemis\C&Z+l
#États de jeu\C&Z+l


Index de musiques (script simplifié)\h#

0 - Silence (pas de musique)
1 - Pushing Onwards
2 - Positive Force
3 - Potential For Anything
4 - Passion For Exploring
5 - Presenting VVVVVV
6 - Predestined Fate
7 - Popular Potpourri
8 - Pipe Dream
9 - Pressure Cooker
10 - Paced Energy
11 - Piercing The Sky

Index de musiques (script externe)\h#

0 - Path Complete (niveau complété)
1 - Pushing Onwards
2 - Positive Force
3 - Potential For Anything
4 - Passion For Exploring
5 - Pause
6 - Presenting VVVVVV
7 - Plenary
8 - Predestined Fate
9 - ecroF evitisoP
10 - Popular Potpourri
11 - Pipe Dream
12 - Pressure Cooker
13 - Paced Energy
14 - Piercing The Sky
15 - Remix de Predestined Fate

Index d'effets sonores\h#

0 - Retourner vers le plafond
1 - Retourner vers le sol
2 - Pleur
3 - Médaille collectée
4 - Pièce collectée
5 - Point de sauvegarde touché
6 - Sable mouvant rapide touché
7 - Sable mouvant lent touché
8 - Ligne de gravité touchée
9 - Flash
10 - Téléportation
11 - Couinement de Viridian
12 - Couinement de Verdigris
13 - Couinement de Victoria
14 - Couinement de Vitellary
15 - Couinement de Violet
16 - Couinement de Vermilion
17 - Terminal touché
18 - Téléporteur touché
19 - Alarme
20 - Couinement de terminal
21 - Compte à rebours mode chronométré "3", "2", "1"
22 - Compte à rebours mode chronométré "Go!"
23 - VVVVVV Man cassant des murs
24 - Équipiers (dé)fusionnant en VVVVVV Man
25 - Nouveau record dans Super Gravitron
26 - Nouveau trophé dans Super Gravitron
27 - Équipier secouru (dans un niveau personnalisé)

Entités\h#

0 - The player
1 - Enemy
    Metadata: movement type, movement speed
    Due to lacking needed data, you will only ever get a purple enemy box, unless
    you're in the VVVVVV polar dimension while doing the command
2 - Moving platform
    Metadata: movement type, movement speed
    Note that conveyors are implemented as moving platforms, see movement type 8
    and 9.
3 - A disappearing platform
4 - A 1x1 quicker quicksand block
5 - A flipped Viridian, you will flip gravity when touched
6 - Weird red flashy thingy that disappears quickly
7 - Same as above, but doesn't flash and is colored cyan
8 - A coin from the prototype
    Metadata: Coin ID
9 - Trinket
    Metadata: Trinket ID
    Note that trinket ID start at 0, and everything above 19 will not be saved in
    the savefile once you restart the level
10 - Checkpoint
     Metadata: Checkpoint state (0=flipped, 1=normal), Checkpoint ID (checks if
     the checkpoint is active or not)
11 - Horizontal gravity line
     Metadata: Length in pixels
12 - Vertical gravity line
     Metadata: Length in pixels
13 - Warp token
     Metadata: Destination in tiles X axis, destination in tiles Y axis
14 - The round teleporter
     Metadata: Checkpoint ID(?)
15 - Verdigris
     Metadata: AI state
16 - Vitellary (flipped)
     Metadata: AI state
17 - Victoria
     Metadata: AI state
18 - Crewmate
     Metadata: Color (using raw color list, not the crewmate colors), mood
19 - Vermilion
     Metadata: AI state
20 - Terminal
     Metadata: Sprite, Script ID(?)
21 - Same as above but when touched the terminal doesn't light up
     Metadata: Sprite, Script ID(?)
22 - Collected trinket
     Metadata: Trinket ID
23 - Gravitron square
     Metadata: Direction
     If you input negative X coordinate (or too high), an arrow shows instead,
     just like in the real Gravitron
24 - Intermission 1 crewmate
     Metadata: Raw color, mood
     Doesn't seem to be affected by hazards, but should be.
25 - Trophy
     Metadata: Challenge identifier, sprite
     If the challenge is completed, the base sprite ID (what you get if you use
     sprite=0) will change. Only use 0 or 1 if you want predictable results
     (0=normal, 1=flipped)
26 - The warp token to the Secret Lab
     Keep in mind that the warp is just implemented as a nice looking sprite.
     You'll have to script the functionality for yourself
55 - Rescueable crewmate
     Metadata: Crewmate color. Color >6 will always show a *happy* Viridian
56 - Custom level enemy
     Metadata: Movement type, movement speed
     Keep in mind that if there's no enemies in the room, the enemy sprite data
     isn't updated correctly and it will just show what enemy you saw last time,
     or a square enemy
Undefined entities (27-50, 57+) give glitchy Viridians.

Colors for createentity() crewmates\h#

0: Cyan
1: Flashy red (used for death)
2: Dark orange
3: Trinket color
4: Gray
5: Flashy white
6: Red (tiny bit darker than Vermilion)
7: Lime green
8: Hot pink
9: Brilliant yellow
10: Flashy white
11: Bright cyan
12: Blue, same as Victoria
13: Green, same as Verdigris
14: Yellow, same as Vitellary
15: Red, same as Vermilion
16: Blue, same as Victoria
17: Lighter orange
18: Gray
19: Darker gray
20: Pink, same as Violet
21: Lighter gray
22: White
23: Flashy white
24-29: White
30: Gray
31: Dark, slightly purplish gray?
32: Dark cyan/green
33: Dark blue
34: Dark green
35: Dark red
36: Dull orange
37: Flashy gray
38: Gray
39: Darker cyan/green
40: Flashier gray
41-99: White
100: Dark gray
101: Flashy white
102: Teleporter color
103 and onwards: White

Enemy movement types\h#

0 - Bouncing up and down, starts down.
1 - Bouncing up and down, starts up.
2 - Bouncing left and right, starts left.
3 - Bouncing left and right, starts right.
4, 7, 11 - Moves right until collision.
5 - Same as above, only acts weird when it collides.
    GIF here: ¤https://files.catbox.moe/c23ovl.gif\nCl
6 - Bouncing up and down, but only reaches a certain y position before going back
    down. Used in "Trench warfare".
8, 9 - For moving platforms they're conveyors, and they're still for anything else
14 - Able to be blocked by disappearing platforms
15 - Still (?)
10, 12 - Clones right/in the same spot, crashes VVVVVV if it gets too intense, and
         will corrupt your level if you save.
13 - Like 4, but moves down until collision.
16 - Flashes in and out of existence. (Appears and disappears)
17 - Jittery movement left
18 - Jittery movement right, little bit faster
19+ - Still (?)

Gamestates\h#

0 - Break out from most gamestates
1 - Set gamestate to 0 (i.e. same as above in practice)
2 - "To do: write quick intro to story!"
4 - "Press arrow keys or WASD to move"
5 - Runs the script "returntohub" (i.e. fadeout, teleport to right before The
    Tower, fadein, play Passion for Exploring)
7 - Removes textboxes
8 - "Press enter to view map and quicksave"
9 - Super Gravitron
10 - Gravitron
11 - "When you're NOT standing on stop and wait for you" (Tries to access flipmode
     check to write "the ceiling" or "the floor", and check crewmate, but as this
     fails, the above prints instead)
12 - "You can't continue to the next room until he is safely accross."
13 - Removes textboxes quickly
14 - "When you're standing on the floor," (the same applies here as for 11)
15 - Makes Viridian happy
16 - Makes Viridian sad
17 - "If you prefer, you can press UP or DOWN instead of ACTION to flip."
20 - If flag 1 is 0, set flag 1 to 1 and remove textboxes
21 - If flag 2 is 0, set flag 2 to 1 and remove textboxes
22 - "Press ACTION to flip"
30 - "I wonder why the ship teleported me here alone?" "I hope everyone else got
     out ok..."
31 - "Violet, is that you?" cutscene (as long as flag 6 is 0)
32 - If flag 7 is 0: "A teleporter!" "I can get back to the ship with this!"
33 - If flag 9 is 0: Victoria-cutscene
34 - If flag 10 is 0: Vitellary-cutscene
35 - If flag 11 is 0: Verdigris-cutscene
36 - If flag 8 is 0: Vermilion-cutscene
37 - Vitellary after gravitron
38 - Vermilion after gravitron
39 - Verdigris after gravitron
40 - Victoria after gravitron
41 - If flag 60 is 0: run the beginning of intermission 1 cutscene
42 - If flag 62 is 0: run the 3rd intermission 1 cutscene
43 - If flag 63 is 0: run the 4th intermission 1 cutscene
44 - If flag 64 is 0: run the 5th intermission 1 cutscene
45 - If flag 65 is 0: run the 6th intermission 1 cutscene
46 - If flag 66 is 0: run the 7th intermission 1 cutscene
47 - If flag 69 is 0: "Ohh! I wonder what that is?" trinket cutscene
48 - If flag 70 is 0: "This seems like a good place to store anything I find out
     there..." (Victoria not found yet)
49 - If flag 71 is 0: Play Predestined Fate
50 - "Help! Can anyone hear this message?"
51 - "Verdigris? Are you out there? Are you ok?"
52 - "Please help us! We've crashed and need assistance!"
53 - "Hello? Anyone out there?"
54 - "This is Doctor Violet from the D.S.S. Souleye! Please respond!"
55 - "Please... Anyone..."
56 - "Please be alright, everyone..."
With gamestate 50-56, you can choose where to start, because everything will
     appear after each other
80 - If screen is black (and only if), continue to state 81 (My guess is that this
     is called when ESC is pressed, before the pause menu opens)
81 - Go back to the main menu
82 - Results of time trial (bugged)
83 - If screen is back, continue to state 84
84 - Results of time trial (I think 82 works better than 84)
85 - The Time Trial version of gamestate 200 (Flash, play Positive Force, turn on
     finalstretch mode)
States 90-95 are time trial related, but doesn't work properly in custom levels.
     The only real effects that happens in custom levels is a warp, and music
     change
90 - Space Station 1
91 - The Laboratory
92 - Warp Zone
93 - The Tower
94 - Space Station 2
95 - Final Level
96 - If the screen is black, continue to state 97
97 - Exit from Super Gravitron (teleport and play Pipe Dream)
100 - If flag 4 is 0: continue to state 101
101 - If you are flipped, flip back to floor, continue to state 102
The following states (102-112) try to go to the current state + 1, like in 50-56
      (but doesn't loop around), but may glitch as half of the states (103, 105,
      107, 109, 111) doesn't exist.
102 - Verdigris: "Captain! I've been so worried!"
104 - "I'm glad you're ok!"
106 - "I've been trying to find a way out, but I keep going around in circles..."
108 - "Don't worry! I have a teleporter key!"
110 - "Follow me!"
112 - Removes textboxes
115 - Essentially nothing, continue to state 116
116 - Red dialog at the bottom of the screen saying "Sorry Eurogamers! Teleporting
      around the map doesn't work in this version!", continue to state 117, which
      doesn't exist, so things may fail
118 - Removes textboxes
State 120-128 work a bit like 102-112, i.e. in a series, but with less broken
      things
120 - If flag 5 is 0: continue to state 121
121 - If you're on the floor, flip.
122 - Vitellary: "Captain! You're ok!"
124 - Vitellary: "I've found a teleporter, but I can't get it to go anywhere..."
126 - "I can help with that!"
128 - "I have the teleporter codex for our ship!"
130 - "Yey! Let's go home!"
132 - Removes textboxes
200 - Final mode
1000 - Turns on cutscenebars, freezes the game, continue to state 1001
1001 - You got a shiny trinket! dialog (but you didn't actually get any, this is
       just called each time you get one), continue to state 1003
1003 - Revert game to normal
1010 - You found a crewmate! in the same manner as for trinkets
2000 - Save the game
2500-2509 - Perform a teleport to some weird non-existent location, supposedly to
            The Laboratory I guess, continue to state 2510
2510 - Viridian: "Hello?", continue to state 2512
2512 - Viridian: "Is anybody there?", continue to state 2514
2514 - Removes textboxes, play Potential For Anything
3000-3099 states:
3000-3005 - Level Complete! You've rescued the crewmate applied to companion(),
            defaults to Verdigris. 6=Verdigris, 7=Vitellary, 8=Victoria,
            9=Vermilion, 10=Viridian (yes, really), 11=Violet (Gamestates:
            3006-3011=Verdigris, 3020-3026=Vitellary, 3040-3046=Victoria,
            3060-3066=Vermilion, 3080-3086=Viridian, 3050-3056=Violet)
3070-3072 - Perform postrescue things, usually return to ship
3501 - Game Complete
4010 - Flash + warp
4070 - The Final Level, but the game will crash when you reach Timeslip (Because
       of how the game gets entity information, which is broken in custom levels)
4080 - Captain teleported back to the ship: "Hello!" [C[C[C[C[Captain!] cutscene +
       credits.
       The above will mess up your save data so don't do it unless you backed up!
4090 - Cutscene after you complete space station 1
]]
},

{
splitid = "100_Formatting",
subj = "Formatting",
imgs = {},
cont = [[
Formatting\wh#
\C=

In notes you can use formatting codes to make your text larger, color it, and some
other things. To add formatting to a line, add a backslash (\) at the end of it.\
After the \, you can add any amount of the following characters, in any order:\

h - Double font size\h

# - Anchor. You can jump to anchors quickly with ¤#Links¤links¤.\nLCl
- - Horizontal line:
\-
= - Horizontal line underneath large text

Text colors:\h#

n - Normal\n
r - Red\r
g - Gray\g
w - White\w
b - Blue\b
o - Orange\o
v - Green\v
c - Cyan\c
y - Yellow\y
p - Purple\p
V - Dark green\V
z - Black¤ (background color is not included)\z&Z
Z - Dark gray\Z
C - Cyan (Viridian)\C
P - Pink (Violet)\P
Y - Yellow (Vitellary)\Y
R - Red (Vermilion)\R
G - Green (Verdigris)\G
B - Blue (Victoria)\B


Example:\h#

\-
Large orange text ("oh" has same result)\ho\
\
Large orange text ("oh" has same result)\ho

\-
Underlined large text\wh\
\r=\
\
Underlined large text\wh
\r=
\-

Using multiple colors on a line\h#

It is possible to use multiple colors on a line by separating colored parts with
the¤ ¤¤ ¤character (which you can type using the ¤Insert¤ key), and putting the color\nYnw
codes in order after¤ \¤. If the last color on the line is the default color (n), it\nC
is not necessary to list that at the end. If you want to use the¤ ¤¤ ¤character on a\nY
line which uses¤ \¤, write¤ ¤¤¤¤ ¤instead. For technical reasons, it is n¤o§¤t possible to\nCnYnR(
color a single character by enclosing it in two¤ ¤¤§¤s, unless you also include a\nY(
space or another character.

\-
You can ¤¤color¤¤ specific ¤¤words¤¤ with this!\nrnv\
\
You can ¤color¤ specific ¤words¤ with this!\nrnv
\-
Some ¤¤te¤¤xt¤¤ co¤¤lo¤¤rs\RYGCBP\
\
Some ¤te¤xt¤ co¤lo¤rs\RYGCBP
\-

Coloring a single character\h#

OK, I lied, it is possible to color a single character without including a space.
To do this, put the character¤ § ¤(which you can type using ¤Shift+Insert¤), after\nYnw
the character you want to color, and enable it with the formatting code¤ ( ¤after¤ \¤:\nCnC

\-
You can c¤¤o§¤¤lor a ¤¤single¤¤ character like this!\nrny(\
\
You can c¤o§¤lor a ¤single¤ character like this!\nrny(
\-

This is not necessary if the single character is the first or last on a line.

Background colors\h#

Not only can text be colored, it can also be ¤highlighted¤ in any of the text\nZ&y
colors. To do this, you can put¤ & ¤after the regular text color code, and then a\nY
color code for the background color. This can be done in combination with the ¤
system described above, note that regular text colors start the next "block",
but background colors do not. The following examples use spaces to make everything
more readable, but this is completely optional. You can use the code¤ + ¤to expand\nY
the (last) background color to the end of the line.

\-
Black text on white background!\z&w\
\
Black text on white background!\z&w
\-
Black text on expanded white background!\z&w+\
\
Black text on expanded white background!\z&w+
\-
Red on yellow¤¤, ¤¤Black on white¤¤ (optionally spaces improve readability)\r&y n z&w\
\
Red on yellow¤, ¤Black on white¤ (optionally spaces improve readability)\r&y n z&w
\-
This still ¤¤works¤¤ to color si¤¤n§¤¤gle characters\n P n n&r (\
\
This still ¤works¤ to color si¤n§¤gle characters\n P n n&r (
\-

If you like, you can also make graphics using background colors:

\-
 ¤¤        \n n&C\
          \&C\
   ¤¤  ¤¤  ¤¤  ¤¤ \&C n n&C n n&C\
   ¤¤  ¤¤  ¤¤  ¤¤ \&C n n&C n n&C\
          \&C\
          \&C\
   ¤¤      ¤¤ \&C n n&C\
    ¤¤    ¤¤  \&C n n&C\
 ¤¤        \n n&C\
   ¤¤    \n n&C\
\
 ¤        \n n&C
          \&C
   ¤  ¤  ¤  ¤ \&C n n&C n n&C
   ¤  ¤  ¤  ¤ \&C n n&C n n&C
          \&C
          \&C
   ¤      ¤ \&C n n&C
    ¤    ¤  \&C n n&C
 ¤        \n n&C
   ¤    \n n&C
\-
          \&o\
 ¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ \&o n&z n&w n&z n&w n&z n&w n&z n&w n&o(\
 ¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ \&o n&w n&z n&w n&z n&w n&z n&w n&z n&o(\
 ¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ \&o n&z n&w n&z n&w n&z n&w n&z n&w n&o(\
 ¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ \&o n&w n&z n&w n&z n&w n&z n&w n&z n&o(\
 ¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ \&o n&z n&w n&z n&w n&z n&w n&z n&w n&o(\
 ¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ \&o n&w n&z n&w n&z n&w n&z n&w n&z n&o(\
 ¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ \&o n&z n&w n&z n&w n&z n&w n&z n&w n&o(\
 ¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ §¤¤ \&o n&w n&z n&w n&z n&w n&z n&w n&z n&o(\
          \&o\
\
          \&o
 ¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ \&o n&z n&w n&z n&w n&z n&w n&z n&w n&o(
 ¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ \&o n&w n&z n&w n&z n&w n&z n&w n&z n&o(
 ¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ \&o n&z n&w n&z n&w n&z n&w n&z n&w n&o(
 ¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ \&o n&w n&z n&w n&z n&w n&z n&w n&z n&o(
 ¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ \&o n&z n&w n&z n&w n&z n&w n&z n&w n&o(
 ¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ \&o n&w n&z n&w n&z n&w n&z n&w n&z n&o(
 ¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ \&o n&z n&w n&z n&w n&z n&w n&z n&w n&o(
 ¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ §¤ \&o n&w n&z n&w n&z n&w n&z n&w n&z n&o(
          \&o
\-

Links\h#

Links can be used for two things: linking to somewhere else in the articles/notes,
or linking to websites. Links use the semi-color code¤ l¤. This code does not switch\nY
to the next "colored block", it only applies to the current one, as opposed to
regular (non-background) color codes. It also does not change color, so you can
change the style of the link to anything you want.

You can link to articles by simply using the name of the article:

\-
Tools\bl\
\
Tools\bl
\-

Clicking the "Tools" above will bring you to the Tools help article. I used the
color code¤ b ¤here to make the link blue, and as you can see, the¤ l ¤applies to\nbnY
that same colored part.

You can link to anchors in the same article by linking to a¤ # ¤followed by all text\nY
on that line. (Instances of¤ ¤¤ ¤are completely ignored there.) You can link to the\nY
top of the article with just a hash character (¤#§¤).\nY(

\-
#Using multiple colors on a line\bl\
\
#Using multiple colors on a line\bl
\-

You can link to an anchor in a different article in a similar way:

\-
Lists reference#Gamestates\bl\
\
Lists reference#Gamestates\bl
\-

Linking to websites is straightforward too:

\-
https://example.com/\bl\
\
https://example.com/\bl
\-

You can use a color block with color code¤ L ¤that contains the actual destination\nY
before the link text, and make the link show a different text that way:

\-
Tools¤¤Go to another article\Lbl\
\
Tools¤Go to another article\Lbl
\-
Click ¤¤Tools¤¤here¤¤ to go to another article\nLbl\
\
Click ¤Tools¤here¤ to go to another article\nLbl
\-
[¤¤#Links¤¤Like¤¤] [¤¤#Example:¤¤Dislike¤¤]\n L vl n L rl\
\
[¤#Links¤Like¤] [¤#Example:¤Dislike¤]\n L vl n L rl
\-
#Links¤¤ Button A ¤¤ §¤¤#Links¤¤ Button B \L w&Zl n L w&Z l(\
\
#Links¤ Button A ¤ §¤#Links¤ Button B \L w&Zl n L w&Z l(
\-

Images (only available in plugin\h#
\
descriptions):\h

0..9 - display image 0..9 on this line (array index in the imgs array starts at 0,
       and remember to keep lines blank to accommodate for the image height)
^ - Put this before the image number, shift image number by 10. So ^4 makes image
    14, ^^4 makes image 24. And 3^1^56 makes images 3, 11, 25 and 26.
_ - Put this before the image number to decrease the image number by 10.
> - Put this before the image number to shift further images to the right by 8
    pixels. This can be repeated, so 0>>>>1 puts image 0 at x=0 and
    image 1 at x=32.
< - Same, but shift to the left.
]]
},

{
splitid = "990_Credits",
subj = "Remerciements",
imgs = {"credits.png"},
cont = [[
\0















Remerciements\wh#
\C=

Ved a été créé par Dav999

Autres contributeurs de code: Info Teddy

Quelques graphismes et la police ont été créés par Hejmstel

Traduction en russe: CreepiX, Cheep
Traduction en esperanto: Hejmstel
Traduction en allemand: r00ster
Traduction en français: RhenaudTheLukark


Remerciements spéciaux à :\h#


Terry Cavanagh pour avoir créé VVVVVV

Tous ceux qui ont signalé des bogues, qui ont eu des idées et qui m'ont motivé à
créer ce logiciel!
\
\




Licence\h#
\
Droit d'auteur 2015-2019  Dav999       (Je n'affirme pas la possession ou le droit
                                             d'auteur de VVVVVV ou d'aucune de ses
                                                                      ressources.)
\
Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:
\
1. Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice, this
list of conditions and the following disclaimer in the documentation and/or other
materials provided with the distribution.
\
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
]] -- NOTE: Do not translate the license!  Congratulations for reaching the end!
},

}
