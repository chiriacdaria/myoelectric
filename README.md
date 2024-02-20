
## Scopul Proiectului  :signal_strength:
 
	Scopul proiectului este de a dezvolta un dispozitiv de antrenament myoelectric care să permită utilizatorului să controleze un servo motor cu ajutorul semnalelor electromiografice (EMG) generate de mușchii săi. 
 	Acest proiect se concentrează pe utilizarea tehnologiei EMG pentru a crea o interfață între sistemul muscular al utilizatorului și dispozitivul de antrenament.

## Obiective 
 
	Studierea și înțelegerea principiilor de funcționare a motoarelor servo și a tehnologiei EMG (Electromiografie) pentru detectarea semnalelor electrice generate de mușchii umani.
	Utilizarea plăcii Elvis pentru implementarea sistemului de control al motorului servo și a gripperului (dispozitivul de prindere și eliberare).
	Dezvoltarea programelor QNET în LabVIEW pentru controlul motorului servo și a gripperului, utilizând metoda Guillemin-Trouxele pentru proiectarea unui regulator și identificarea sistemului cu modelul ARX (AutoRegressive with eXogenous inputs).
	Simularea unei mâini proteze utilizând sistemul de control dezvoltat, astfel încât persoanele cu dizabilități să poată experimenta funcționalitatea și simplitatea utilizării unei mâini artificiale.
	Evaluarea performanțelor sistemului de control, în special în ceea ce privește precizia și stabilitatea prinderii și eliberării obiectelor de către gripper.
	Analiza rezultatelor obținute și identificarea posibilelor îmbunătățiri ale sistemului, în vederea optimizării performanțelor și utilizabilității mâinii proteze.

##  Specificații:
 
	 Funcții ale aplicației: 
	a. Detectarea semnalelor EMG generate de mușchii umani și utilizarea acestora pentru controlul motorului servo și a gripperului.

 	b. Implementarea unui regulator utilizând metoda Guillemin-Trouxele pentru a asigura un control precis al motorului servo și a gripperului. 

	c. Simularea unei mâini proteze prin intermediul motorului servo și a gripperului, permițând prinderea și eliberarea obiectelor. 

	d. Monitorizarea și afișarea datelor relevante, cum ar fi semnalele EMG, poziția motorului servo și starea gripperului.
	Interfață: 

	e. Integrarea unei interfețe utilizator-grafic (GUI) în LabVIEW pentru a facilita interacțiunea cu utilizatorul și controlul sistemului.

## Nivele de performanță: 
 
	a. Sistemul de control trebuie să ofere un răspuns rapid și precis în funcție de semnalele EMG detectate.

 	b. Gripperul trebuie să fie capabil să prindă și să elibereze obiecte cu precizie și să ofere o forță de prindere adecvată. 

	c. Regulatorul utilizat trebuie să asigure stabilitatea sistemului și să minimizeze erorile de poziționare.
	
## Elemente și calitate: 
	
 	a. Utilizarea plăcii Elvis și a componentelor electronice adecvate pentru a asigura o funcționare fiabilă și precisă a sistemului. 
	
 	b. Implementarea unor algoritmi avansați pentru detectarea semnalelor EMG și controlul motorului servo. 

	c. Asigurarea unei construcții solide și robuste a gripperului pentru a face față prinderii și eliberării repetate a obiectelor.
	
## Limitări: 

	a. Sistemul trebuie să fie compatibil cu limitele și specificațiile plăcii Elvis și ale componentelor utilizate. 

	b. Capacitatea motorului servo și a gripperului trebuie să fie adecvată pentru a face față sarcinii de prindere și eliberare a obiectelor dorite. 
	
 	c. Detectarea semnalelor EMG poate fi influențată de zgomotul electric ambiental sau de alte interferențe, astfel încât trebuie luate măsuri pentru a minimiza aceste efecte nedorite.
 
## Determinarea modelului matematic al sistemului
 
