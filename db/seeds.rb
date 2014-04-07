# Encoding: UTF-8
GameType.delete_all
GameType.create!(
	title: 'Computer Forensics & Security',
	max_score: '100')

#-------------------------------------------------------------------------------------------------------------
GameMove.delete_all
GameMove.create!(
	description: 'Slow Forwards',
	code: 'Insert appropriate code here',
	game_type_id: 1)

GameMove.create!(
	description: 'Medium Forwards',
	code: 'Insert appropriate code here',
	game_type_id: 1)

GameMove.create!(
	description: 'Fast Forwards',
	code: 'Insert appropriate code here',
	game_type_id: 1)

#-------------------------------------------------------------------------------------------------------------
Level.delete_all
Level.create!(
	level: 'Easy',
	game_type_id: 1)

Level.create!(
	level: 'Medium',
	game_type_id: 1)

Level.create!(
	level: 'Hard',
	game_type_id: 1)

#-------------------------------------------------------------------------------------------------------------
Status.delete_all
Status.create!(
	status: 'Completed')

Status.create!(
	status: 'Skipped')

Status.create!(
	status: 'Incomplete')

#-------------------------------------------------------------------------------------------------------------
User.delete_all
User.create!(
	email: 'r.vickery1@unimail.derby.ac.uk',
	password:'jaberwocke',
	password_confirmation: 'jaberwocke',
	admin: true )

#-------------------------------------------------------------------------------------------------------------
Game.delete_all

#-------------------------------------------------------------------------------------------------------------
GameDetail.delete_all



#-------------------------------------------------------------------------------------------------------------
Question.delete_all

