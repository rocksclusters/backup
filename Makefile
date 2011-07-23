#
# $Id: Makefile,v 1.14 2011/07/23 02:30:13 phil Exp $
#
# @Copyright@
# 
# 				Rocks(r)
# 		         www.rocksclusters.org
# 		         version 5.4.3 (Viper)
# 
# Copyright (c) 2000 - 2011 The Regents of the University of California.
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
# 	Development Team at the San Diego Supercomputer Center at the
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
# Revision 1.14  2011/07/23 02:30:13  phil
# Viper Copyright
#
# Revision 1.13  2011/04/22 19:55:23  phil
# Test Checkin
#
# Revision 1.12  2010/09/07 23:52:46  bruno
# star power for gb
#
# Revision 1.11  2009/05/01 19:06:47  mjk
# chimi con queso
#
# Revision 1.10  2009/02/06 14:19:58  bruno
# updated for 5.1
#
# Revision 1.9  2008/10/18 00:55:44  mjk
# copyright 5.1
#
# Revision 1.8  2008/03/06 23:41:30  mjk
# copyright storm on
#
# Revision 1.7  2007/06/23 04:03:17  mjk
# mars hill copyright
#
# Revision 1.6  2006/09/11 22:46:55  mjk
# monkey face copyright
#
# Revision 1.5  2006/08/10 00:09:22  mjk
# 4.2 copyright
#
# Revision 1.4  2005/10/12 18:08:26  mjk
# final copyright for 4.1
#
# Revision 1.3  2005/09/16 01:02:06  mjk
# updated copyright
#
# Revision 1.2  2005/05/24 21:21:45  mjk
# update copyright, release is not any closer
#
# Revision 1.1  2004/08/20 20:51:08  dmac
# Initial Checkin
#
# Revision 1.2  2004/03/25 03:16:11  bruno
# touch 'em all!
#
# update version numbers to 3.2.0 and update copyrights
#
# Revision 1.1  2003/09/11 06:01:13  bruno
# initial packaging
#
# Revision 1.1  2003/07/23 17:06:55  bruno
# initial release
###
#

-include $(ROLLSROOT)/etc/Rolls.mk
include Rolls.mk

default:	roll