### Analiza sistemului  

	 Marimea controlată (output) în acest caz este poziția gripperului. Scopul este de a controla și monitoriza poziția acestuia în timpul prinderii și eliberării obiectelor.
 
	Marimea manipulată (input) este semnalul EMG (Electromiografie) generat de mușchii umani. Acest semnal este captat și procesat pentru a determina intenția utilizatorului de a controla gripperul. Semnalul EMG este utilizat ca sursă de informație pentru a comanda motorul servo și a controla deschiderea/cușca gripperului.

	Prin analiza sistemului, se poate investiga comportamentul și performanțele sistemului de control. Aceasta include evaluarea răspunsului sistemului la semnalele EMG și analiza performanțelor în ceea ce privește prinderea și eliberarea obiectelor.
	Achizitie semnale
 
<img width="257" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/e40d1ad2-9cb3-46dc-820d-00fc42f3d5b9">

### Relaxat

<img width="258" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/ef8ec4f9-b6a9-4448-adb3-b6c75b81613b">

### Incordat

### Semnal nefiltrat

<img width="485" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/92724895-578d-4360-8e8b-565adc1db60e">
 
### Semnal filtrat

<img width="485" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/d6f5d83b-caa5-48e2-92c3-3208ff7c4c4a">

	Graficul semnalelor EMG filtrate si nefiltrate
 
 <img width="337" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/ebe34c21-e2f2-4571-9b64-0e2ff8663d8c">

Acest grafic arată cum semnalele EMG sunt procesate și pregătite pentru a fi utilizate în sistemul de control.

	Semnalul EMG filtrat este important în achiziția de date deoarece ajută la eliminarea zgomotului și a interferențelor nedorite care pot afecta semnalul EMG.

	 Filtrarea semnalului EMG asigură că semnalul captat reflectă cu precizie activitatea electrică a mușchilor și reduce influența factorilor externi.

	Prin comparația celor două grafice, se poate observa cum filtrarea reduce zgomotul și interferențele, permițând obținerea unui semnal mai clar și mai pur. 


	Graficul semnalelor EMG si răspunsului motorului servo.
 
<img width="317" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/7499bc02-fd33-41de-afd3-0443a72e4310">

Graficul semnalului EMG filtrat și al răspunsului motorului servo (input-output) este esențial pentru a vizualiza relația dintre semnalul EMG și mișcarea motorului servo. 

Acesta arată cum semnalul EMG influențează răspunsul motorului servo și cum variațiile semnalului EMG se traduc în mișcări ale motorului servo.

 Graficul permite evaluarea eficacității controlului bazat pe semnalul EMG și poate evidenția corelații și tendințe importante.

	Răspunsul treapta sistemului identificat
 
<img width="316" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/fa43451f-d988-48a2-84e6-f69fc95f9c8d">

	Răspunsul treaptă al sistemului identificat este important în achiziția de date deoarece oferă informații despre comportamentul sistemului în timpul unei schimbări bruște în intrarea sa.
 
	 Acesta permite evaluarea modului în care sistemul răspunde la o tranziție abruptă în semnalul de intrare și oferă indicii despre stabilitatea, timpul de răspuns și performanța generală a sistemului.
Observam ca sistemul nu prezinta timp mort, se stabilizeaza la 1

Sistemului identificat este de 0.0684 secunde. 

<img width="314" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/faa76fba-4c5e-4993-85e1-00d23d1c4c18">

	Acesta indică faptul că sistemul va ajunge la aproximativ 68.4% din valoarea stabilă finală în acest interval de timp după aplicarea unei trepte în semnalul de intrare.

	Diagrama Bode a sistemului identificat
 
<img width="314" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/30abbec5-c4bd-49b1-b5ac-ef3fc217adf4">

	Aceasta arată cum sistemul se comportă la diferite frecvențe și evidențiază amplificarea și faza sistemului în funcție de frecvență.
Phase margin=173

<img width="230" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/24ae6a81-11e0-49b8-a718-3778c51bf6c2">

	Graficul comparativ între răspunsul filtrat al sistemului și răspunsul motorului servo

