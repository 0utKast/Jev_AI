#!/bin/bash
# ==============================================================================
# Lanzador de doble clic para macOS: Caso 3 Realtime Guardrails (TypeSafe AI)
# ==============================================================================
cd "$(dirname "$0")"
echo "Ejecutando Caso 3: Realtime Guardrails (Cortafuegos Síncrono / Jev)..."
echo ""
python3 src/03_realtime_guardrail.py
echo ""
read -p "Presiona [ENTER] para salir de la ventana..."
