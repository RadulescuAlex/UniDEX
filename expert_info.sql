-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2021 at 01:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expert_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `id` int(11) NOT NULL,
  `domain` text NOT NULL,
  `word` text NOT NULL,
  `explication` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `domain`, `word`, `explication`) VALUES
(27, 'drept', 'Drept', 'noțiunea juridică de Drept reprezintă totalitatea regulilor și normelor juridice care reglementează conduita oamenilor în relațiile sociale, într-o colectivitate politic determinată, susceptibile de a fi impuse prin forța coercitivă a statului. Tot prin Drept este desemnată și știința care studiază aceste reguli și norme juridice.'),
(28, 'drept', 'Drept obiectiv', 'ansamblul tuturor normelor juridice cuprinse în acte normative care reglementează raporturile sociale și care pot să fie sau să nu mai fie în vigoare. Orice lege dată pentru a reglementa conduita umană face parte din dreptul obiectiv. Dreptul obiectiv (norma agendi) este alcătuit din: dreptul pozitiv (totalitatea normelor juridice aflate în vigoare pe teritoriul unui stat și nu numai - a se vedea în cest sens dreptul Uniunii Europene, un drept pozitiv sui generis) și din dreptul negativ (totalitatea normelor juridice ieșite din vigore).'),
(29, 'drept', 'Drept subiectiv', 'prerogativă a subiectului de drept de a acţiona într-un anume fel şi de a pretinde o anumită conduită din partea celorlalte subiecte, folosind la nevoie forţa de constrângere a statului'),
(30, 'drept', 'Constitutie', ' legea fundamentală a unui stat în care sunt consemnate principiile de bază ale organizării lui, drepturile și îndatoririle fundamentale ale cetățenilor.'),
(31, 'drept', 'Tipuri de legi', 'Parlamentul adopta 3 tipuri de legi : constitutionale, organice si ordinare. '),
(32, 'drept', 'Lege organica', 'reglementează un număr limitat de aspecte importante privind statul. Printre domeniile rezervate legii organice se numără sistemul electoral, funcționarea partidelor politice, organizarea referendumului, starea de asediu și starea de urgență, legislația privind raporturile de muncă, statutul minorităților.'),
(33, 'drept', 'Lege ordinara', 'orice lege care nu se incadreaza in domeniile prevazute expres pentru legea organica'),
(34, 'drept', 'Ordonanta de urgenta', 'act normativ emis de Guvern în situații extraordinare a căror reglementare nu poate fi amânată. Acest tip de act normativ constituie o formă prin care puterii executive din România (guvernului) i se atribuie drept legislativ, în speță acelea de a da legi, pe care în mod normal doar parlamentul are dreptul sa le adopte.'),
(35, 'drept', 'Ramura de drept', 'grupare mai larga de norme si institutii juridice care sunt legate intre ele prin obiectul lor comun (un anumit complex de relatii sociale pe care le reglementeaza), prin anumite principii comune care stau la baza lor, precum si prin unitatea de metoda folosita in reglementarea relatiilor sociale respective, potrivit intereselor din societatea respectiva.'),
(36, 'drept', 'Drept penal', 'ramură a sistemului de drept, alcătuit din totalitatea normelor juridice legiferate de puterea legislativă, care stabilesc ce fapte constituie infracțiuni, condițiile răspunderii penale, sancțiunile și alte măsuri ce urmează a fi aplicate sau luate de către instanțele de judecată persoanelor care au săvârșit infracțiuni, în scopul apărării celor mai importante valori sociale ale statului de drept.'),
(37, 'drept', 'Drept civil', 'ramură de drept ce reglementează relațiile social-patrimoniale și nepatrimoniale stabilite între persoane fizice și/sau juridice ce se află pe poziții de egalitate juridică, chiar când una dintre părți este statul (ca persoană privată și nu ca autoritate publică).'),
(38, 'drept', 'Drept material', 'stabilește drepturile și obligațiile părților în cauză.'),
(39, 'drept', 'Drept procesual', 'specifică practica, procedura și mecanismele de impunere a drepturilor și îndatoririlor.'),
(40, 'drept', 'Nulitate', 'sancţiune civilă care constă în desfiinţarea retroactivă a unui act juridic încheiat cu încălcarea dispoziţiilor legale.'),
(41, 'drept', 'Nulitate absoluta', 'sancţionează nerespectarea, la încheierea actului juridic civil, a unei norme juridice care ocroteşte un interes general, deci a unei norme juridice imperative de ordine publică, desigur, care instituie o condiţie de validitate pentru încheierea actului juridic.'),
(42, 'drept', 'Nulitate relativa', 'sancţionează nerespectarea, la încheierea actului juridic civil, a unei norme juridice care ocroteşte un interes individual (particular), deci a unei norme juridice imperative de ordine privată, care instituie o condiţie de validitate pentru încheierea actului juridic.'),
(43, 'drept', 'Actio libera in causa', 'situaţia în care, la momentul comiterii acţiunii autorul nu era responsabil, dar la un moment anterior, când a fost responsabil, a provocat în mod intenţionat sau din culpă cauza viitoarei sale iresponsabilităţi.'),
(44, 'drept', 'Legitima aparare', 'se află în legitimă apărare, acela care săvârşeşte fapta pentru a înlătura un atac material, direct, imediat şi injust, îndreptat împotriva sa sau a unui interes obştesc şi care pune în pericol grav persoana sau drepturile celui atacat ori interesul obştesc.'),
(45, 'drept', 'Stare de necesitate', 'cauză generală care înlătură caracterul penal al faptei constând în existenţa unui pericol iminent care, neputând fi înlăturat altfel, constrânge o persoană să comită o faptă prevăzută de legea penală, pentru a salva astfel, de la acel pericol, viaţa, integritatea corporală sau sănătatea sa, a altuia sau un bun important al său ori al altuia sau un interes public.'),
(46, 'drept', 'Actiune de partaj', 'acţiune civilă prin care se pune capăt stării de coproprietate sau stării de indivi-ziune şi care constă în împărţirea materială a bunului sau bunurilor comune între coproprietari (sau coindivizari), fiecare dintre aceştia devenind proprietar exclusiv asupra unei părţi determinate ori asupra unui bun din acelea care se aflau în coproprietate.'),
(47, 'drept', 'Aberratio ictus', 'expresie folosită pentru a denumi una dintre cauzele care generează infracţiunea deviată. Se are în vedere ipoteza în care datorită unei mânuiri greşite a mijloacelor de comitere a infracţiunii, s-a deviat acţiunea către alt obiect, obţinându-se un alt rezultat decât acela urmărit de autor. Autorul acestui comportament va răspunde penal pentru infracţiunea comisă, latura subiectivă fiind identică cu cea de la care s-a deviat.'),
(48, 'medicina', 'Absorbția intestinală', 'proces fiziologic complex prin care produsii finali de digestie, apa, sărurile minerale și vitaminele sau alte substanțe (cum ar fi medicamentele) trec prin mucoasa intestinală și ajung in mediul intern (în sânge sau în limfă).'),
(49, 'medicina', 'Abdomen', 'partea corpului la om și la mamifere cuprinsă între pelvis și cutia toracică. Funcțional, în interiorul abdomenului se află cea mai mare parte a organelor ce se ocupă cu digestia și absorbția alimentelor.'),
(50, 'medicina', 'Pelvis', 'derivat din cuvântul latin pentru „bazin”, este o structură anatomică sub formă de pâlnie, întâlnită la cele mai multe vertebrate.'),
(51, 'medicina', 'Cutie toracică ', 'parte din schelet, format din coaste, stern și o parte din coloana vertebrală. Cavitatea interioară formată de thorax se numește în latină Cavum thoracis. În cavitatea toracică se află ca organe principale inima și pulmonul (plămânul). Cavitatea toracică este separată de cavitatea abdominală prin diafragmă, care este mușchiul respirator principal.'),
(52, 'medicina', 'Acid ascorbic', 'acid organic cu proprietăți antioxidante. Apare sub forma unei pudre sau unor cristale albe spre galben deschis. Este solubil în apă. Enantiomerul L al acidului ascorbic este cunoscut sub numele comun de vitamina C.'),
(53, 'medicina', 'Acid pangamic', 'ester care se extrage din germenii și tărâța de orez, din semințele de cais precum și din drojdia de bere. Acidul pangamic, cunoscut și ca vitamina B15 are rolul de activare a proceselor metabolice oxidative la nivel celular, are efect detoxifiant și de refacere a respirației celulare.'),
(54, 'medicina', 'Boala infectioasa', '(boală contagioasă, boală comunicabilă, boală transmisibilă, boală infecto-contagioasă, boală molipsitoare), este cauzată de un agent biologic (virus, bacterie, parazit mono sau multicelular, ciupercă, insectă, sau prion - un peptid, o fracțiune de proteină) față de care organismul atacat, în cadrul unui complex de împrejurări, nu este capabil să se apere. Bolile infecțioase afectează omul, animalele, plantele, insectele, chiar și bacteriile (viruși bacterieni). Ele pătrund în corp prin anumite „porți de intrare”, fiind transmise direct, de la persoană la persoană, sau prin vectori.'),
(55, 'medicina', 'Vase capilare', 'cele mai mici vase sangvine din sistemul circulator. Având grosimea de o singură celulă, ele realizează schimbul de substanțe dintre sânge și țesuturi. În diametru au circa 5-10 μm. Contactul dintre capilare și vene sau artere nu se face direct, ci prin intermediul venulelor (între vene și capilare) și a arteriolelor (între artere și capilare).'),
(56, 'medicina', 'Deltoid', ' mușchi așezat în regiunea umărului, fiind situat imediat sub piele. Este cel mai superficial și mai voluminos dintre mușchii umărului. Are formă triunghiulară, cu baza în sus și vârful în jos, și acoperă articulația scapulohumerală anterior, posterior, superior și lateral. El dă forma rotunjită a umărului, formând în partea laterală relieful lui. Este un mușchi cărnos, gros cu fibrele convergente inferior.'),
(57, 'medicina', 'Dislexia', 'deficit de un anume grad, în recunoașterea și înțelegerea textelor scrise de mână sau tipărite. Totodată prezintă o lecturare lentă, greoaie, cu poticniri și chiar blocaje în citire. Această deficiență poate fi sesizată în jurul vârstei de 6-7 ani, când apare de asemenea și însușirea cititului. Copilul evită lecturarea și ezită să citească cu voce tare. Dislexia este o deficiență de învățare frecventă care împiedică dezvoltarea capacității de a citi. Cititul nu este un act primordial la om. El trebuie învățat. Pacienții cu dislexie nu au un nivel mai scăzut de inteligență și nu învață mai greu alte lucruri în afară de citit. Totuși, incapacitatea de a citi repede sau fluent poate face multe arii de studiu greu de urmat.'),
(58, 'medicina', 'Electrocardiograma', 'înregistrare a activității electrice a fibrelor musculare ale inimii. Fiecare contracție a miocardului este urmarea unei excitații electrice care provine de la nodulul sinusal și transmis musculaturii inimii. Aceste modificări ale potențialelor electrice ale inimii se pot măsura la suprafața organismului, fiind prezentate printr-o imagine repetată a activității cardiace electrice. Cu ajutorul electrocardiogramei se pot enunța o serie de proprietăți și boli ale inimii.'),
(59, 'medicina', 'Fimoza', 'afecțiune medicală ce împiedică retragerea completă a prepuțului la baza glandului la băieți sau la persoane adulte.'),
(60, 'medicina', 'Farmacopee', 'manual utilizat în practica farmaceutică. Acesta cuprinde substanțele medicamentoase și excipienții care intră în compoziția medicamentelor, formulele de preparare și conservare, cât și îndrumările privind întrebuințarea, controlul calității și purității medicamentelor. Fiecare descriere a unui produs se numește monografie.'),
(61, 'medicina', 'Ginecologie', 'ramura medicinei care se ocupă cu fiziologia și tratarea afecțiunilor aparatului genital feminin.'),
(62, 'medicina', 'Hematologie', 'ramura medicinei interne care se ocupă cu sângele, organele care îl produc și bolile acestuia. Hematologia include studiul etiologiei, diagnosticării, tratării, identificării posibilelor complicații si profilaxiei bolilor sangvine. Medicul de laborator este cel care realizează toate testele necesare studiului sângelui.'),
(63, 'medicina', 'Infarct miocardic', 'întreruperea fluxului sangvin la nivelul unei porțiuni a cordului, ce determină moartea celulelor miocardice. Cel mai frecvent se produce prin obstrucția unei artere coronare în urma rupturii unei plăci de aterom, care este un depozit de lipide și celule albe (în special macrofage) la nivelul peretelui arterial. Ischemia (reducerea fluxului sangvin) și hipoxia rezultate, netratate în timp util, duc la moartea (necroza) mușchiului inimii (miocardului).'),
(64, 'medicina', 'Neuron', 'clasă de celule specifice pentru sistemul nervos. Neuronul este, de fapt, o celulă adaptată la recepționarea și transmiterea informației, unitatea elementară (celulară), embriologică, anatomică, funcțională, trofică și metabolică a sistemului nervos.'),
(65, 'medicina', 'Ibuprofen', 'antiinflamator nesteroidian din clasa derivaților de acid propionic, utilizat ca antiinflamator,analgezic și antipiretic.'),
(66, 'medicina', 'Patologia', 'partea medicinei care se ocupă cu etiologia (cauzele), patogeneza (fenomenele, mecanismele patologice) de decurgere a bolii, mai precis cu simptomele (semnele) sau grupului de simptome (sindroame) a bolii, precum și urmările acestora asupra organismului.'),
(67, 'medicina', 'Antebrat', 'partea intermediară a membrului superior uman, localizat între cot și încheietura mâinii.'),
(68, 'inginerie', 'Armatura', 'bara, de regula din otel, folosita pentru armarea betonului.Betonul are rezistenta mica la intindere, ca urmare armatura se dispune de regula in zonele intinse pentru a prelua eforturile de intindere (armatura longitudinala). Barele de armatura se pot dispune si in zonele comprimate sau supuse la forta taietoare, iar in cazul etrierilor ele asigura rolul de confinare.'),
(69, 'inginerie', 'Aderenta', 'efectul prin care mortarul dezvolta o rezistenta la intindere la suprafata de contact cu blocurile de zidarie.'),
(70, 'inginerie', 'Beton', 'material preparat din ciment, agregate (nisip si pietris), apa si aditivi (in special in cazul betonului preparat la statie)'),
(71, 'inginerie', 'Capacitate portanta', 'sarcina maxima pe care o poate prelua un sistem constructiv sau un element de constructie.'),
(72, 'inginerie', 'Carbonatarea betonului', 'proces de reactie a pietrei de ciment cu dioxidul de carbon (CO2) in timp, care conduce la scaderea alcalinitatii betonului, prin trasformarea hidroxidului de calciu [Ca(OH)2] in carbonat de calciu (CaCO3).'),
(73, 'inginerie', 'Confinarea betonului', 'amplasarea perimetrala a armaturii in sectiunea de beton in vederea limitarii deformatiilor transversale ale elementului de constructie.'),
(74, 'inginerie', 'Cota de fundare', 'distanta masurata de la nivelul terenului pana la partea cea mai de jos a fundatiei (talpa fundatiei).'),
(75, 'inginerie', 'Liant', 'material natural sau artificial care au proprietatea de a lega intre ele materialele granulare in vederea obtinerii unor conglomerate artificiale.'),
(76, 'inginerie', 'Lucrabilitate', 'masura a consistentei (vascozitatii) betonului prospat care se masoara prin utilizarea asa numitului con de tasare; o fluiditate mai mare usureaza pomparea si inglobarea armaturilor, iar una mai scazuta duce in general la rezistente mai mari.'),
(77, 'inginerie', 'Sprit', 'primul strat al tencuielii realizat din mortar fluid (consistenta 11-13 cm). Spritul (denumit si strat de amorsa) trebuie sa asigure o aderenta foarte buna la stratul suport.'),
(78, 'inginerie', 'Rost de lucru', 'zona aparuta ca urmare a intreruperii betonarii, pentru care exista reguli de plasare (in functie de elementul de constructie). Inainte de reluarea betonarii, aceste zone se prelucreaza pentru asigurarea aderentei cu stratul de beton urmator.'),
(79, 'inginerie', 'Pardoseala', 'element de constructie interior cu rol de asigurare a unei suprafete pentru circulatie.'),
(80, 'inginerie', 'Normativ in constructii', 'set de reguli si prevederi obligatorii, stabilite pe categorii de lucrari (de exemplu: pentru producerea betonului).'),
(81, 'inginerie', 'Permeabilitatea betonului', 'proprietate a betonului de a lasa sa treaca prin el apa, aer, radiatii etc. Cu cat permeabilitatea betonului la apa este mai mica, cu atat rezistenta lui la inghet/dezghet, penetrare agenti externi s.a. este mai mare. De regula, cantitatea mai mare de ciment si raportul apa/ciment mai mic conduc la micsorarea permeabilitatii (in conditiile punerii in opera corecte a betonului).'),
(82, 'inginerie', 'Inginer', 'persoană cu o pregătire tehnică - teoretică și practică, obținută într-un institut de învățământ superior, care practică ingineria.  Spre deosebire de oamenii de știință, care studiază natura și fenomenele naturale pentru a stabili principii, axiome și teoreme, inginerii aplică principiile teoretice din matematică, fizică și chimie pentru a crea un produs concret, ca de exemplu un rulment sau o tastatură de telefon.'),
(83, 'inginerie', 'Strung', 'mașină-unealtă folosită pentru prelucrarea suprafețelor de revoluție, a suprafețelor plane frontale, a suprafețelor elicoidale - filete, în care piesa de prelucrat execută mișcarea principală de rotație, iar scula execută mișcările de avans rectilinii. Scula așchietoare este un cuțit de strung. Utilizând diferite tipuri de scule se pot efectua și alte operații, ca de exemplu găurire, adâncire cu adâncitor, alezare cu alezor, filetare cu tarod sau filieră, zimțuire, rectificare etc.'),
(84, 'inginerie', 'Batiu', 'construcție de oțel sau de fontă pe care se montează mecanismele unui sistem tehnic stabil și prin intermediul căreia acesta se poate fixa pe o fundație, pe un teren etc.'),
(85, 'inginerie', 'Freza', 'este o unealtă așchietoare, cu unul sau cu mai multe tăișuri, dispuse simetric în jurul unui ax și având o mișcare de rotație, folosită la prelucrarea unor materiale dure ca metal, lemn, os ș.a.'),
(86, 'inginerie', 'Poanson', 'unealtă construită dintr-o tijă de oțel sau de alt metal dur, de formă conică, triunghiulară etc., cu vârful gravat în relief, care servește la perforarea sau la marcarea prin presare a unor obiecte de metal, la confecționarea unor matrițe, la baterea medaliilor etc.'),
(89, 'litere', 'Lingvistica', 'stiință care studiază limba și legile ei de dezvoltare'),
(90, 'litere', 'Lingvistică generala', 'domeniu al lingvisticii care studiază limba din punctul de vedere al trăsăturilor ei generale, de mijloc de comunicare specific omului'),
(91, 'litere', 'Lingvistică diacronică', 'studiu al faptelor de limbă privite în evoluția lor. Lingvistică sincronică = studiu al faptelor de limbă așa cum se prezintă ele la un moment'),
(92, 'litere', 'Acceptabilitate', 'noţiunea  de  acceptabilitate  se  referă  la  receptor,  reprezintă  unul  din standardele  textualităţii  şi  se  conformează  sistemului  şi  CŢ,  în detrimentul  CS.  Se  află  în  relaţie  de  reciprocitate  cu  noţiunea  de intenţionalitate.  Un  text  coeziv  şi  coerent  trebuie  acceptat  ca  atare pentru  a  putea  fi  utilizat  în  procesul  interactiv  al  comunicării.  În lingvistica aplicată, noţiunea de acceptabilitate depinde de diverşi factori, dintre care cel mai important este cel gramatical. Există diferite grade de acceptabilitate a unui text sau a unui enunţ.'),
(93, 'litere', 'Adaos', 'trecerea de la implicit la explicit, dar are şi accepţia, mai răspândită, de surplus de informaţie, de explicitare a elipselor ori de inserţie gramaticală obligatorie'),
(94, 'litere', 'Aluzie', 'sintagmă sau frază în care este menţionată o idee, amintit un gând sau un eveniment, în scopul de a sugera indirect un eveniment similar de care este legat, cu care semnifică, care îl completează etc.'),
(95, 'litere', 'Ambiguitate', 'intervine  atunci  când  contextul  verbal  este  insuficient pentru a conferi cuvintelor un sens, o semnificaţie contextuală univocă. '),
(96, 'litere', 'Anafora', 'procedeu retoric constând în repetarea unui cuvânt/grup de cuvinte la începutul unor enunţuri succesive pentru a reliefa expresia repetată, ceea ce  produce  o  emfază,  o  exagerare  prin  procedeul  amplificării  ritmice.'),
(97, 'litere', 'Autor', 'termenul este folosit pentru a desemna producătorul (emiţătorul) unui text, discurs sau enunţ ce va fi supus sau nu unui transfer interlingvistic şi  cultural.  Autorul  produce  un  text  care  vehiculează  un  sens  sau  mai multe sensuri, un mesaj care îmbracă o anumită formă. Atât autorul cât şi TS sunt determinaţi de o serie de factori lingvistici şi extralingvistici, factori care marchează şi construirea sensului.'),
(98, 'litere', 'Barbarism', 'in sens general, greşeală de limbă comisă de un străin. Este o eroare lexicală  ce  constă  în  crearea  unor  cuvinte  noi  sau  în  alterarea  unora existente sub influenţa unei alte limbi.'),
(99, 'litere', 'Bilingvism', 'se referă la indivizii care  vorbesc efectiv două limbi, cel puţin pe parcursul unui anumit timp şi, folosind una dintre ele, se lasă influenţaţi de cealaltă.'),
(100, 'litere', 'Calitatea textului-tinta', 'pentru a asigura calitatea TŢ, traducătorul privilegiază, după necesităţi, sursa,  finalitatea,  forma  ori  destinatarul.  Codul  unei  bune  traduceri pragmatico-utilitare  va  privilegia  întotdeauna  utilitatea  (funcţie  a finalităţii) în dauna fidelităţii, deoarece un TŢ bine tradus înseamnă, în cazul traducerii textelor neliterare, un text în care adaptarea s-a realizat în  funcţie  de  cerinţele  şi  aşteptările  cititorului.'),
(101, 'litere', 'Camp semantic', 'ansamblul  unităţilor  lexicale  (semne lingvistice) care denotă concepte înrudite, guvernate la rândul lor de un singur  concept  (un  hiperonim).  De  exemplu  câmpul  semantic  al cuvântului  fruct:  lămâie,  portocală,  măr,  mură,  prună  etc.'),
(102, 'litere', 'Catafora', 'principiu general al lingvisticii enunţiative, opus anaforei, dar cu care, în strânsă  legătură,  asigură  corelaţia.  Procedeu  care  constă  în  a  anunţa printr-un fragment de discurs, un element cataforic (înlocuitor, substitut) o parte a contextului ce urmează a fi introdus.'),
(103, 'litere', 'Intentia traducatorului', 'rezultatul cognitiv şi emoţional pe care  traducătorul îl produce asupra cititorului său prezumtiv. Acest rezultat poate fi similar celui scontat de autor sau poate fi, involuntar sau nu, modificat de traducător, în funcţie de condiţiile de receptare a TŢ.'),
(104, 'litere', 'Intentionalitate', 'noţiunea, care se referă la emiţător, întâi la autor, apoi la traducător, ca emiţător  de  gradul  doi,  se  află  în  relaţie  de  complementaritate,  de reciprocitate cu noţiunea de acceptabilitate şi presupune că un text coeziv şi coerent trebuie creat în mod intenţionat pentru a putea fi utilizat în procesul  interactiv  al  comunicării.  Echivalenţele  literală,  lingvistică  şi semantică,  favorizează  intenţionalitatea  TS  şi  sunt  dictate  de  natura textului.'),
(105, 'litere', 'Interpret', 'persoană  calificată  să  asigure  traducerea  orală,  interpretarea,  a  unui discurs  emis  oral,  înregistrat  sau  a  unui  text  scris  destinat  comunicării orale.'),
(106, 'litere', 'Memorie de traducere', 'aplicaţie  care  înregistrează  într-o  bază  de  date  numită  memorie  de traducere,  frazele  ori  segmentele-ţintă  traduse  (denumite  unităţi  sau segmente de traducere) şi segmentele-sursă corespunzătoare. Pentru fiecare nouă unitate de tradus, programul efectuează o cercetare în baza de date astfel constituită, pentru a verifica dacă un segment similar ori identic a fost tradus şi pentru a se asigura în acest fel omogenitatea terminologică şi  stilistică  a  traducerii.'),
(107, 'litere', 'Metafora', 'metafora este o deviere a sensului prin similaritatea semnificaţilor celor două elemente asociate care au cel puţin un sem comun; ea înlocuieşte un semnificant cu altul.'),
(108, 'litere', 'Metafora', 'deviere a sensului prin similaritatea semnificaţilor celor două elemente asociate care au cel puţin un sem comun; ea înlocuieşte un semnificant cu altul'),
(109, 'litere', 'Paratext', 'cuprinde orice complement informaţional adăugat de autor – paratextul  auctorial  format  din  peritext,  epitextul  public  şi  epitextul particular  –  sau  de  editor  –  paratextul  editorial  –  situat  în  exteriorul textului.'),
(110, 'litere', 'Semantism', 'termenul  are  două  accepţii.  Prima,  care  interesează  în  perspectiva traductologică, se referă la conţinutul semantic al unei unităţi lingvistice, morfem sau enunţ. Semantismul desemnează însă şi etapa prealabilă asocierii unui  sens unei forme date într-un  context.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
