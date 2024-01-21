#Funkci 
math = function(x, y, z){
  x = x + y * z / 100
}

kalorii = 0 
bilkoviny = 0
vlaknina = 0
cena = 0

#vektory pro tyden 
ka = c()
ba = c()
va = c()
ce = c()
čas = c()
vaha = c()

#Cyklus

while(TRUE){
  time = format(Sys.time(), "%e")
  cat(" ", "\n")
  cat("Zvolte příkaz : 1 = Přídat jídlo, 2 = vypočítat můj bazalní metabolizmus, 3 = sumarizace mých dat za tyden, 4 = stanovení mé váhy, 5 = udělej graf ze změn mé vahy", "\n")
  cat(" ", "\n")
  příkaz = readline(prompt = "")
  if (!is.na(příkaz) && příkaz >= 1 && příkaz <= 5){
    if (příkaz == 1){
      today = format(Sys.time(), "%e")
      if(time != today){
        ka <- append(k, kalorii)
        ba <- append(b, bilkoviny)
        va <- append(v, vlaknina)
        ce <- append(c, cena)
        
        # Získání dat z konzole
        while (TRUE) {
          cat("Zadejte vahu jídla:", "\n")
          input <- readline(prompt = "")
          if (!grepl("[^0-9.]", input)) {
            vah <- as.numeric(sub(",", ".", input)) 
            break
          } else {
            cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
          }
        }
        # Získání dat z konzole
        while (TRUE) {
          cat("Zadejte kalorii na 100 g: ", "\n")
          input <- readline(prompt = "")
          if (!grepl("[^0-9.]", input)) {
            kalorijnost <- as.numeric(sub(",", ".", input)) 
            break
          } else {
            cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
          }
        }
        # Získání dat z konzole
        while (TRUE) {
          cat("Zadejte bikoviny na 100 g: ", "\n")
          input <- readline(prompt = "")
          if (!grepl("[^0-9.]", input)) {
            bilk <- as.numeric(sub(",", ".", input)) 
            break
          } else {
            cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
          }
        }
        # Získání dat z konzole
        while (TRUE) {
          cat("Zadejte počet vlakniny na 100 g: ", "\n")
          input <- readline(prompt = "")
          if (!grepl("[^0-9.]", input)) {
            vlakn <- as.numeric(sub(",", ".", input)) 
            break
          } else {
            cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
          }
        }
        # Získání dat z konzole
        while (TRUE) {
          cat("Zadejte kolik stalo jidlo: ", "\n")
          input <- readline(prompt = "")
          if (!grepl("[^0-9.]", input)) {
            cen <- as.numeric(sub(",", ".", input)) 
            break
          } else {
            cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
          }
        }

        # vypo4et
        kalorii = math(kalorii, kalorijnost, vah)
        bilkoviny = math(bilkoviny, bilk, vah)
        vlaknina = math(vlaknina, vlakn, vah)
        cena = cena + cen
      
        
        # Výpis získaných dat
        cat(" ", "\n")
        cat("Dnes jste sned:", kalorii, "kalorii", bilkoviny, "g bilkovin", vlaknina,"g vlakniny", "\n")
        cat("Dnes jste utratil za jidlo:",cena , "\n")
        cat(" ", "\n")
        
      }
      else{

        # Získání dat z konzole
        while (TRUE) {
          cat("Zadejte vahu jídla:", "\n")
          input <- readline(prompt = "")
          if (!grepl("[^0-9.]", input)) {
            vah <- as.numeric(sub(",", ".", input)) 
            break
          } else {
            cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
          }
        }
        # Získání dat z konzole
        while (TRUE) {
          cat("Zadejte kalorii na 100 g: ", "\n")
          input <- readline(prompt = "")
          if (!grepl("[^0-9.]", input)) {
            kalorijnost <- as.numeric(sub(",", ".", input)) 
            break
          } else {
            cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
          }
        }
        # Získání dat z konzole
        while (TRUE) {
          cat("Zadejte bikoviny na 100 g: ", "\n")
          input <- readline(prompt = "")
          if (!grepl("[^0-9.]", input)) {
            bilk <- as.numeric(sub(",", ".", input)) 
            break
          } else {
            cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
          }
        }
        # Získání dat z konzole
        while (TRUE) {
          cat("Zadejte počet vlakniny na 100 g: ", "\n")
          input <- readline(prompt = "")
          if (!grepl("[^0-9.]", input)) {
            vlakn <- as.numeric(sub(",", ".", input)) 
            break
          } else {
            cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
          }
        }
        # Získání dat z konzole
        while (TRUE) {
          cat("Zadejte kolik stalo jidlo: ", "\n")
          input <- readline(prompt = "")
          if (!grepl("[^0-9.]", input)) {
            cen <- as.numeric(sub(",", ".", input)) 
            break
          } else {
            cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
          }
        }
        

        #vypo4et 
        
        kalorii = math(kalorii, kalorijnost, vah)
        bilkoviny = math(bilkoviny, bilk, vah)
        vlaknina = math(vlaknina, vlakn, vah)
        cena = cena + cen
        
        
        # Výpis získaných dat
        cat(" ", "\n")
        cat("Dnes jste sned:", kalorii, "kalorii", bilkoviny, "g bilkovin", vlaknina,"g vlakniny", "\n")
        cat("Dnes jste utratil za jidlo:",cena , "\n")
        cat(" ", "\n")
        
      }
    }
    else if (příkaz == 2){
      
      
      # Získání dat z konzole

      while (TRUE) {
        cat("Zadejte svou vahu: ", "\n")
        input <- readline(prompt = "")
        if (!grepl("[^0-9.]", input)) {
          v <- as.numeric(sub(",", ".", input)) 
          break
        } else {
          cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
        }
      }
      
      # Získání dat z konzole
      while (TRUE) {
        cat("Zadejte procento tuků: ", "\n")
        input <- readline(prompt = "")
        if (!grepl("[^0-9.]", input)) {
          tuk <- as.numeric(sub(",", ".", input)) 
          break
        } else {
          cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
        }
      }
      
      
      # vzorci 
      t = ((100 - tuk)/100) * v
      k = (21.6 * t) + 370
      b = v * 1.04
      b2 = v * 2
      
      # Výpis získaných dat
      cat(" ", "\n")
      cat("Váš bazalní metabolizmus je:", k, "kalorii v den,", b,"-", b2, "g bilkovin v den," ,"25 - 35 g vlakniny v den", "\n")
      cat(" ", "\n")
      
    }
    else if (příkaz == 3){
      cat(" ", "\n")
      cat("Tolik jste sned za posledný tyden:", ka, "kalorii", ba, "g bilkovin", va,"g vlakniny", "\n")
      cat("Za poslední 7 dni jste utratil za jidlo:",ce , "\n")
      cat(" ", "\n")
    }
    else if (příkaz == 4){
      date = Sys.Date()
      cat(date, "\n")
      čas = append(čas, date)
      
      # Získání dat z konzole
      
      while (TRUE) {
        cat("Zadejte svou vahu: ", "\n")
        input <- readline(prompt = "")
        if (!grepl("[^0-9.]", input)) {
          vah <- as.numeric(sub(",", ".", input)) 
          break
        } else {
          cat("Chyba: Zadaná hodnota není číslo. Zkuste znovu.\n")
        }
      }
      
      
      
      vaha = append(vaha, vah)
      df <- data.frame(
        čas,
        vaha
      )
      
    }
    else if (příkaz == 5){
      cat(" ", "\n")
      print(df)
      cat(" ", "\n")
      
      plot(  # nebo též
        x = df[, "čas"],
        y = df[, "vaha"],
        xlab = "proměnná 'čas'",
        ylab = "proměnná 'vaha'",
        main  = "vaha na čase"
      )
     
    }
  }else {
    cat(" ", "\n")
    cat("Chybný údaj. Zadejte číslo v rozmezí 1 až 5.", "\n")
    cat(" ", "\n")
  }
}