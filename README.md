# gist-robot
Automation test for gist github using Robot Framework with Selenium

<b>Prerequisites</b>
<br>
to install the required library
`pip install requirements.txt`

<b>Runnig Test</b>
<br>
using command :
<br>
robot -v username:[Your Github Username] -v password:[Your Github Password] [path to the file test]
<br>
ex : 
<br>
robot -v username:test -v password:password tests/GistTest.robot
