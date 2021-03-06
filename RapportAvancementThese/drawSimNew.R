#Auteur: Fippo Fitime Louis
#Date:06-11-2013
#But: fonction permettant de tracer toutes les simulations effectuées


drawSimNew <-function(JeuxDonneASB,nomf)
{
  #inclusion des fichiers sources
 
  source("drawAllNew.R");


  #construction du nom du fichier de sortie

  #bornbis=born;
  #bornbis=as.character(bornbis)
  #nomFichier=paste(c(nomf, bornbis,"pdf"), collapse = ".");

  #on redirige la sortie de l'image
  #pdf(nomFichier)  
  source("repere.R");
  source("drawsignalNew.R");
  par(mfrow=c(2,2));

  #on va créer un même fichier pour tout le monde

  #on définit le repère
  noms=row.names(JeuxDonneASB);
  
  
  #borne=c(1,5,9,13,17,21,25);
   borne=c(17,21,25,29);
  
  for(i in borne)
  {
    repere(noms[i]);
    drawAllNew(JeuxDonneASB,i,nomf);
    
  }
  
}
