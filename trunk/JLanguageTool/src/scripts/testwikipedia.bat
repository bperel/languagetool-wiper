@ECHO off
:: Check command line parameters
IF (%2)==() GOTO usage
IF (%1)==() GOTO usage
IF (%1)==(?) GOTO usage
IF (%1)==(/?) GOTO usage
IF (%1)==(-?) GOTO usage
IF (%1)==(--?) GOTO usage
IF (%1)==(/help) GOTO usage
IF (%1)==(-help) GOTO usage
IF (%1)==(--help) GOTO usage

java -cp commons-lang-2.4.jar;bliki-3.0.3.jar;LanguageTool.jar de.danielnaber.languagetool.dev.wikipedia.CheckWikipediaDump - %1 %2 %3
GOTO eof

:usage
ECHO Usage: %0 lang wikipediaXmlDump 
ECHO Where:
ECHO - lang is a language code such as 'en' or 'de';
ECHO - wikipediaXmlDump is the path to an unpacked Wikipedia XML dump.
ECHO Example:
ECHO - %0 de dewiki-20101012-pages-articles-partly.xml

:eof