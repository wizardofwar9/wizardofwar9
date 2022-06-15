<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER totalTTC"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" totalBoucles="5000000" arrondiAuto="vrai" epaisseurPoint="2" nbDecimales="8" epaisseurLigne="2" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#boisson" algoitem="boisson EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#plat" algoitem="plat EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#supplément" algoitem="supplément EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#totalHT" algoitem="totalHT EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#TVA" algoitem="TVA EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#totalTTC" algoitem="totalTTC EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#quantité" algoitem="quantité EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#quantié_platen_stock" algoitem="quantié_platen_stock EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#quantié_platen_stock#4#pasliste" algoitem="quantié_platen_stock PREND_LA_VALEUR 4"/>
        <item code="2#boisson#pasliste" algoitem="LIRE boisson"/>
        <item code="2#quantité#pasliste" algoitem="LIRE quantité"/>
        <item code="5#boisson#boisson*quantité#pasliste" algoitem="boisson PREND_LA_VALEUR boisson*quantité"/>
        <item code="3#boisson#0#pasliste" algoitem="AFFICHER boisson"/>
        <item code="2#plat#pasliste" algoitem="LIRE plat"/>
        <item code="6#plat>4" algoitem="SI (plat>4) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#rupture de stock  /!\#0" algoitem="AFFICHER &quot;rupture de stock  /!\&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="20#plat=plat-1#0" algoitem="AFFICHERCALCUL plat=plat-1"/>
        <item code="2#quantité#pasliste" algoitem="LIRE quantité"/>
        <item code="5#plat#plat*quantité#pasliste" algoitem="plat PREND_LA_VALEUR plat*quantité"/>
        <item code="3#plat#0#pasliste" algoitem="AFFICHER plat"/>
        <item code="2#supplément#pasliste" algoitem="LIRE supplément"/>
        <item code="2#quantité#pasliste" algoitem="LIRE quantité"/>
        <item code="5#supplément#supplément*quantité#pasliste" algoitem="supplément PREND_LA_VALEUR supplément*quantité"/>
        <item code="5#totalHT#boisson+plat+supplément#pasliste" algoitem="totalHT PREND_LA_VALEUR boisson+plat+supplément"/>
        <item code="3#totalHT#0#pasliste" algoitem="AFFICHER totalHT"/>
        <item code="2#TVA#pasliste" algoitem="LIRE TVA"/>
        <item code="5#totalTTC#totalHT*TVA#pasliste" algoitem="totalTTC PREND_LA_VALEUR totalHT*TVA"/>
        <item code="3#totalTTC#0#pasliste" algoitem="AFFICHER totalTTC"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
