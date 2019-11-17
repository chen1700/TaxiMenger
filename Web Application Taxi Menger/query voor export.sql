﻿SELECT Klant.KlantID, Klant.Datum_Toegevoegd, Klant.Klant_Naam, Klant.Telnummer, Klant.Hulpmiddel, Klant.Woonplaats, Klant.Bijzonderheden, Klant.Factuuradres, Klant.Debiteurnummer, Rit.RitID, Rit.Rit_Datum, Rit.Tijd, Rit.Ophaaladres, Rit.Bestemmingsadres, Rit.Personen, Rit.ChauffeurID, Chauffeur.ChauffeurNaam, Rit.AutoID, Auto.Kenteken, Auto.Model, Auto.Merk, Auto.Soort_Wagen, Auto.Zitplaatsen From Klant INNER JOIN Rit ON Klant.KlantID=Rit.KlantID  INNER JOIN Chauffeur ON Rit.AutoID=Chauffeur.ChauffeurID  INNER JOIN Auto ON Rit.AutoID=Auto.AutoID WHERE Rit_Datum BETWEEN CONVERT (DATE, GETDATE()) and CONVERT (DATE, GETDATE() - 7)
