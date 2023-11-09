**RobotFrameworkTryout**

Basistestjes om te checken dat RobotFramework werkt. 
Testen zijn vergelijkbaar met https://github.com/PaulineTubbergenOrdina/CypressVsTestcafeDemo.

**Stappen installeren RobotFramework:**

Check met de commandline dat de volgende zaken aanwezig zijn:
git version
python3 --version
pip3 --version
robot --version

Onderstaande stappen zijn uitgevoerd op een mac met een M2 processor. 
De gebruikte IDE is PyCharm community.

Als je een mac hebt, dan zijn git, python3 en pip3 als het goed is al geïnstalleerd.

Stappen voor het installeren en draaiend krijgen van RobotFramework:
1. Open een nieuw project in PyCharm/git pull dit project.
2. Check dat je in een virtual environment zit (open terminal in Pycharm en check dat er (venv) voor staat).
3. Doe "pip install robotframework".
4. Doe "pip install --upgrade robotframework-seleniumlibrary".
5. Download the arm-chromedriver die overeenkomt met de versie van Chrome op je computer: https://googlechromelabs.github.io/chrome-for-testing/#stable.
6. Pak uit en plaats in de bin-map van je venv.

Je kunt je testen in de map "tests" nu draaien met het commando "robot tests/example.robot".

Robot files leesbaarder maken in PyCharm en makkelijker tests aftrappen:
1. Ga naar Settings/Plugins... en installeer de plugin "Hyper RobotFramework Support".
2. Je krijgt nu codevoorspellingen en kunt op een playknopje drukken per test.
