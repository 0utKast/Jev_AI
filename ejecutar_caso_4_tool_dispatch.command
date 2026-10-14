#!/bin/bash
# ==============================================================================
# Lanzador de doble clic para macOS: Caso 4 Tool Dispatch (TypeSafe AI)
# ==============================================================================
cd "$(dirname "$0")"
echo "Ejecutando Caso 4: Deterministic Tool Dispatch (Invocación de Herramientas / Jev)..."
echo ""
python3 src/04_tool_dispatch.py
echo ""
read -p "Presiona [ENTER] para salir de la ventana..."