<img width="319" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/020c0243-7366-46da-8cf2-3a46a4328e50">

	Graficul compară semnalul filtrat al sistemului identificat (reprezentat de obiectul env_FIL) cu răspunsul servo motorului real (reprezentat de obiectul sys_response_data_FIL)

	Acesta evidențiază nivelurile de amplitudine și forme de undă ale celor două răspunsuri pentru a determina cât de bine se apropie răspunsul filtrat de răspunsul real. Observam ca cele doua semnale se suprapun intr-un procent semnficativ deci concluzionam ca sistemul identificat reproduce corect răspunsul servo motorului. 

<img width="320" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/6d55c0e5-3f4d-4d08-b500-2aeecdb41c70">

	Graficul compară semnalul real al motorului servo (reprezentat de obiectul serv) cu răspunsul sistemului identificat (reprezentat de obiectul sys_response_data), deci compară răspunsul motorului servo real cu răspunsul sistemului identificat.
 	
  	Acesta evidențiază  prin suprapunerea celor doua semnale modul în care răspunsul sistemului identificat se apropie si se potrivește cu răspunsul real al servo motorului. 

	Răspunsul sistemului în domeniul s
 
<img width="333" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/6b90ffde-b009-42cd-8711-57112bbcd3f6">

	Graficul va afișa semnalul motorului servo real (linia albastră) și răspunsul sistemului identificat (linia roșie) pe aceeași figură.

	Acest grafic este util pentru a compara comportamentul sistemului identificat cu semnalul motorului servo real în domeniul s. Dupa cum se poate observa cele două semnale au forme de undă similare și se suprapun, deci asta înseamnă că sistemul identificat reproduce corect răspunsul servo motorului și are un comportament adecvat în domeniul s.


	Identificare / Modelare analitica
 
	Metoda de identificare/modelare
 
Am ales utilizarea metodei ARX (Autoregressive with eXogenous inputs) pentru a identifica și modela sistemul de control al motorului servo. Această metodă este frecvent utilizată în analiza și modelarea sistemelor dinamicelor liniare.

	Procesul de identificare
 
Filtrarea semnalului EMG:  Semnalul EMG este filtrat pentru a elimina zgomotul și a evidenția informațiile relevante. În cod, se aplică un filtru trece sus (high-pass filter)  și un filtru trece jos (low-pass filter) asupra semnalului EMG, rezultând semnalul filtrat.

Crearea obiectului de date de intrare-ieșire:  Se crează un obiect de date (data) care conține semnalul filtrat al motorului servo (ieșire) și semnalul filtrat al semnalului EMG (intrare). Această structură de date este utilizată în procesul de identificare. (iddata)

Identificarea modelului ARX:  Se utilizează funcția arx pentru a identifica modelul ARX. Prin specificarea ordinului polinomial AR și B, precum și ordinul de întârziere temporală (time delay), modelul ARX este ajustat pe baza datelor de intrare-ieșire furnizate. Rezultatul este un model ARX identificat.

<img width="243" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/c8739063-6f63-471f-bf68-07e6a21e9408">

	Proiectarea sistemului de control
 
Metode aplicate pentru rezolvarea problemei

	Am aplicat metoda Guillemin-Truxal pentru proiectarea unui regulator continuu de timp pentru a regla un sistem cu răspuns suprareglaj și timp de stabilizare dorite.

	Am ales această metodă deoarece Guillemin-Truxal oferă o abordare simplă și intuitivă pentru proiectarea regulatorilor continuu de timp, utilizând parametri precum timpul de stabilizare și suprareglajul dorite. Această metodă permite obținerea unui răspuns stabil și performant al sistemului.

	Prin stabilirea timpului de stabilizare și suprareglajului dorite, putem calcula factorul de amortizare (zeta) și frecvența naturală (wn) necesare pentru a obține un răspuns reglat adecvat. Aceste parametri sunt utilizate pentru a construi funcția de transfer a regulatorului continuu (tf_H0) și a sistemului în buclă închisă (Hreg).

	Metoda Guillemin-Truxal oferă, de asemenea, posibilitatea de a transforma regulatorul continuu într-un regulator discret utilizând aproximarea ZOH (Zero-Order Hold). Acest lucru este util dxeoarece ne dorim  implementarea regulatorului pe un sistem de control digital.
