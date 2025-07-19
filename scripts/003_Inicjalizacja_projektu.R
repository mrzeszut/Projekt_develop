# -----------------------------------------------------------
# Inicjalizacja projektu i izolowanego środowiska pakietów ----
# -----------------------------------------------------------

# 1. Zainstaluj renv (jeśli nie masz go globalnie zainstalowanego).
# install.packages("renv")      # menedżer bibliotek per‑projekt

# 2. Utwórz katalog renv/ i plik renv.lock – "snapshot" wersji pakietów.
renv::init()                  # uruchamiaj raz na nowy projekt

# 3. Zainstaluj fs – przenośne API do plików (analogiczne do 'file' w Python).
# install.packages("fs")        # pozwala tworzyć, przenosić, listować pliki

getwd()

# 4. Stwórz podstawową strukturę folderów projektu.
fs::dir_create(c(
  "data",           # surowe dane tylko do odczytu
  "data_processed", # dane po ETL
  "R",              # funkcje wielokrotnego użytku
  "scripts",        # skrypty kolejnych kroków analizy
  "reports"         # raporty Rmd/Quarto
))

# 5. Uruchamiamy

library(targets)
tar_make()
