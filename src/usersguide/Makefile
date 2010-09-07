# 
# $Id: Makefile,v 1.15 2010/09/07 23:52:46 bruno Exp $
#
# @Copyright@
# 
# 				Rocks(r)
# 		         www.rocksclusters.org
# 		         version 5.4 (Maverick)
# 
# Copyright (c) 2000 - 2010 The Regents of the University of California.
# All rights reserved.	
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
# 
# 1. Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright
# notice unmodified and in its entirety, this list of conditions and the
# following disclaimer in the documentation and/or other materials provided 
# with the distribution.
# 
# 3. All advertising and press materials, printed or electronic, mentioning
# features or use of this software must display the following acknowledgement: 
# 
# 	"This product includes software developed by the Rocks(r)
# 	Cluster Group at the San Diego Supercomputer Center at the
# 	University of California, San Diego and its contributors."
# 
# 4. Except as permitted for the purposes of acknowledgment in paragraph 3,
# neither the name or logo of this software nor the names of its
# authors may be used to endorse or promote products derived from this
# software without specific prior written permission.  The name of the
# software includes the following terms, and any derivatives thereof:
# "Rocks", "Rocks Clusters", and "Avalanche Installer".  For licensing of 
# the associated name, interested parties should contact Technology 
# Transfer & Intellectual Property Services, University of California, 
# San Diego, 9500 Gilman Drive, Mail Code 0910, La Jolla, CA 92093-0910, 
# Ph: (858) 534-5815, FAX: (858) 534-7345, E-MAIL:invent@ucsd.edu
# 
# THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS''
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
# @Copyright@
#
# $Log: Makefile,v $
# Revision 1.15  2010/09/07 23:52:46  bruno
# star power for gb
#
# Revision 1.14  2009/05/01 19:06:47  mjk
# chimi con queso
#
# Revision 1.13  2009/02/06 14:19:59  bruno
# updated for 5.1
#
# Revision 1.12  2008/10/18 00:55:44  mjk
# copyright 5.1
#
# Revision 1.11  2008/03/06 23:41:30  mjk
# copyright storm on
#
# Revision 1.10  2007/06/23 04:03:18  mjk
# mars hill copyright
#
# Revision 1.9  2006/09/11 22:46:56  mjk
# monkey face copyright
#
# Revision 1.8  2006/08/10 00:09:23  mjk
# 4.2 copyright
#
# Revision 1.7  2005/10/18 20:20:31  bruno
# automatically set the copyright date
#
# Revision 1.6  2005/10/12 18:08:27  mjk
# final copyright for 4.1
#
# Revision 1.5  2005/09/16 01:02:07  mjk
# updated copyright
#
# Revision 1.4  2005/05/24 21:21:45  mjk
# update copyright, release is not any closer
#
# Revision 1.3  2005/04/05 20:31:52  nadya
# move logic of creating rocks.dsl, rocks.css and stylesheet-images to Rules.mk
# Add target predoc in order to make docs in a local directory
#
# Revision 1.2  2004/09/01 20:56:39  dmac
# Tweaks
#
# Revision 1.1  2004/08/27 22:57:19  dmac
# Initial Checkin
#
# Revision 1.6  2004/03/25 03:16:12  bruno
# touch 'em all!
#
# update version numbers to 3.2.0 and update copyrights
#
# Revision 1.5  2004/02/12 00:58:09  nadya
# fix typo
#
# Revision 1.4  2004/02/12 00:01:34  nadya
# add png files
# update html target
#
# Revision 1.3  2004/02/07 00:59:07  nadya
# use variables for version name and pubdate
#
# Revision 1.2  2004/02/03 01:13:14  nadya
# add css file
# rename ldp.dsl as rocks.dsl
#
# Revision 1.1  2003/12/31 17:15:07  bruno
# added a usersguide for the intel roll
#
#

PKGROOT		= /var/www/html/roll-documentation/backup/$(VERSION)
REDHAT.ROOT	= $(PWD)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

SEDSPEC += \
	-e 's%@VERSION_NAME@%$(VERSION_NAME)%g' \
	-e 's%@PUBDATE@%$(PUBDATE)%g' \
	-e 's%@YEAR@%$(YEAR)%g'

default: $(NAME).spec ../$(NAME)-$(VERSION).tar.gz

html: predoc index.sgml requirements.sgml
	jw --backend html --dsl $(PWD)/rocks.dsl#html index.sgml

index.sgml: index.sgml.in
	$(SED) $(SEDSPEC) $^ > $@

requirements.sgml: requirements.sgml.in
	$(SED) $(SEDSPEC) $^ > $@

pdf: predoc index.sgml requirements.sgml
	jw --backend pdf --dsl $(PWD)/rocks.dsl#print index.sgml

build: html pdf

install:: build
	mkdir -p $(ROOT)/$(PKGROOT)/images
	mkdir -p $(ROOT)/$(PKGROOT)/stylesheet-images
	install -ma+r index.pdf 	$(ROOT)/$(PKGROOT)/$(NAME).pdf
	install -ma+r *.html    	$(ROOT)/$(PKGROOT)/
	install -ma+r images/*.png	$(ROOT)/$(PKGROOT)/images/
	install -ma+r stylesheet-images/{*.gif,*.png} \
		$(ROOT)/$(PKGROOT)/stylesheet-images/
	install -ma+r rocks.css $(ROOT)/$(PKGROOT)/

clean::
	rm -f *.html
	rm -f index.pdf
	rm -f index.sgml requirements.sgml