### Descrierea procedurilor 

	Definirea funcției de transfer a procesului
	
 	Am preluat functia de transfer identificata : 12/(s+57.2) . Specificațiile servomotorului implică aplicarea unei trepte de 4.8 în loc de o treaptă de 1. Prin urmare, pentru a corespunde acestor specificații și pentru a obține o comparație și evaluare mai relevante între răspunsul sistemului identificat și răspunsul servomotorului real, funcția de transfer identificată 12/(s+57.2) a fost înmulțită cu 4.8. 
  	Acest lucru ajustează amplitudinea răspunsului identificat pentru a reflecta comportamentul real al servomotorului la treapta de 4.8. Aceasta scalare este importanta pentru a obține o comparație mai precisă între sistemul identificat și sistemul real, și pentru a asigura că răspunsul simulat se încadrează în limitele și specificațiile sistemului real.

	Stabilirea cerințelor de performanță
 
	Timpul de stabilizare dorit (settling_time): Această variabilă reprezintă timpul în secunde în care sistemul trebuie să atingă valoarea de regim permanent într-un interval specificat. Astfel am impus timpul de stabilizare la 0.2 secunde, ceea ce înseamnă că sistemul trebuie să se stabilizeze și să atingă valoarea de regim permanent în acest interval de timp.

	Suprareglajul dorit (overshoot): Această variabilă reprezintă procentul de depășire a valorii de regim permanent în timpul răspunsului sistemului. Astfel am impus valoarea de overshoot la 5%, ceea ce înseamnă că sistemul trebuie să depășească valoarea de regim permanent cu cel mult 5%.

	Calcularea factorului de amortizare (zeta)
 
	Factorul de amortizare (zeta) este calculat utilizând formula (-log(overshoot/100)) / (sqrt(pi^2 + log(overshoot/100)^2)), unde overshoot reprezintă suprareglajul dorit. Acest calcul asigură obținerea unui factor de amortizare corespunzător cerințelor de suprareglaj.

 Calcularea frecvenței naturale (wn)
 
	Frecvența naturală (wn) este calculată utilizând formula 4 / (zeta * settling_time), unde zeta reprezintă factorul de amortizare calculat anterior și settling_time reprezintă timpul de stabilizare dorit. Această valoare determină cât de rapid va fi sistemul reglat.

 Construirea funcției de transfer a regulatorului continuu (tf_H0)
 
	Funcția de transfer a regulatorului continuu (tf_H0) este construită utilizând coeficienții wn și zeta calculați anterior. Aceasta se realizează prin definirea numărătorului și numitorului funcției de transfer folosind acești coeficienți și forma polinomială.

 Construirea funcției de transfer a sistemului în buclă închisă (Hreg)
 
	Funcția de transfer a sistemului în buclă închisă (Hreg) este obținută prin împărțirea funcției de transfer a regulatorului la funcția de transfer a procesului. Aceasta reprezintă sistemul reglat final.

 Transformarea regulatorului continuu în regulator discret
 
	Regulatorul continuu este transformat într-un regulator discret utilizând aproximarea ZOH (Zero-Order Hold). Aceasta se realizează prin utilizarea funcției c2d pentru a converti funcția de transfer a regulatorului continuu și a funcției de transfer tf_H0 în funcții de transfer discrete.

Calcule, tehnici, descrierea echipamentelor

	Pentru metoda Guillemin-Truxal de proiectare a unui controler continuu, calculele și tehnici utilizate sunt de natură matematică și se bazează pe concepte și formule specifice teoriei controlului. Calculele principale efectuate includ:
	Calculul factorului de amortizare (zeta) si a frecvenței naturale (wn)
	Construirea funcției de transfer a regulatorului continuu si a funcției de transfer a sistemului în buclă închisă
	Pentru a realiza aceste calcule și a implementa metoda Guillemin-Truxal, am utilizat mediul de programare MATLAB.


## Metodologia de proiectare
	
Metodologia de proiectare în contextul metodei Guillemin-Truxal pentru proiectarea unui controler continuu a implicat următoarele etape:
	
	 Stabilirea cerințelor de performanță
	
	 Identificarea procesului și determinarea funcției de transfer
	
	 Calculul parametrilor regulatorului continuu
	
	 Construirea funcției de transfer a regulatorului continuu
	
	 Construirea funcției de transfer a sistemului în buclă închisă
	
	 Evaluarea performanței sistemului în buclă închisă
	
	 Transformarea regulatorului continuu într-un regulator discret  folosind ZOH
	
	 Verificarea și ajustarea controlerului

