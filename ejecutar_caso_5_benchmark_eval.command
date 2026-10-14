#!/bin/bash
# ==============================================================================
# Lanzador de doble clic para macOS: Caso 5 Benchmark Cuantitativo (TypeSafe AI)
# ==============================================================================
cd "$(dirname "$0")"
echo "Ejecutando Caso 5: Benchmark Cuantitativo (Jev vs. LLMs Tradicionales)..."
echo ""
python3 src/05_benchmark_eval.py
echo ""
read -p "Presiona [ENTER] para salir de la ventana..."
