project('ldasoft', 'c')

# Define variables for directories
utils_include_dir = include_directories(join_paths('utils', 'src'))
ucb_include_dir = include_directories(join_paths('ucb', 'src'))
noise_include_dir = include_directories(join_paths('noise', 'src'))

# Define external dependencies
gsl_dep = dependency('gsl')
hdf5_dep = dependency('hdf5')
#openmp = dependency('openmp')

# Define build targets
#executable('ucb_mcmc', 
#    'apps/src/ucb_mcmc.c',
#    include_directories: [ucb_include_dir, utils_include_dir],
#    dependencies: [gsl_dep, hdf5_dep],
#    cpp_args: ['-Xpreprocessor', '-fopenmp'],
#    install: true
#)

executable('ucb_catalog', 
    'apps/src/ucb_catalog.c',
    include_directories: [ucb_include_dir, utils_include_dir],
    dependencies: [gsl_dep, hdf5_dep],
    install: true
)

executable('ucb_match', 
    'apps/src/ucb_match.c',
    include_directories: [ucb_include_dir, utils_include_dir],
    dependencies: [gsl_dep, hdf5_dep],
    install: true
)

executable('ucb_chirpmass', 
    'apps/src/ucb_chirpmass.c',
    include_directories: [ucb_include_dir, utils_include_dir],
    dependencies: [gsl_dep, hdf5_dep],
    install: true
)

executable('vgb_mcmc', 
    'apps/src/vgb_mcmc.c',
    include_directories: [ucb_include_dir, utils_include_dir],
    dependencies: [gsl_dep, hdf5_dep],
    install: true
)

executable('noise_mcmc', 
    'apps/src/noise_mcmc.c',
    include_directories: [noise_include_dir, utils_include_dir],
    dependencies: [gsl_dep, hdf5_dep],
    install: true
)

#executable('noise_spline_mcmc', 
#    'apps/src/noise_spline_mcmc.c',
#    include_directories: [noise_include_dir, utils_include_dir],
#    dependencies: [gsl_dep, hdf5_dep],
#    install: true
#)

executable('ucb_grid', 
    'apps/src/ucb_grid.c',
    dependencies: [gsl_dep],
    install: true
)

# Install targets
#install_dir = join_paths(get_option('prefix'), 'bin')
#install(executable('ucb_mcmc'), install_dir)