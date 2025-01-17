# Explore - Szlaki

Aplikacja Flutter, która umożliwia użytkownikom przeglądanie i eksplorowanie różnych szlaków i miejsc. 

## Funkcje

- Przeglądanie listy miejsc i wydarzeń
- Lista szlaków
- Podział na obiekty danego szlaku
- Wyświetlanie szczegółów miejsca

## Wymagania

- Flutter SDK: ^3.5.3
- Klucz API Google Maps

## Struktura projektu

- [lib]): Główne źródła aplikacji
  - `src/`: Kod źródłowy aplikacji
    - `application/`: Logika aplikacji (Cubit, Bloc, itp.)
    - `models/`: Modele danych
    - `presentation/`: Warstwa prezentacji (widoki, widgety, itp.)
      - `features/`: Funkcje aplikacji (HomePage, TrailObjectsPage, itp.)
    - `services/`: Usługi (DioClient)
  - `main.dart`: Główny plik aplikacji

## Zależności

- `bloc`: ^9.0.0
- `dio`: ^5.7.0
- `flutter_bloc`: ^9.0.0
- `flutter_staggered_grid_view`: ^0.7.0
- `flutter_svg`: ^2.0.16
- `google_fonts`: ^6.2.1
- `meta`: ^1.15.0
- `json_annotation`: ^4.9.0
- `google_maps_flutter`: ^2.10.0

## Autor

- Adrianna - https://github.com/Aduzja


### Instalacja

1. Clone the repository:

   ```bash
   git clone https://github.com/Aduzja/explore.git
   ```

2. Navigate to the project directory:

   ```bash
   cd explore
   ```

3. Install the dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:

   ```bash
   flutter run
   ```
