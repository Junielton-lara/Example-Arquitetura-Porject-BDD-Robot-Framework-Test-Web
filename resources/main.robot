*** Settings ***
## 1.0.5
##########################################################################
#                                 Libraries                              #
##########################################################################

Library  SeleniumLibrary
Library  FakerLibrary  locale=pt_BR
Library  DebugLibrary
Library  RequestsLibrary
Library  OperatingSystem
Library  Collections
Library  DateTime
Library  String
Library  ArchiveLibrary

##########################################################################
#                                 Resources                              #
##########################################################################
Variables  ../resources/environments/env.app.yaml
##########################################################################
#                                 Keywords                               #
##########################################################################
Resource  ./keywords/kws_webautomation.robot
Resource  ./keywords/kws_global.robot
##########################################################################
#                                 Elementos                              #
##########################################################################
Resource  ./pages/pages_home.robot