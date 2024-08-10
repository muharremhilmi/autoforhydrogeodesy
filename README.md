# Autocorrelation Analysis of Environmental Parameters

This project performs autocorrelation analysis on various environmental parameters from a dataset and graphically presents the results. The analysis is implemented using MATLAB.

## Dataset

The dataset used in this analysis is a CSV file named `data.txt`. The file contains time-series data for several environmental parameters:

- **Column 1:** Time (Decimal Year)
- **Column 2:** Sea Level (mm)
- **Column 3:** Air Pressure (hPa)
- **Column 4:** Sea Water Temperature (°C)
- **Column 5:** Relative Humidity (%)
- **Column 6:** Wind Speed (m/s)
- **Column 7:** Temperature (°C)
- **Column 8:** Water Vapour Pressure
- **Column 9:** Total Precipitation (mm)

## Code Explanation

The MATLAB script reads the dataset, processes the columns of interest, and performs autocorrelation analysis up to a lag of 10. The results are plotted for each parameter.

### Script Workflow

1. **Reading the Dataset:**
   - The script reads `data.txt` using MATLAB, ignoring lines that start with `%` (comments).

2. **Selecting Columns:**
   - The relevant columns for analysis (e.g., sea level, air pressure, temperature) are selected.

3. **Autocorrelation Analysis:**
   - Autocorrelation is performed on each selected parameter with a maximum lag of 10.

4. **Plotting Results:**
   - The autocorrelation results are plotted using `subplot` in MATLAB and displayed for visualization.

## Installation

To run the code, you need to have MATLAB installed on your system.

## Usage

1. Clone the repository and navigate to the project directory.
2. Ensure your dataset (`data.txt`) is in the same directory as the script.
3. Run the MATLAB script:

```matlab
run('env_auto.m');
