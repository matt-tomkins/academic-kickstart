---
title: "Probability-based interpretation of terrestrial cosmogenic radionuclide ages: P-CAAT, a tool for the ages"
date: 2019-12-01
publishDate: 2020-02-06T14:24:01.850509Z
authors: ["Jason Dortch", "Sourav Saha", "Matt D. Tomkins", "Madhav K. Murari", "Lindsay M. Schoenbohm", "Douglas Curl"]
publication_types: ["1"]
abstract: "Direct numerical dating of landforms with terrestrial cosmogenic nuclides (TCNs) has revolutionized geomorphology. However, geologic processes such as weathering, denudation, exhumation, and reworking creates scatter in apparent exposure age datasets. Statistical analysis is typically employed to access TCN age scatter and remove outliers on a particular surface. Methods include reduced mean square weighted deviates, Chauvenet’s criterion, 2σ uncertainty overlap, and recently, probability density estimates (PDEs). Variation in choice of statistical method between studies can have a significant effect on the resulting landform age, thus hindering understanding of regional events.
We propose a method of numerically generating a composite PDE to represent TCN ages, their uncertainty, and their clustering, which are then separated into one or more component Gaussians. To this end, we have developed a probability-based cosmogenic age analysis tool (P-CAAT) which generates a cumulative PDE using the “ksdensity” kernel in MATLAB. Component Gaussians are then deconvloved from the cumulative PDE using chi-square minimization based on Levenberg Marquadt alogorithm and non-linear curve fitting. Adding one Gaussian at a time, P-CAAT utilizes a Monte Carlo approach to estimate Gaussian starting points, and undertakes 1,000 to 140,000 iterations to converge on a single solution where the peak and sigma of a selected Gaussian represents the true age of the landform. This approach ensures the best fit with the least number of component Gaussians. We demonstrate that P-CAAT is more consistent in removing outliers and more accurate in estimating true ages compared to other methods."
featured: false
publication: "*AGU*"
url_pdf: "https://agu.confex.com/agu/fm19/meetingapp.cgi/Paper/502207"
---

