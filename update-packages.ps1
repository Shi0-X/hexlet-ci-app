# Define las versiones recomendadas para cada paquete
$packages = @{
    '@strapi/plugin-i18n' = '4.11.7'
    '@strapi/plugin-users-permissions' = '4.25.9'
    '@strapi/strapi' = '4.25.9'
    'axios' = '0.25.1'
    'path-to-regexp' = '1.8.1'
    'request' = '2.88.3'
    'tough-cookie' = '2.5.1'
    'jsonwebtoken' = '8.5.2'
    'sequelize' = '5.22.6'
    'qs' = '6.10.2'
    'dottie' = '2.0.3'
    'mongoose' = '5.13.14'
    'semver' = '5.7.2'
    '@babel/traverse' = '7.18.10'
    'sanitize-html' = '2.7.1'
    'inflight' = '1.0.7'
    'postcss' = '8.4.15'
}

# Actualiza los paquetes usando npm
foreach ($package in $packages.Keys) {
    $version = $packages[$package]
    Write-Host "Actualizando $package a la versión $version..."
    npm install "$package@$version" --save
}

# Actualiza los paquetes usando yarn (opcional, si estás usando yarn)
foreach ($package in $packages.Keys) {
    $version = $packages[$package]
    Write-Host "Actualizando $package a la versión $version usando yarn..."
    yarn add "$package@$version"
}

Write-Host "Actualización completa."