Am generat trei grafice pentru a vizualiza răspunsul sistemului în diferite etape ale proiectării controlerului. Prin analiza acestor grafice, putem evalua răspunsul sistemului și controlerului în funcție de cerințele de performanță stabilite anterior, precum timpul de stabilizare, suprareglajul, precizia etc.

Aceste grafice ne oferă o perspectivă vizuală asupra comportamentului sistemului și a performanței controlerului proiectat.
  (14.58 s + 834.1 )/(s^2 + 40 s)

  
	Graficul "Step Response of the Closed-loop System"
 
<img width="288" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/d10acac7-c5d5-4ec7-a855-df151b59f127">

Acest grafic reprezintă răspunsul sistemului în buclă închisă, adică răspunsul sistemului controlat cu ajutorul regulatorului proiectat.
 Este obținut prin aplicarea unei trepte unitare la intrarea sistemului pentru functia de transfer deja inmultita cu 4.8. 

Acest grafic oferă o imagine a modului în care sistemul atinge și se stabilizează în valoarea de regim permanent sub acțiunea controlerului.
Observam timpul de raspuns de 0.207, valoare foarte apropiata de valoarea impusa.

	Graficul "Step Response of tf_H0":
 
<img width="294" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/3398e2ad-7ca4-4ed8-92d4-9df2dc066231">

Acest grafic reprezintă răspunsul funcției de transfer tf_H0, care este regulatorul continuu proiectat.

Acest grafic permite observarea modului în care funcția de transfer tf_H0 răspunde la o treaptă unitară aplicată la intrarea sa. 

Este util pentru a evalua comportamentul și performanța regulatorului continuu proiectat înainte de a fi transformat într-un controler discret.
Observam existenta suprareglajului.

	Graficul "Step Response of the Discrete-time Controller"
 
<img width="299" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/3b09fbb9-e940-478a-9df5-d728498f2f41">

Acest grafic reprezintă răspunsul controlerului discret obținut prin transformarea regulatorului continuu într-un controler discret utilizând aproximarea ZOH. 

Vedem modul în care controlerul discret răspunde la o treaptă unitară aplicată la intrarea sa. 

Este util pentru a evalua comportamentul și performanța controlerului discret obținut după transformarea regulatorului continuu.

	Implementarea sistemului de control

 
In aceasta imagine remarcam raspunsul servo motorului dupa aplicarea regulatorului calculat.

<img width="339" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/b99296c2-00f2-408b-bcb9-d79b429c1a78">

Observam o crestere rapida si o coborare lenta in functie de trashold care a fost setat la0.2. Un trashold mai mare va genera o coborare mai lenta. Ne dorim acest comportament pentru gripper-ul ce simuleaza o proteza.

De asemenea, vedem ca raspunsul urmareste referinta deci sistemul proiectat satisfice conditiile impuse.

Pentru implementarea aplicației de control a unui gripper utilizând regulatorul proiectat, s-a ales mediul de dezvoltare LabVIEW. LabVIEW este un mediu de programare grafic, utilizat în principal pentru dezvoltarea de aplicații de testare, măsurare și control.

 <img width="521" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/b41749c6-7d66-4984-ab90-059d7ccf1b5f">

	Regulatorul proiectat este integrat în aplicația LabVIEW pentru a controla gripperul. Acesta este implementat in structura de mai sus si  primește date de intrare (cum ar fi setările de control sau măsurătorile) de la muschi și generează semnale de control corespunzătoare pentru a controla deschiderea și închiderea gripperului.

	Implementarea aplicației LabVIEW pentru controlul gripper-ului a implicat configurarea, integrarea modulului de control al gripperului și algoritmului de reglare, precum și testarea și validarea sistemului prin interacțiunea cu placa elvis si gripper.
	
 	Am utilizat MATLAB pentru a înregistra date cu privire la gradele de deschidere ale gripperului și valorile corespunzătoare. Aceasta a fost o măsură luată pentru a obține o înțelegere mai detaliată a relației dintre gradele de deschidere și valorile asociate în cadrul sistemului de control.

	Pentru a controla gripperul, am folosit o placă Elvis și protocolul de comunicație QNet, deci cu ajutorul acestora am implementat comunicarea și controlul gripperului în aplicația LabVIEW. Am putut transmite comenzile de control și am primit date de la gripper prin intermediul acestui protocol, asigurând o interacțiune eficientă și fiabilă între sistemul de control și dispozitivul fizic.

	Testare și analiza rezultate
 
