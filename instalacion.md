# Instalacion del software necesario para montar el entorno de desarrollo en (y para) Pynq.

## Requisitos
- Ubuntu 18.04 LTS con
	- Un minimo de 4 procesadores
	- Al menos 8Gb de memoria RAM
	- Al menos 300Gb de almacenamiento (disco duro)
	- Configurar la maquina para operaciones **sudo** sin contrasena (_passwordless_)
- Vitis Software Package con **Vitis** y **Vivado**.
- Petalinux
- Codigo fuente del repositorio de Pynq

## Procedimiento

Se recomienda utilizar una maquina virtual para hacer la instalacion. Esto permitira hacer _Snapshots_ durante el proceso de instalacion y volver atras si algo sale mal.

### 1. Maquina virtual Ubuntu 18.04 LTS
### 2. Instalacion de Vitis Software Package
--- TODO: Anadir vivado y vitis a bashrc
### 3. Instalacion de Petalinux
### 4. Clonar repositorio Pynq
### 5. Pruebas

Para probar que la instalacion ha funcionado correctamente compilaremos una imagen para la Pynq Z1 (aun cuando no la necesitemos). En el terminal y en dentro del directorio SDBuild del repositorio Pynq, ejecuta:

```
make BOARDS=Pynq-Z1
```



## Referencias

[1] https://www.hackster.io/adam-taylor/making-cora-pynq-582854
