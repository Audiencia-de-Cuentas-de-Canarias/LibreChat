<p align="center">
  <a href="https://librechat.ai">
    <img src="../client/public/assets/logo.svg" height="256">
  </a>
  <h1 align="center">
    <a href="https://librechat.ai">LibreChat</a>
  </h1>
</p>

# Instrucciones específicas para la Audiencia de Cuentas de Canarias


## Actualizar a la última versión de Librechat

   1. Sincronizar la rama main del fork

   Entrar en el repositorio guthub [Audiencia-de-Cuentas-de-Canarias/LibreChat](https://github.com/Audiencia-de-Cuentas-de-Canarias/LibreChat/tree/main) (asegurarse que estamos en la rama `main`) y pulsar el botón `Sync fork`. Esto traerá los últimos cambios del repositorio original a la rama `main` de nuestro repositorio.

   2. Descargar los cambios en el área de trabajo local

   ```sh
   git checkout main
   git pull
   ```

   3. Mergear los cambios en la rama `acc`

   ```sh
   git checkout acc
   git merge main
   git push
   ```

   4. Ejecutar con los últimos cambios y probar.

## Ejecución

### Entorno de desarrollo (local)

```sh
git checkout acc

docker compose up -d --build
```

Probar acceso con: `http://localhost:3080`

### Entorno de producción (virgo.acc.local)

```sh
./acc_start_librechat_production.sh --build
```

Probar acceso con: `https://virgo.acc.local`