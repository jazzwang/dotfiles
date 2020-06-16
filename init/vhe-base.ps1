## Note: if you get an error you might need to change the execution policy (i.e. enable Powershell) with
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

## NOTE: install to specified folder 'c:\scoop'
## https://techformist.com/install-scoop-for-command-line-nirvana/
$env:SCOOP='E:\writable\scoop'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

scoop install git

# make Symlinks in Windows available
## https://stackoverflow.com/questions/32847697/windows-specific-git-configuration-settings-where-are-they-set/32849199#32849199
## https://www.joshkel.com/2018/01/18/symlinks-in-windows/
[environment]::setEnvironmentVariable('MSYS','winsymlinks:nativestrict','User')

## add scoop bucket

scoop bucket add java
scoop bucket add extras
scoop bucket add nonportable
scoop bucket add versions

## Basic Environment - Editor

scoop install vscode-portable

## Programming Language - Python

scoop install python

## Programming Language - Java / Scala

scoop install ojdkbuild8-full
scoop install sbt

## Programming Language - Node.js (JavaScript)

scoop install nodejs-lts-np

## Big Data Framework - Hadoop, Spark

scoop install hadoop-winutils
scoop install spark