from default_args import get_test_args, DomainAndProblemConfiguration
from eval import eval_wrapper
import os

if __name__ == "__main__":
    _PROBLEMS = []
    for folder in os.listdir('/home/ubuntu/STRIPS-HGN/benchmarks/blocks-slaney/'):
        print(folder)
        folder_path = os.path.join('/home/ubuntu/STRIPS-HGN/benchmarks/blocks-slaney/', folder)
        if os.path.isdir(folder_path) and 'block' in folder:
            if folder not in ['blocks15','blocks50']:
                continue
            for file_ in os.listdir(os.path.join(folder_path)):
                print('file:', file_)
                if 'task' in file_: 
                    _PROBLEMS.append(str(os.path.join(folder, file_)))

    print('len:',len(_PROBLEMS))

    _CONFIGURATION = DomainAndProblemConfiguration(
        base_directory="/home/ubuntu/STRIPS-HGN/benchmarks/blocks-slaney",
        domain_pddl="domain.pddl",
        # {3, 4, 5 blocks} x 10 problems = 30 problems
        problem_pddls=_PROBLEMS,
    )
    
    #assert len(_CONFIGURATION.problems) == 783

    args=get_test_args(
            configurations=[_CONFIGURATION],
            # 10 minutes
        )
    print('model:', args.checkpoint)
    eval_wrapper(
        args=args
    )