Verificarea funcționalității de bază

 	În această etapă, am testat funcționalitățile fundamentale ale aplicației și comunicarea între LabVIEW, placa Elvis și gripper. Am verificat dacă aplicația poate iniția comenzile de control și dacă acestea sunt transmise corespunzător prin protocolul QNet către gripper. De asemenea, se testează primirea și afișarea datelor de la gripper în interfața grafică a aplicației.

	Testarea preciziei și repeatabilității controlului
 
	Am efectuat experimente în care am setat diferite valori de referință pentru gradul de deschidere al gripperului și am înregistreat valorile efective obținute. Am folosit butonul de rotire pentru a controla gripperul, pentru a vedea comportamentul procesului.

	Testarea performanței sistemului
 
	Am efectuat experimente pentru a evalua performanța sistemului de control al gripperului.Mai exact, am initiat comenzi de control specifice, cum ar fi deschiderea sau închiderea rapidă a gripperului. Am analizat parametrii de performanță precum timpul de răspuns si suprareglajul și stabilitatea sistemului.

	Concluzii
 
În cadrul procesului de identificare, control și testare a aplicației de control a gripperului, am obținut următoarele rezultate și concluzii:

	Identificarea sistemului: Am utilizat metode de identificare a sistemului pentru a obține modelul de transfer al procesului. Am determinat transferul procesului utilizând metoda Guillman-Truxal și am obținut funcția de transfer G(s) = 4.8*12 / (s + 57.2).
	
 	Proiectarea controlerului: Am stabilit cerințele de performanță pentru sistemul de control, inclusiv timpul de stabilizare dorit și suprareglajul admis. Am calculat factorul de amortizare (zeta) și frecvența naturală (wn) în funcție de aceste cerințe. Apoi, am construit funcția de transfer a regulatorului continuu (tf_H0) și am realizat transformarea acestuia într-un regulator discret (Cd) utilizând metoda de aproximare ZOH.
	
 	Implementarea și testarea sistemului de control: Am implementat aplicația de control în mediul LabVIEW, utilizând placa Elvis și protocolul QNet pentru comunicare cu gripperul. Am verificat funcționalitatea de bază a aplicației și am testat precizia, repeatabilitatea și performanța sistemului de control prin experimente practice. Am înregistrat date și am analizat rezultatele pentru a evalua performanța și stabilitatea sistemului.


## Concluzii:

	Aplicația de control implementată în LabVIEW, folosind placa Elvis și protocolul QNet, a permis controlul eficient și precis al gripperului.
 
	Prin proiectarea și testarea sistemului de control, am obținut un timp de răspuns rapid și o performanță bună în atingerea gradelor de deschidere dorite.
 
	Sistemul de control s-a dovedit a fi stabil și robust în fața perturbațiilor și variațiilor în sarcină.
 
	Contribuțiile în domeniul temei abordate includ proiectarea și implementarea unui sistem de control utilizând LabVIEW și placa Elvis, utilizarea protocolului QNet pentru comunicare și testarea și evaluarea performanței sistemului de control în condiții practice.
În general, procesul de identificare, control și testare a aplicației de control a gripperului a fost realizat cu succes, obținându-se rezultate satisfăcătoare în ceea ce privește performanța și stabilitatea sistemului.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Project Scope :signal_strength:
The purpose of this project is to develop a myoelectric training device that allows the user to control a servo motor using electromyographic (EMG) signals generated by their muscles. This project focuses on using EMG technology to create an interface between the user's muscular system and the training device.

