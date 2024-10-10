
#!/bin/bash
#SBATCH --job-name= job737tutCade # Job name
#SBATCH --output=output_%j.log # Output log file (%j will be replaced by the job ID)
#SBATCH --error=error_%j.log # Error log file (%j will be replaced by the job ID)
#SBATCH --ntasks=1 # Number of tasks (processes)
#SBATCH --cpus-per-task=4 # Number of CPU cores per task
#SBATCH --mem=16GB # Memory per node
#SBATCH --time=01:00:00 # Time limit hrs:min:sec
#SBATCH --partition=secondary # Partition/queue to submit the job
#SBATCH --mail-type=ALL # Send email on job start, end and fail
#SBATCH --mail-user=cboggan2@illinois.edu # Email for notifications
# Load any necessary modules
module load anaconda3/2024.06-Jun # This has the latest version of python
# Activate the virtual environment
source $HOME/rcaide_venv/bin/activate
# Run the Python script
python3 RCAIDE_TUTORIALS/04_Full_Vehicle_Analysis_Boeing_737/Boeing_737_mission_simulation.py
# Deactivate the virtual environment after completion
deactivate


