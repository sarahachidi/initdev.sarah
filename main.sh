#include <stdio.h>
#include <stdlib.h>
void copier ( FILE *f, int i)
{
 FILE *c = NULL;
 char s;
 switch (i){
 case 1 :  { c=fopen("MainMin.txt","r");
  while (!feof(c)){
   fscanf (c,"%c",&s);
   fprintf(f,"%c",s);
 } break;
 }

 case 2 :  { c=fopen("MaincppMin.txt","r");
  while (!feof(c)){
   fscanf (c,"%c",&s);
   fprintf(f,"%c",s);
 }
 } break;

  case 4 :  { c=fopen("Latexmin.txt","r");
  while (!feof(c)){
   fscanf (c,"%c",&s);
   fprintf(f,"%c",s);
 }
 } break;

 default: break;
 }


}




int main()
{
     FILE *NOM_FICHIER;
 char NOM[30];
 int n;

printf("\t Veuillez choisir un langage de programmatin \n\n");

printf("**Pour ecrire un programme en 'c' tapez 1 \n**Pour ecrire un programme en 'c++' tapez 2 \n**Pour ecrire un programme en 'python' tapez 3 \n**Pour ecrire un programme en 'Latex' tapez 4 \n");
scanf("%d", & n);

switch (n) {
case 1 : {printf("Entrez le nom de votre programme :\n"); scanf("%s", & NOM); NOM_FICHIER = fopen( strcat(NOM,".c") , "w"); copier(NOM_FICHIER,n); printf("Votre programme en 'c' a bien ete cree \n"); break;}
case 2 : {printf("Entrez le nom de votre programme :\n"); scanf("%s", & NOM); NOM_FICHIER = fopen( strcat(NOM,".cpp") , "w"); copier(NOM_FICHIER,n); printf("Votre programme en 'c++' a bien ete cree \n"); break;}
case 3 : {printf("Entrez le nom de votre programme :\n"); scanf("%s", & NOM); NOM_FICHIER = fopen( strcat(NOM,".py") , "w"); printf("Votre programme en 'Python' a bien ete cree \n"); break;}
case 4 : {printf("Entrez le nom de votre programme :\n"); scanf("%s", & NOM); NOM_FICHIER = fopen( strcat(NOM,".tex") , "w"); copier(NOM_FICHIER,n); printf("Votre programme en 'Latex' a bien ete cree \n"); break;}
default : printf(" Le langage que vous avez choisis n'est pas pris en charge \n ");
}
    return 0;
}