## Objectives
Study and understand the principles of servo motors and EMG (Electromyography) technology for detecting electrical signals generated by human muscles.
Use the Elvis board to implement the servo motor and gripper (grasping and releasing device) control system.
Develop QNET programs in LabVIEW to control the servo motor and gripper, using the Guillemin-Trouxele method for designing a controller and identifying the system with the ARX model (AutoRegressive with eXogenous inputs).
Simulate a prosthetic hand using the developed control system so that people with disabilities can experience the functionality and ease of use of an artificial hand.
Evaluate the performance of the control system, particularly regarding the precision and stability of gripping and releasing objects with the gripper.
Analyze the obtained results and identify possible improvements to the system for optimizing the performance and usability of the prosthetic hand.
Specifications:
## Application Functions:
a. Detect EMG signals generated by human muscles and use them to control the servo motor and gripper.
b. Implement a controller using the Guillemin-Trouxele method to ensure precise control of the servo motor and gripper.
c. Simulate a prosthetic hand through the servo motor and gripper, allowing grasping and releasing objects.
d. Monitor and display relevant data, such as EMG signals, servo motor position, and gripper status.

## Interface:
e. Integrate a Graphical User Interface (GUI) in LabVIEW to facilitate user interaction and system control.

## Performance Levels:
a. The control system must provide a quick and precise response based on detected EMG signals.
b. The gripper must be capable of grasping and releasing objects with precision and providing adequate gripping force.
c. The controller used must ensure system stability and minimize positioning errors.

## Elements and Quality:
a. Use the Elvis board and suitable electronic components to ensure reliable and accurate system operation.
b. Implement advanced algorithms for detecting EMG signals and controlling the servo motor.
c. Ensure a sturdy and robust construction of the gripper to withstand repeated grasping and releasing of objects.

## Limitations:
a. The system must be compatible with the limits and specifications of the Elvis board and the used components.
b. The capacity of the servo motor and gripper must be suitable for handling the task of grasping and releasing desired objects.
c. Detection of EMG signals may be influenced by ambient electrical noise or other interferences, so measures must be taken to minimize these undesirable effects.

## Determining the Mathematical Model of the System
### System Analysis:
The controlled variable (output) in this case is the gripper's position. The goal is to control and monitor its position during grasping and releasing objects.

The manipulated variable (input) is the EMG (Electromyography) signal generated by human muscles. This signal is captured and processed to determine the user's intention to control the gripper. The EMG signal is used as information to command the servo motor and control the gripper's opening/closing.

By analyzing the system, we can investigate the behavior and performance of the control system. This includes evaluating the system's response to EMG signals and analyzing performance regarding gripping and releasing objects.

### Signal Acquisition
<img width="257" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/e40d1ad2-9cb3-46dc-820d-00fc42f3d5b9">

### Relaxed
<img width="258" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/ef8ec4f9-b6a9-4448-adb3-b6c75b81613b">

### Tensed
Unfiltered Signal

<img width="485" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/92724895-578d-4360-8e8b-565adc1db60e">

### Filtered Signal
<img width="485" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/d6f5d83b-caa5-48e2-92c3-3208ff7c4c4a">

Graph of filtered and unfiltered EMG signals

This graph shows how EMG signals are processed and prepared for use in the control system.

Filtered EMG signal is crucial in data acquisition because it helps eliminate noise and unwanted interferences that can affect the EMG signal.

Filtering the EMG signal ensures that the captured signal accurately reflects the muscle's electrical activity and reduces the influence of external factors.

By comparing the two graphs, it can be observed how filtering reduces noise and interferences, allowing for a clearer and purer signal.

Graph of EMG signals and servo motor response

<img width="339" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/b99296c2-00f2-408b-bcb9-d79b429c1a78">

The graph of the filtered EMG signal and the servo motor response (input-output) is essential for visualizing the relationship between the EMG signal and the servo motor's movement.

It shows how the EMG signal influences the servo motor's response and how variations in the EMG signal translate into servo motor movements.

The graph allows for the evaluation of the effectiveness of EMG-based control and can highlight important correlations and trends.

Identified system's step response

<img width="316" alt="image" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/fa43451f-d988-48a2-84e6-f69fc95f9c8d">

