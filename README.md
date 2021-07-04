# Repositorio de los resultados

Este repositorio contiene los resultados de los experimentos realizados como parte del Trabajo de Fin de Grado de Luis Cruz, el código del mismo está disponible en: https://github.com/luiscruzv99/TFG-Repo. Asimismo, también se encuentran aquí los datos procesados utilizados en la elaboración de la memoria, además de las figuras generadas y los scripts utilizados para generarlas.

## Estructura del Repositorio

La estructura del repositorio es la siguiente:

```powershell
├───Datos_Capitulos
│   ├───Datos_Capitulo_3
│   │   ├───Experimentos_parametros
│   │   │   ├───Precisiones
│   │   │   └───Tiempos
│   │   └───Modelo hibrido
│   │       ├───R_1GPU
│   │       └───R_Hibrido
│   └───Datos_Capitulo_4
│       ├───Consumos
│       ├───Precisiones
│       └───Tiempos
└───Resultados_experimentos
    ├───Resultados_1GPU
    ├───Resultados_CPU
    ├───Resultados_CPU_2
    ├───Resultados_Distribuido_1GPU
    ├───Resultados_Distribuido_2GPU
    └───Resultados_distribuido_2GPU_64
```

Este repositorio se divide en 2 partes: los resultados obtenidos de los experimentos, y los datos procesados de los resultados.

### · Resultados de los experimentos

En el directorio `Resultados_experimentos` se encuentran todos los resultados de los experimentos, distribuidos en subdirectorios correspondientes con cada uno de los experimentos realizados. Estos subdirectorios contienen varios archivos `.csv` con las métricas que mide el benchmark (tiempos de entrenamiento y validación, evolución de las precisiones, ...) así como un archivo `.json` que contiene los parámetros usados para la ejecución de los benchmarks. Opcionalmente, estos directorios pueden contener uno o varios archivos `.dat` en los que se recoge el perfilado de energía de los diferentes dispositivos del equipo para ese experimento, además de un script `.R` que procesa estos archivos, extrayendo medias de consumo para cada dispositivo.

### · Datos mostrados en el trabajo

En el directorio `Datos_Capitulos` están los datos procesados de los experimentos que han sido utilizados para ciertas partes de la memoria. En concreto, se han utilizado estos datos en 2 capítulos, el 3 y el 4. En cada uno de estos subdirectorios se pueden encontrar archivos `.csv`, además de scripts `.plot`. Estos pares de ficheros se han utilizado para generar las gráficas que se encuentran en los archivos `.png`.