#***********************************************************************************
Question.create!(
	title: 'Easy Challenge 1 - Hidden files',
	scenario: '<p> View all the hidden files in the “home/questions/easy”. </p><p> In Linux file systems, hidden file are preceded by a period symbol ("."). </p><p> Most hidden files in the user directory are configuration files (or directories) for programs or for the OS itself. </p> <p> These can be viewed using the "ls" command with the "-a" argument. During a forensic investigation, examining hidden files might reveal a lot of information about what programs are currently running on the system and how the user has configured it. </p><p> Apart from configuration files, network and access logs are often configured to be hidden by the system. </p><p> There should be a hidden file in the "home/questions/easy" directory, starting with the string "user". </p><p> Use the command mentioned above and use the full filename as an answer (without the period).</p>',
	answer:'user2455',
	level_id: 1,
	game_type_id: 1,
	game_move_id: 1
)
#******************************************************************************************************************
Question.create!(
	title:'Easy Challenge 2 - Inode numbers',
	scenario:
	'
	<p> View a file\'s inode number </p>
	<p> The inode number (a.k.a. index node) contains metadata about the given file or directory. </p>
	<p> The metadata contained about each file structure can include file attributes, number of blocks occupied, file generation number, file size, etc. </p>
	<p> Keeping track of and verifying inode numbers can be very useful in a forensic investigation. This could reveal a lot of information about how the user has configured the access rights of system and network logs for example.</p>
	<p> Inode numbers can be viewed by using the "ls" command along with the "-a" and "-i" arguments.</p>
	<p> Use the command in the "home/questions/easy" directory to view the inode number of the file ".user2455" and use it as an answer.</p>
	',
	answer: 393383,
	level_id: 1,
	game_type_id: 1,
	game_move_id: 1,
)
#*********************************************************************************************
Question.create!(
title:'Easy Challenge 3 - Filesystems',
scenario:
'
<p> View connected filesystems to the OS</p>
<p> The "df" command is generally used to view the amount of space on a specified file system. If no file system is specified as a command line argument, </p>
<p> it displays data for all connected file systems on the OS. This can be particularly useful in a forensic investigation in terms of finding out what physical or virtual devices (or file systems) are connected to the OS.</p>
<p> Using the "df" command along with the "-a" argument, what is the name of the first mounted file system in the list?</p>
',
answer:'/dev/sda1',
level_id: 1 ,
game_type_id: 1,
game_move_id: 1
)
#*********************************************************************************************
Question.create!(
title:'Easy Challenge 4 - File contents',
scenario:
'
<p> View the contents of a single file</p>
<p> The "cat" command is among the most frequently used commands in Linux. It can be used to either parse the contents, copy or combine text files. </p>
<p> It works by typing "cat" followed by the target filename. The program also includes a number of options that can be used to customize and format the output, should the need for that occur.</p>
<p> When multiple files are used as command line arguments, cat prints their combined output.</p>
<p> Navigate to the "home/questions/easy/cat" folder and use the command to view the combined contents of “fileA” and “fileB”. Use the output as an answer (ignore newline characters).</p>
',
answer: 183,
level_id: 1,
game_type_id: 1,
game_move_id: 1
)
#*********************************************************************************************
Question.create!(
title:'Easy Challenge 5 - Concatenating files',
scenario:
'
<p> Concatenate two files
<p> The "cat" command is among the most frequently used commands in Linux. It can be used to either parse the contents, copy or combine text files. </p>
<p> It works by typing "cat" followed by the target filename(s). The program also includes a number of options that can be used to customize and format the output, should the need for that occur.</p>
<p> When multiple files are used as command line arguments, cat prints their combined output.</p>
<p> Navigate to the "home/questions/easy/cat" folder and use the command to view the combined contents of “fileA” and “fileB”. Use the output as an answer (ignore newline characters).</p>
',
answer: 183479,
level_id: 1,
game_type_id: 1,
game_move_id: 1
)
#*********************************************************************************************
Question.create!(
title:'Easy Challenge 6 - User ID',
scenario:
'
<p> View the user\'s ID </p>
<p> In Unix-based operating systems, each user has a specific ID number. Most Linux distributions are designed to be multi-user systems, meaning that several users could log on to the same machine at once, each with their individual access policies and file space. </p>
<p> In bash, the user ID can be viewed using the "id" command, followed by the "-u" parameter as an argument. This could be useful when trying to enumerate different users on an operating system during a forensic investigation.</p>
<p> Use the "id -u" command in the bash shell. What is the user\'s ID number?</p>
',
answer: 1000,
level_id: 1,
game_type_id: 1,
game_move_id: 1
)
#*********************************************************************************************
Question.create!(
title:'Easy Challenge 7 - Logged on users',
scenario:
'
<p> View the number of logged on users </p>
<p> The "who" command is used to view the current number of logged on users in the system. This can be particularly useful in a forensics when performing an investigation on a live system to see the number of users currently logged on.</p>
<p> Use the "who -q" command in the bash shell. What is the total number of logged on users?</p>
',
answer: 2,
level_id: 1,
game_type_id: 1,
game_move_id: 1
)
#*********************************************************************************************
Question.create!(
title:'Easy Challenge 8 - File length',
scenario:
'
<p> View the length of a file </p>
<p> The "wc" command is used to view the total number of bytes, words and newline counts in a file. This can be applied to every file type and is very useful when comparing individual files or filtering results based on size (or word count when processing text files). </p>
<p> Like many other Linux utilities, this command is very useful when used in a scripting environment to perform operations on a large number of files, using their size as a criteria.</p>
<p> Navigate to the "home/questions/easy/" folder and use the "wc -c" command to view the total byte count for the ".user2455" file.</p>
',
answer: 23,
level_id: 1,
game_type_id: 1,
game_move_id: 1
)
#*********************************************************************************************
Question.create!(
title:'Easy Challenge 9 - Processes',
scenario:
'
<p> View the list of scheduled processes </p>
<p> On most Unix systems, the "cron" file is used to store a list of scheduled processes which run on startup. This file can be particularly large depending on the system, so it would be easier to browse it with a text viewer such as "less". </p>
<p> This can be particularly useful in an investigation to determine if a user has created any custom scripts/tools that start once the system boots.</p>
<p> Use the "less /etc/init.d/cron" command at any location in the bash shell. What is the answer string at the end of the document? </p>
',
answer: 3400,
level_id: 1,
game_type_id: 1,
game_move_id: 1
)
#*********************************************************************************************
Question.create!(
title:'Easy Challenge 10 - "man" pages',
scenario:
'
<p> Browse the program manuals to find a specific option/function </p>
<p> The "man" command is perhaps one of the most useful built-in functions in Unix systems. It is used to browse the manual pages for each command or tool installed on the system. </p>
<p> By default, every tool that installed on a Unix system has a corresponding man, help or info file that can be used to view program information. </p>
<p> Use the "man" command followed by the argument "netstat". This will view the manual and usage docs for the “netstat” command. What does the "--route" parameter do? </p>
<ol>
  <li> Display a list of masqueraded connections </li>
  <li> Display the kernel routing tables </li>
  <li> Display summary statistics for each protocol </li>
</ol>
',
answer: 2,
level_id: 1,
game_type_id: 1,
game_move_id: 1
)
#*********************************************************************************************