The identified system's step response is important in data acquisition as it provides information about the system's behavior during a sudden change in its input signal.

It allows for the assessment of how the system responds to variations in the EMG signal and how quickly it reaches a steady state.

Understanding the step response helps in fine-tuning the control system to optimize performance and achieve desired results.

Designing the Controller using the Guillemin-Trouxele Method:
The Guillemin-Trouxele method involves designing a controller to achieve the desired system response. It is particularly useful in systems where a clear mathematical model can be obtained.

## Controller Design Steps:
Determine the transfer function of the identified system based on the step response.
Choose suitable controller parameters to achieve the desired closed-loop response.
Implement the controller in LabVIEW to control the servo motor and gripper.
Transfer Function:
The transfer function of the system relates the Laplace transforms of the input and output signals. In this case, the input is the EMG signal, and the output is the gripper's position.

The identified system's transfer function is represented as:

<img width="177" alt="Captură de ecran din 2024-02-20 la 15 14 25" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/98286041-64c7-49ea-9408-dd9769479eb8">

Where:

K is the system gain,
T is the time constant of the first-order system,
τ is the time constant of the second-order system.
Controller Parameters:
To achieve the desired closed-loop response, suitable controller parameters must be selected. The transfer function of the controller is given by:

<img width="218" alt="Captură de ecran din 2024-02-20 la 15 13 54" src="https://github.com/chiriacdaria/myoelectric/assets/99746700/74c46783-1147-4b39-9b1b-514cf3351a8c">

Where: Kc is the controller gain, Td is the derivative time,Ti​ is the integral time, is the filter time constant.
Closed-Loop System:
The closed-loop transfer function is obtained by combining the transfer functions of the system and the controller:

T(s)= (1+G(s)H(s))/G(s)H(s)
​
 
Implementing the Controller in LabVIEW:
Once the transfer function and controller parameters are determined, the next step is to implement the controller in LabVIEW. This involves using LabVIEW's graphical programming environment to design the control algorithm.

The LabVIEW program should include modules for:

Reading and processing the filtered EMG signal.
Calculating the control output based on the controller transfer function.
Sending control signals to the servo motor to adjust the gripper's position.
Simulation and Testing:
After implementing the controller in LabVIEW, it is essential to simulate and test the system before practical implementation. Simulation helps identify potential issues, fine-tune parameters, and ensure the control system behaves as expected.

LabVIEW provides tools for simulation, allowing the user to observe the system's response to different inputs and verify the effectiveness of the designed controller.

Simulating a Prosthetic Hand:
The final step in the project is to simulate a prosthetic hand using the developed control system. This involves integrating the servo motor and gripper into a physical hand-like structure.

The simulation should allow the user to:

Control the prosthetic hand's movements using their EMG signals.
Grasp and release objects with precision.
Monitor relevant data, such as EMG signals, servo motor position, and gripper status.
Evaluation and Analysis:
Once the simulation is complete, the system's performance must be evaluated and analyzed. This involves:

Assessing the precision and stability of gripping and releasing objects.
Analyzing the system's response to different EMG signals and user inputs.
Identifying any limitations or areas for improvement.
The evaluation should provide insights into the system's strengths and weaknesses, guiding future developments and optimizations.

## Conclusion:
The myoelectric training device project aims to create a user-friendly and effective interface between individuals with limb disabilities and prosthetic hands. By utilizing EMG signals, servo motors, and advanced control algorithms, the system seeks to provide a seamless and intuitive experience for users.

Through the detailed analysis, design, and simulation steps outlined in this document, the goal is to achieve precise control of a prosthetic hand, allowing users to perform various tasks with ease and accuracy.

The project's success hinges on the effective integration of hardware and software components, thoughtful controller design, and rigorous testing and evaluation. By adhering to the specified objectives, interface requirements, and performance levels, the myoelectric training device aims to make a positive impact on the lives of individuals with limb disabilities.

Note: This project document serves as a comprehensive guide for the development of the myoelectric training device. The provided information covers the key aspects of the project, from understanding the system's components to designing and implementing the control system. It is intended to be used as a reference by engineers, developers, and researchers involved in the project.
