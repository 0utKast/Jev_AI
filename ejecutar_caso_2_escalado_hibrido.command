#!/bin/bash
# ==============================================================================
# Lanzador de doble clic para macOS: Caso 2 Escalado Híbrido (Confidence Gate)
# ==============================================================================
cd "$(dirname "$0")"
echo "Ejecutando Caso 2: Escalado Híbrido con Confidence Gate (TypeSafe AI / Jev)..."
echo ""
python3 src/02_hybrid_escalation.py
echo ""
read -p "Presiona [ENTER] para salir de la ventana..."
