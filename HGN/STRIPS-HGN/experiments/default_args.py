import os
import sys

sys.path.insert(0, '/home/ubuntu/STRIPS-HGN/src/')


from typing import List, NamedTuple


from strips_hgn.features.global_features import (
    NumberOfNodesAndEdgesGlobalFeatureMapper,
)
from strips_hgn.features.hyperedge_features import (
    ComplexHyperedgeFeatureMapper,
)
from strips_hgn.features.node_features import PropositionInStateAndGoal
from strips_hgn.utils import Number
from strips_hgn.utils.args import TrainingArgs, EvaluationArgs
from strips_hgn.planning import Heuristic, SearchAlgorithm, PlannerForEvaluation

DEFAULT_ARGS = {
    # Training data generation and k-fold
    "num_bins": 4,
    "num_folds": 5,
    # Feature Mappers
    "global_feature_mapper_cls": NumberOfNodesAndEdgesGlobalFeatureMapper,
    "node_feature_mapper_cls": PropositionInStateAndGoal,
    "hyperedge_feature_mapper_cls": ComplexHyperedgeFeatureMapper,
    # Network Hyperparameters
    "hidden_size": 32,
    # Training Hyperparameters
    "batch_size": 1,
    "learning_rate": 0.001,
    "weight_decay": 2.5e-4,
    "max_epochs": 9999,
    # TODO: play around with this parameter - bumped to very high for now
    "patience": 999999,
    # Others
    "debug": True,
    "remove_duplicates": False,
    "shuffle": True,
}


DEFAULT_ARGS_TEST = {
    # Feature Mappers
    #"global_feature_mapper_cls": NumberOfNodesAndEdgesGlobalFeatureMapper,
    #"node_feature_mapper_cls": PropositionInStateAndGoal,
    #"hyperedge_feature_mapper_cls": ComplexHyperedgeFeatureMapper,
    # Network Hyperparameters
    #"hidden_size": 32,
    # TODO: play around with this parameter - bumped to very high for now
    #"patience": 999999,
    # Others
    "debug": True,
}


class DomainAndProblemConfiguration(NamedTuple):
    base_directory: str
    domain_pddl: str
    problem_pddls: List[str]

    @property
    def domain(self) -> str:
        """ Actual domain file name """
        return os.path.join(self.base_directory, self.domain_pddl)

    @property
    def problems(self) -> List[str]:
        """ Actual problem file names """
        return [
            os.path.join(self.base_directory, problem)
            for problem in self.problem_pddls
        ]


def get_training_args(
    configurations: List[DomainAndProblemConfiguration],
    max_training_time: Number,
    **override
) -> TrainingArgs:
    assert configurations, "At least one configuration must be provided!"

    # Override default arguments if required
    training_kwargs = DEFAULT_ARGS.copy()
    for key, value in override.items():
        training_kwargs[key] = value

    if len(configurations) == 1:
        configuration = configurations[0]
        return TrainingArgs(
            domain=configuration.domain,
            domains=None,
            problems=configuration.problems,
            max_training_time=max_training_time,
            **training_kwargs
        )
    else:
        # Handle the case with multiple configurations (i.e., training on
        # multiple domains)
        domains = []
        problems = []

        for configuration in configurations:
            domains.extend(
                [configuration.domain] * len(configuration.problems)
            )
            problems.extend(configuration.problems)

        return TrainingArgs(
            domain=None,
            domains=domains,
            problems=problems,
            max_training_time=max_training_time,
            **training_kwargs
        )

def get_test_args(
    configurations: List[DomainAndProblemConfiguration],
    **override
) -> EvaluationArgs:
    assert configurations, "At least one configuration must be provided!"

    # Override default arguments if required
    training_kwargs = DEFAULT_ARGS_TEST.copy()
    for key, value in override.items():
        training_kwargs[key] = value

    if len(configurations) == 1:
        configuration = configurations[0]
        return EvaluationArgs(
            domain=configuration.domain,
            domains=None,
            problems=configuration.problems,
            checkpoint='/home/ubuntu/STRIPS-HGN/results/train-strips-hgn-2022-04-01T11:29:46.344012/model-best.ckpt',
            heuristics=[Heuristic.h_max],
            search_algorithm= SearchAlgorithm.from_str("a_star"),
            planner= PlannerForEvaluation.from_str("pyperplan"),
            max_search_time= 300.0,
            **training_kwargs
        )
    else:
        # Handle the case with multiple configurations (i.e., training on
        # multiple domains)
        domains = []
        problems = []

        for configuration in configurations:
            domains.extend(
                [configuration.domain] * len(configuration.problems)
            )
            problems.extend(configuration.problems)

        return EvaluationArgs(
            domain=None,
            domains=domains,
            problems=problems,
            checkpoint='/home/ubuntu/STRIPS-HGN/results/train-strips-hgn-2022-03-31T15:48:35.759660/model-best.ckpt',
            heuristics=[Heuristic.h_ff],
            search_algorithm= SearchAlgorithm.a_star,
            planner= PlannerForEvaluation.pyperplan,
            max_search_time= 300.0,
            **training_kwargs
        )
