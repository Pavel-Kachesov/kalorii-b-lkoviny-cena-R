# kalorii-b-lkoviny-cena-R
Jednoduchá kalkulačka pro zdravou stravu s grafickými možnostmi 
### Konkrétní cíle práce:

Hlavní cíl:
Podle mého názoru všichni aplikace pro sledování stravy mají přespříliš hodně zbytečných informaci a požadavků, proto jsem rozhodl udělat skript, který bude potřebovat minimální počet dat a bude maximálně užitečný. (data které budou nutné : cena, kalorii, bílkoviny, vlákniny, váha, váha člověka, procento tuku v člověku.)

1. **Sledování stravy:**
   - Zaznamenávání kalorií, bílkovin, vlákniny a nákladů na jídlo za den.
2. **Výpočet bazálního metabolizmu:**
   - Výpočet bazálního metabolizmu na základě zadané váhy a procenta tuku.
3. **Grafické zobrazení dat:**
   - Vytváření grafu změn váhy v čase.

### Původ dat:
1. **Stravovací údaje:**
   - Uživatel ručně zadává informace o váze potravy, kalorické hodnotě na 100 g, množství bílkovin a vlákniny na 100 g a cenu potravy.
2. **Váhová data:**
   - Uživatel ručně zadává váhu a čas.

### Číselné a grafické výstupy:
1. **Číselné výstupy:**
   - Denní příjem kalorií, bílkovin, vlákniny a nákladů na jídlo.
   - Bazální metabolismus a doporučený denní příjem bílkovin, kalorii a vlákniny.
2. **Grafické výstupy:**
   - Graf změn váhy v čase.

Cyklus funguje donekonečna, každý den v 00:00 se resetuje a začíná počítat kalorii atd. od 0. Ale schová daty z minulého dne ve vektoru, proto za týden používaní skriptu bude možná sumarizace dat za týden. Taký při pomoci příkazů 4 a 5 je možnost zadávat daty ohledné změn své váhy v čase a pak se dívat na graf se změnami. 
