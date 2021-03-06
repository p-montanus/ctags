/*
*   Copyright (c) 2008, David Fishburn
*
*   This source code is released for free distribution under the terms of the
*   GNU General Public License version 2 or (at your option) any later version.
*
*   This module contains functions for generating tags for Ant language files.
*/

/*
*   INCLUDE FILES
*/
#include "general.h"  /* must always come first */

#include <string.h>
#include "parse.h"

static const tagRegexTable const antTagRegexTable [] = {
	{"^[ \t]*<[ \t]*project[^>]+name=\"([^\"]+)\".*", "\\1",
	 "p,project,projects", NULL},
	{"^[ \t]*<[ \t]*target[^>]+name=\"([^\"]+)\".*", "\\1",
	 "t,target,targets", NULL},
	{"^[ \t]*<[ \t]*property[^>]+name=\"([^\"]+)\".*", "\\1",
	 "P,property,property", NULL},
	{"^[ \t]*<[ \t]*import[^>]+file=\"([^\"]+)\".*", "\\1",
	 "i,import,imports", NULL}
};

/*
*   FUNCTION DEFINITIONS
*/

extern parserDefinition* AntParser (void)
{
	static const char *const extensions [] = { "build.xml", NULL };
	static const char *const patterns [] = { "build.xml", NULL };
	parserDefinition* const def = parserNew ("Ant");
	def->extensions = extensions;
	def->patterns = patterns;
	def->tagRegexTable = antTagRegexTable;
	def->tagRegexCount = COUNT_ARRAY (antTagRegexTable);
	def->method     = METHOD_NOT_CRAFTED|METHOD_REGEX;
	return def;
}

/* vi:set tabstop=4 shiftwidth=4: */
