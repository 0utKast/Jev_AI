"""
Alias directo para permitir importaciones canónicas:
from typesafe import TypeSafeClient, Choice, Score, Noul
"""

try:
    from .typesafe_client import (
        TypeSafeClient,
        Choice,
        Score,
        Noul,
        DecisionResult,
        ChoiceResult,
        ScoreResult,
        NoulResult
    )
except (ImportError, ValueError):
    from typesafe_client import (
        TypeSafeClient,
        Choice,
        Score,
        Noul,
        DecisionResult,
        ChoiceResult,
        ScoreResult,
        NoulResult
    )

__all__ = [
    "TypeSafeClient",
    "Choice",
    "Score",
    "Noul",
    "DecisionResult",
    "ChoiceResult",
    "ScoreResult",
    "NoulResult"
]
