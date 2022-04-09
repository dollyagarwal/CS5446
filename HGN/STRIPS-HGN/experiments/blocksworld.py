from default_args import get_training_args, DomainAndProblemConfiguration
from train import train_wrapper

_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory="/home/ubuntu/STRIPS-HGN/benchmarks/blocks-slaney",
    domain_pddl="domain.pddl",
    # {3, 4, 5 blocks} x 10 problems = 30 problems
    problem_pddls=[
    ],
)


if __name__ == "__main__":

    for i in range(100):
        _CONFIGURATION.problem_pddls.append('training_sets/task_{}.problem.pddl'.format(i))

    assert len(_CONFIGURATION.problems) == 100

    train_wrapper(
        args=get_training_args(
            configurations=[_CONFIGURATION],
            # 10 minutes
            max_training_time=10 * 60,
        )
    )
