<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8"/>
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
                        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
                            <title>Event Organizer</title>
                            <!-- Font Awesome -->
                            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"/>
                                <!-- Bootstrap core CSS -->
                                <link href="css/bootstrap.min.css" rel="stylesheet"/>
                                    <!-- Material Design Bootstrap -->
                                    <link href="css/mdb.min.css" rel="stylesheet"/>
                                        <!-- Your custom styles (optional) -->
                                        <link rel="stylesheet" type="text/css" href="css/style.css"/>
                                            <script type="text/javascript" src="js/jquery.min.js" ></script>
                                            <script type="text/javascript" src="js/home.js"> </script>
                                            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
            </head>
            <body>
                <div class="container-fluid overflow">
                    <div class="row overflow-auto force-overflow">
                        <xsl:for-each select="events/event">
                        <div style="margin:10 10 10 10">
                            <div class="accordion" id="accordionExample">
                                <h3 class="text-center"><xsl:value-of select="event_name"/></h3>
                                <div class="card">
                                    <div class="card-header" id="headingOne">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                Evenement
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                        <div class="card-body">
                                                
                                                    <p>
                                                       <xsl:value-of select="description"/> </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingTwo">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                Description
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li> <strong>Date</strong> : <xsl:value-of select="event_dates/begining_date"/> ---- <xsl:value-of select="event_dates/ending_date"/> 
                                                </li>
                                                <li><strong>Lieu</strong> : <xsl:for-each select="event_locations/location">
                                                    <xsl:value-of select="."/>/
                                                </xsl:for-each></li>
                                                <li><strong>Organisateur</strong> : 
                                                    <ul>
                                                        <li>Prenom : <xsl:value-of select="event_organizers/organizer/first_name"/></li>
                                                        <li>Nom : <xsl:value-of select="event_organizers/organizer/last_name"/></li>
                                                        <li>Numero : <xsl:value-of select="event_organizers/organizer/phone_number"/></li>
                                                        <li>Email : <xsl:value-of select="event_organizers/organizer/email"/></li>
                                                        <li>Adresse :<xsl:value-of select="event_organizers/organizer/address"/></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingThree">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                Sponsors
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li>
                                                    <strong>Sponsors</strong> :
                                                    <xsl:for-each select="event_sponsors/sponsor">
                                                    <p style="color:green">Entreprise : <xsl:value-of select="company_name"/>:</p>
                                                    <ul>
                                                        <li>Prenom : <xsl:value-of select="last_name"/></li>
                                                        <li>Nom : <xsl:value-of select="first_name"/></li>
                                                        <li>Numero : <xsl:value-of select="phone_number"/></li> 
                                                        <li>Email : <xsl:value-of select="email"/></li>
                                                        <li>Adresse : <xsl:value-of select="address"/></li>
                                                    </ul>
                                                   </xsl:for-each>
                                                </li>
                                                
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingFour">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                Invites
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li>
                                                    <strong>Invitées:</strong> :
                                                    <ul>
                                                        <li>Nom :<xsl:value-of select="guests/guest/name"/></li>
                                                        <li>Fonction:<xsl:value-of select="guests/guest/position"/></li>
                                                        <li>Phone Number:<xsl:value-of select="guests/guest/phone_number"/></li>
                                                        <li>Email:<xsl:value-of select="guests/guest/email"/></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingFour">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                            Membres du club organisateur
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <ul>
                                            <li>
                                                <strong>Membres du club organisateur:</strong> :
                                                <ul>
                                                    <div style="color:green">Responsable:</div>
                                                    <li>Nom :<xsl:value-of select="team_members/member/name"/></li>
                                                    <li>Fonction:<xsl:value-of select="team_members/member/position"/></li>
                                                    <li>Phone Number:<xsl:value-of select="team_members/member/phone_number"/></li>
                                                    <li>Email:<xsl:value-of select="team_members/member/email"/></li>
                                                    <li>Nombre de membres du club:<xsl:value-of select="number_team_members"/></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingFour">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                Planning de l'evenement
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li>
                                                    <strong>Planing de l'evenement:</strong> :
                                                    <ul>
                                                       <li>Deroulement de l'evenement:<xsl:value-of select="event_schedule/sub_event/description"/></li>
                                                        <li>Dates:<xsl:value-of select="event_schedule/sub_event/dates"/></li>
                                                        <li>Location:<xsl:value-of select="event_schedule/sub_event/location"/></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                            </div>
                        </div>
                        </div>
                        </xsl:for-each>
                    </div>
                </div>
                
                
                
                <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
                </script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