#Formatted questions - Medium
#***********************************************************************************
Question.create!(
title: 'Medium Challenge 1 - Writing a for loop in bash',
scenario: 
'
<p> As well as a command line tool, the bash shell in Linux can also be used as a scripting language to automate tasks, which makes it a very valuable tool when performing data analysis or forensic investigation on a Linux machine. </p>
<p> Nearly every command or tool (built in or imported) can be automated using various shell functions. </p>
<p> Like many other scripting languages (Perl, Python, etc. ) bash has built in control loops and statements, </p>
<p> as well as logical and bitwise operators, among many other features. </p>
<p> For the purpose of this challenge you have to write a script that counts down from 10 to 0 using a for loop and outputs the data in the command window. </p>
<p> A detailed "for" loop tutorial is available here: http://www.cyberciti.biz/faq/bash-for-loop/ </p>
<p> Note that the output has to be separated by newlines, as follows: </p>
<p> 10 </p>
<p> 9 </p>
<p> 8 </p>
<p> 7 </p>
<p> 6 </p>
<p> 5 </p>
<p> 4 </p>
<p> 3 </p> 
<p> 2 </p>
<p> 1 </p>
<p> 0 </p>
<p> To complete this challenge, navigate to the "home/questions/meduim/loop" folder. After that, use a text editor of your choice (vim, gedit, etc.) to write the script file. Remember to add the line </p>
<p> #!/bin/bash </p>
<p> at the top of the script. </p> 
<p> This will tell the system that the default shell in use is bash. </p>
<p> After you\'ve written the script, change its permissions so that it can be executed using the "chmod" command: </p>
<p> chmod u+x [scriptname] </p>
<p> Finally, run your program and echo its output in the "check" script, located in the same folder: </p>
<p> ./[scriptname] | xargs ./check </p>
<p> If successful, the "check" script should return a value that can be used as a solution to this challenge. If not, you\'ll have to try again! </p>
',
answer: 'USER30086',
level_id: 2,
game_type_id: 1,
game_move_id:2
)
#***********************************************************************************
Question.create!(
title: 'Medium Challenge 2 - Investigating a browser history database',
scenario: 
'
<p> In a forensic investigation, a user\'s browser history files might reveal a lot of valuable information that could be used in court or otherwise. </p>
<p> Browser software store the user history using different methods. For the purpose of this challenge however, you will be examining a Mozilla Firefox history database.  </p>
<p> By default, Firefox stores the browser history along with other user-related  information in a database file called "places.sqlite". In Linux systems, this file is located in the hidden ".mozilla" folder, which is created in the user\'s home directory once Firefox is installed. </p>
<p> As the file name implies, this file could be examined by any number of SQL viewers available. </p>
<p> Navigate to the "home/questions/medium/browser" folder. </p>
<p> After that, use the "sqlitebrowser" tool pre-installed on the virtual machine to open the database file. </p>
<p> You could use the database name as a command line argument to open the file straight away. </p>
<p> What is the most often visited website (use only the domain name, without "http://" )? </p>
',
answer: 'hackforums.net',
level_id: 2,
game_type_id: 1,
game_move_id: 2
)
#***********************************************************************************
Question.create!(
title: 'Medium Challenge 4 - Processes',
scenario: 
'
<p> When performing a forensic investigation in a live and volatile environment, it is always a good idea to determine which processes and services are running, as this may provide valuable information on how the machine is configured and whether or not it\'s running any malicious software. </p>
<p> For this purpose, Linux has a built in "ps" command, which lists information on all processes running on the system, regardless of which user they belong to. The command has a multitude of functions and arguments that can be combined to view process related information. </p>
<p> The program\'s output can be very large however, depending on the system that\'s being investigated. </p>
<p> To view all processes running on the machine, you could use "ps aux" anywhere in the bash shell. </p>
<p> For this challenge, you are required to locate the "/sbin/init" process, which starts when the system boots.  </p>
<p> It is used to coordinate the boot process, configure the environment for the user and to load start up programs.  </p>
<p> If the program output is too large, you could filter the output with "grep". </p>
<p> To do so, run the command and pipe the output to "grep "/sbin/init". </p>
<p> What is the PID of the "/sbin/init" process? </p>
',
answer: 1,
level_id: 2,
game_type_id: 1,
game_move_id: 2
)
#***********************************************************************************
Question.create!(
title: 'Medium Challenge 5 - Hex viewer',
scenario: 
'
<p> Steganography is a very popular anti-forensics method that involves replacing bits of unused data in file structures to conceal information. Nearly every file can be used to conceal data, from media files to word-processed documents. </p>
<p> The only way to actually discover the hidden data in file structures is by performing pattern-oriented hex searches by using specialised forensic tools. </p>
<p> For the purpose of this challenge, we will be examining a file that has a hidden string in its data structure by using a simple hex viewer/editor.</p>
<p> Navigate to the "home/questions/medium/hex" folder and examine the file with the pre-installed "bless" hex editor. What is the answer string near the end of the file? </p>
',
answer: 3886123,
level_id: 2,
game_type_id: 1,
game_move_id: 2
)
#***********************************************************************************
Question.create!(
title: 'Medium Challenge 6 - Using "find" ',
scenario: 
'
<p> "find" is a versatile command in Linux that can be used to locate a file matching certain criteria in a file system. This tool comes built in with most if not all Linux distributions and has a multitude of options that can be used to customize its function. </p>
<p> This program can locate files based on file size, type, name, access times, etc. The tool also supports the use of regular expressions and can be used in scripts or even programming languages, making it a valuable asset in any forensic investigation. </p>
<p> For this challenge, you will use the "find" command to locate a file ending with a ".txt" extension. The command syntax is as follows: </p>
<p> find -type f -name [criteria] -exec [command] {} \; </p>
<p> Where "type -f" specifies that we are searching for a regular file, "-name " specifies the name criteria, and "-exec" the command to be executed on the file once (if) it\'s located. Since we are looking for a file that ends with ".txt", we could use "*.txt" as a name criteria. </p>
<p> Navigate to the "home/questions/medium/find2" folder and try to locate the file. What are its contents? </p>
',
answer: 1231242,
level_id: 2,
game_type_id: 1,
game_move_id: 2
)
#***********************************************************************************
Question.create!(
title: 'Medium Challenge 7 - Traffic analysis',
scenario: 
'
<p> Having an understanding of networking protocols and traffic could be a valuable aspect in any forensic investigation. Knowing how protocols operate could reveal important information about open network connections, backdoors, etc. when investigating a machine. </p>
<p> The two most popular open source tools for analysing traffic are Wireshark and tcpdump. tcpdump comes built in with most Linux distributions as a command line tool. Apart from traffic analysis, it can also be used to monitor traffic. It does not however, have a graphical interface which makes it a hard tool to use for beginners. </p>
<p> Wireshark is a similar tool and has a graphical user interface which makes it easier to use, which is why you will be using it for this challenge. </p>
<p> Navigate to the "questions/medium/wireshark" folder and open the "dns_query_response.pcap" file with Wireshark. Can you determine the network protocol in use? (in capitals) </p>
',
answer: 'DNS',
level_id: 2,
game_type_id: 1,
game_move_id: 2
)
#***********************************************************************************
Question.create!(
title: 'Medium Challenge 8 - Traffic analysis',
scenario: 
'
<p> Having an understanding of networking protocols and traffic could be a valuable aspect in any forensic investigation. Knowing how protocols operate could reveal important information about open network connections, backdoors, etc. when investigating a machine. </p>
<p> The two most popular open source tools for analysing traffic are Wireshark and tcpdump. tcpdump comes built in with most Linux distributions as a command line tool. Apart from traffic analysis, it can also be used to monitor traffic. It does not however, have a graphical interface which makes it a hard tool to use for beginners. </p>
<p> Wireshark is a similar tool and has a graphical user interface which makes it easier to use, which is why you will be using it for this challenge. </p>
<p> Navigate to the " questions/medium/wireshark " folder and open the "arp_resolution.pcap" file with wireshark. What is the full hardware address of the broadcasting device? (in capitals) </p>
',
answer: '00:16:CE:6E:8B:24',
level_id: 2,
game_type_id: 1,
game_move_id: 2
)
#***********************************************************************************
Question.create!(
title: 'Medium Challenge 9 - Traffic analysis',
scenario: 
'
<p> Having an understanding of networking protocols and traffic could be a valuable aspect in any forensic investigation. Knowing how protocols operate could reveal important information about open network connections, backdoors, etc. when investigating a machine. </p>
<p> The two most popular open source tools for analysing traffic are Wireshark and tcpdump. tcpdump comes built in with most Linux distributions as a command line tool. Apart from traffic analysis, it can also be used to monitor traffic. It does not however, have a graphical interface which makes it a hard tool to use for beginners. </p>
<p> Wireshark is a similar tool and has a graphical user interface which makes it easier to use, which is why you will be using it for this challenge. </p>
<p> Navigate to the " questions/medium/wireshark " folder and open the "tcp_handshake.pcap" file with wireshark. Can you determine the destination port of the TCP handshake process? </p>
',
answer: 80,
level_id: 2,
game_type_id: 1,
game_move_id: 2
)
#***********************************************************************************
Question.create!(
title: 'Medium Challenge 11 - Compiling a program in C',
scenario: 
'
<p> Since Linux is based on the C programming language, all distributions include a built in C compiler called GCC. Knowing how compiled programming languages work could be a valuable asset in a forensic investigation. Investigators would be able to determine which process registers are used and what instructions are being sent to the CPU. </p>
<p> Most malware today has encrypted or otherwise hidden source code, and the only way to find out how the program is interacting with the system is to disassemble it and analyse it on a machine code level. </p>
<p> For the purpose of this challenge, we will be using GCC\'s simplest function - compiling several lines of C code and running the executable produced. Navigate to the "home/questions/medium/c" folder.  </p>
<p> After that, compile the "prog.c" file using the GCC compiler and run the resulting executable. What is the output? </p>
',
answer: 'gcc-eip3001',
level_id: 2,
game_type_id: 1,
game_move_id: 2
)

