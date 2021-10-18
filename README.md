# A microfluidic platform enables comprehensive gene expression profiling of mouse retinal stem cells  
Brenda L. K. Coles, Mahmoud Labib, Mahla Poudineh, Brendan T. Innes, Justin Belair-Hickey, Surath Gomis, Zongjie Wang, Gary D. Bader, Edward H. Sargent, Shana O. Kelley and Derek van der Kooy  

*Lab on a Chip* 2021.  DOI: [10.1039/D1LC00790D](https://doi.org/10.1039/D1LC00790D)  

## Abstract  
Loss of photoreceptors due to retinal degeneration is a major cause of untreatable visual impairment and blindness. Cell replacement therapy, using retinal stem cell (RSC)-derived photoreceptors, holds promise for reconstituting damaged cell populations in the retina. One major obstacle preventing translation to the clinic is the lack of validated markers or strategies to prospectively identify these rare cells in the retina and subsequently enrich them. Here, we introduce a microfluidic platform that combines nickel micromagnets, herringbone structures, and a design enabling varying flow velocities among three compartments to facilitate a highly efficient enrichment of RSCs. In addition, we developed an affinity enrichment strategy based on cell-surface markers that was utilized to isolate RSCs from the adult ciliary epithelium. We showed that targeting a panel of three cell surface markers simultaneously facilitates the enrichment of RSCs to 1:3 relative to unsorted cells. Combining the microfluidic platform with single-cell whole-transcriptome profiling, we successfully identified four differentially expressed cell surface markers that can be targeted simultaneously to yield an unprecedented 1:2 enrichment of RSCs relative to unsorted cells. We also identified transcription factors (TFs) that play functional roles in maintenance, quiescence, and proliferation of RSCs. This level of analysis for the first time identified a spectrum of molecular and functional properties of RSCs.  

## Usage 
This R package allows the user to explore the published data in [scClustViz](https://baderlab.github.io/scClustViz/).  This app is also available [online](http://shiny.baderlab.org/).
Installation:  
```
install.packages("devtools")
devtools::install_github("BaderLab/MouseCortex")
```
Run the shiny app:
```
library(MouseCortex)
viewRetinaSC()
```
