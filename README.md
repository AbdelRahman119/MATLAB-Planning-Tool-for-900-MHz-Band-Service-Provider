# MATLAB Planning Tool for 900 MHz Band Service Provider

## Introduction
This MATLAB project aims to develop a simple planning tool for a service provider operating in the 900 MHz band. The tool assists in designing parameters such as cluster size, number of cells, cell radius, traffic intensity, base station transmitted power, and MS received power, using the Hata model for outdoor propagation in urban-medium city environments.

## Part (A): Design Parameters
1. **Cluster Size:** Determined based on user inputs including GOS, city area, user density, SIRmin, and sectorization method.
2. **Number of Cells:** Calculated based on the cluster size.
3. **Cell Radius:** Derived from the number of cells and city area.
4. **Traffic Intensity:** Computed per cell and per sector using provided traffic intensity per user data.
5. **Base Station Transmitted Power:** Determined as part of the design process.
6. **Received Power Plot:** A plot depicting MS received power in dBm versus the receiver distance from the BS, utilizing the Hata model with specified parameters.

## Part (B): Validation and Analysis
### Figures for City Area of 100 km²
1. **Cluster Size vs. SIRmin:**
   - Three curves plotted for omni-directional, 120° sectorization, and 60° sectorization designs, varying SIRmin from 1dB to 30 dB.
2. **Design Trade-offs Analysis:**
   - For SIRmin = 19dB & user density= 1400 users/km²:
     - Number of Cells vs. GOS (1% to 30%).
     - Traffic Intensity per Cell vs. GOS (1% to 30%).
   - For SIRmin = 14dB & user density= 1400 users/km²:
     - Number of Cells vs. GOS (1% to 30%).
     - Traffic Intensity per Cell vs. GOS (1% to 30%).
   - For SIRmin = 14dB & GOS= 2%:
     - Number of Cells vs. User Density (100 to 2000 users/km²).
     - Cell Radius vs. User Density (100 to 2000 users/km²).
   - For SIRmin = 19dB & GOS= 2%:
     - Number of Cells vs. User Density (100 to 2000 users/km²).
     - Cell Radius vs. User Density (100 to 2000 users/km²).

## Usage
1. **Input Parameters:** Run the MATLAB script and input parameters when prompted, including GOS, city area, user density, SIRmin, and sectorization method.
2. **View Results:** The tool will compute and display the design parameters, as well as generate plots for analysis and validation.
