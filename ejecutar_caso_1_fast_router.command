#!/bin/bash
# ==============================================================================
# Lanzador de doble clic para macOS: Caso 1 Fast Router (TypeSafe AI / Jev)
# ==============================================================================
cd "$(dirname "$0")"
echo "Ejecutando Caso 1: Fast Router (System One / Jev)..."
echo ""
python3 src/01_fast_router.py
echo ""
read -p "Presiona [ENTER] para salir de la ventana..."