#***********************************
Question.create!(
title:'Hard Challenge 1 - Nmap port scanning',
scenario:
'
<p> During a forensic investigation, you have been asked to identify vulnerabilities on a remote target machine. You are required to gather as much network information as possible on the target host – number of open ports, running services, operating system fingerprints, etc. </p>
<p> Luckily, one of your team members has provided you with a forensic copy of the target host, which is currently running in a lab environment on your local network with the address 192.168.80.130. </p>
<p> The best tool for this job is nmap (abbreviated for network mapper), which is perhaps the most useful and popular port scanner available. It has a variety of functions include but are in no way limited to: </p>
<ol>
  <li> Discovering active hosts on a network using different techniques </li>
  <li> Performing thorough port scans and identifying services running on them </li>
  <li> Determining the target’s operating system by active OS fingerprinting </li>
  <li> Scanning the entire internet </li>
  <li> Crafting spoofed packets </li>
  <li> Automating tasks with the Nmap Scripting Engine (NSE) </li>
</ol>
<p> As well as being the best port scanner available on the internet, Nmap has also been featured in several well-known films, including The Matrix Reloaded and Die Hard 4 (http://www.nma.org/movies.html). </p>
<p> Launch an aggressive scan on the target machine with the arguments "-p0-65536" and "-A". The former specifies the full range of ports to be scanned, while the latter enables “aggressive” scanning, which instructs the tool to launch more probes against the system and reveal more information as a result. </p>
<p> Can you determine on which port the “Unreal IRC” service is running? </p>
',
answer: 6667,
level_id: 3,
game_type_id: 1,
game_move_id: 3
)
#***********************************
Question.create!(
title:'Hard Challenge 2 - Using Metasploit framework',
scenario:
'
<p> During a forensic investigation, you and your team discover that an attacker gained root access to a system by exploiting an unpatched IRC service running on a host machine.  To understand how the attacker managed to exploit the target, your team have asked you to recreate the attack and try to gain access to the system by exploiting the same vulnerable service.</p>
<p> You’ve managed to obtain a forensic copy of the machine and run it in a lab environment.</p>
<p> The address of the target machine is this case is 192.168.80.130. </p>
<p> The simplest way to exploit a vulnerability on a target system is by using the Metasploit Framework. This is a suite of penetration testing tools developed by Rapid7, with various contributions from the pentesting community. </p>
<p> It is updated on a regular basis and has the latest exploit code pre-loaded, which makes it a valuable tool when conducting pentests.</p>
<p> Rather than reverse engineering software and discovering vulnerabilities for it, users could just search the framework and load exploit code for said software, if it’s available. Alternatively, users could write (or download from another source) exploit code and import it in the framework. </p>
<p> To use MSF, run the “msfconsole” command with sudo (default password for the VM is “team”). The tool should take several seconds to load. After that, you’d need to search for the exploit in MSF’s database. </p>
<p> Before doing anything else, you’d need to check if exploit code for said vulnerable service is available. To do this, type “search unrealirc” in the msf command line. This should display the available exploit code for the Unreal IRC service.</p>
<p> Once the results display and you’ve found the appropriate exploit code, type “use” followed by the exploit name. If the exploit has loaded successfully, the command line should change, including the exploit name after the “msf” string. </p>
<p> In MSF, every exploit has individual options and payloads that can be configured to tailor the attack. Type “show options” to display these. After this, you’d need to specify the remote target to attack. To do this, type “set RHOST”, followed by the target address.</p>
<p> After the settings have been configured, type “exploit” and wait for the program to connect to the target machine. You should get root access after that’s completed. </p>
<p> The vulnerable machine should have a file with the answer for this challenge located in the root Desktop directory. What are its contents? </p>
<p> #Note: To terminate the remote shell, press CTRL + C. After that, you can use CTRL + Z to exit the framework completely. </p>
',
answer:'3AAF12',
level_id: 3,
game_type_id: 1,
game_move_id: 3
)
#***********************************
Question.create!(
title:'Hard challenge 3 - Brute forcing a file',
scenario:
',
<p> Whilst investigating a seized USB stick from a crime scene, you discover a password-locked archive file. Your team members have asked you to find out how to gain access to the contents of the file, as it might reveal important information about the user’s activities. </p> 
<p> The file is a RAR archive, secured by a simple text password without encryption. You decide that the best way to go about this is to use a brute force attack to guess the archive’s password.</p> 
<p> A brute force attack attempts to crack a password by cycling through combinations of words and letters until it gains access. Due to the large scale of numbers and letters a user could use to secure their files, a brute force attack may take a very long time to complete. </p>
<p> Although better hardware will yield quicker results, a brute force attack may take hours, days, weeks, even years to complete. Brute force attacks can be used on almost anything protected by a password – files, user accounts, network device, etc.</p>
<p> This is not efficient in pentesting however – most administrators configure devices to lock out users for a time after several failed attempts at a password.</p>
<p> There are many popular password cracking tools available – Aircrack, Cain and Abel, John The Ripper, etc. However, since this is a relatively small file secured by a simple password, we’ll use rarcrack, a smaller tool more suited for this scenario.</p>
<p> Navigate to the “home/questions/hard/archive” and locate the “archive.rar” file. To view the usage of the rarcrack program, enter “rarcrack --help” anywhere in the shell. </p>
<p> After you’ve managed to obtain the file’s password, use the “unrar” program with the “e” argument to extract and parse its contents. Use the solution string in the archive as an answer to this challenge.</p>
',
answer:'passwordcracked00',
level_id: 3,
game_type_id: 1,
game_move_id: 3
)







