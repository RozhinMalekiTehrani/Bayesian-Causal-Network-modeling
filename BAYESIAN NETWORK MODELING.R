

##########--------




# Load requisite libraries.
library(bnlearn)
library(igraph)

# Read in data.
# Make sure to replace "data.csv" with the actual path to your data file.

data <- read.csv(file = '~/Desktop/IPM/Depression-project/SPAN analysis/MIXED_BLK_CON.csv')
#d1
View(data)
dd = data %>% dplyr::select(neuroticism, anhedonia  , reappraisal , worry , depression , anxiety , reflection , brooding )


dd <- as.data.frame(dd)

#dd <- read.csv("data.csv") 

# Instantiate the Hill Climb Search algorithm.
hc <- hc(dd)



for(i in 1:dim(dd)[2]){
  if(length(levels(dd[[i]]))<2){
    print(paste("Variable ", i, " does not have at least two levels"))
  }
}


# Assuming your data frame is called df
df <- lapply(dd, factor)

df <- as.data.frame(df)

# Learn the parameters using maximum likelihood estimation.
fitted_model <- bn.fit(hc, data = df, method = "mle")

# Convert the learned bnlearn graph to an igraph object for visualization.
graph <- graph_from_adjacency_matrix(amat(hc), mode = "directed")

# Plot the graph
plot(graph, vertex.size=20, vertex.label.cex=0.8, edge.arrow.size=0.5)















##############__________ FLAMKER DATA







data <- read.csv(file = '~/Desktop/IPM/Depression-project/FLANKER analysis/MIX-FLANKER-5BLOCKS.csv')
#d1
View(data)
dd = data %>% dplyr::select(neuroticism, anhedonia  , reappraisal , worry , depression , anxiety , reflection , brooding, RcaC,
                            RcaI,
                            RchC,
                            RchI,
                            RcsC,
                            RcsI,
                            ReaC,
                            ReaI,
                            RehC,
                            RehI,
                            PcaC,
                            PcaI,
                            PchC,
                            PchI,
                            PcsC,
                            PcsI,
                            PeaC,
                            PeaI,
                            PehC,
                            PehI,
                            FIcaRT,
                            FIchRT,
                            FIcsRT,
                            FIeaRT,
                            FIehRT )


dd <- as.data.frame(dd)

#dd <- read.csv("data.csv") 

# Instantiate the Hill Climb Search algorithm.
hc <- hc(dd)



for(i in 1:dim(dd)[2]){
  if(length(levels(dd[[i]]))<2){
    print(paste("Variable ", i, " does not have at least two levels"))
  }
}


# Assuming your data frame is called df
df <- lapply(dd, factor)

df <- as.data.frame(df)

# Learn the parameters using maximum likelihood estimation.
fitted_model <- bn.fit(hc, data = df, method = "mle")

# Convert the learned bnlearn graph to an igraph object for visualization.
graph <- graph_from_adjacency_matrix(amat(hc), mode = "directed")

# Plot the graph
plot(graph, vertex.size=10, vertex.label.cex=0.8, edge.arrow.size=0.5)




































#____________________________ all data





data <- read.csv(file = '~/Desktop/IPM/Depression-project/SPAN analysis/MIXED_BLK_CON.csv')
#d1
#View(data)
dd = data %>% dplyr::select(neuroticism, anhedonia  , reappraisal , worry , depression , anxiety , reflection , brooding,RdaB,
                            RdaF,
                            RdhB,
                            RdhF,
                            RdsB,
                            RdsF,
                            RfaB,
                            RfaF,
                            RfhB,
                            RfhF,
                            RsaB,
                            RsaF,
                            RshB,
                            RshF,
                            RssB,
                            RssF,

                            SdaB,
SdaF,
SdhB,
SdhF,
SdsB,
SdsF,
SfaB,
SfaF,
SfhB,
SfhF,
SsaB,
SsaF,
SshB,
SshF,
SssB,
SssF)

#dd = data
dd <- as.data.frame(dd)

#dd <- read.csv("data.csv") 

# Instantiate the Hill Climb Search algorithm.
hc <- hc(dd)



for(i in 1:dim(dd)[2]){
  if(length(levels(dd[[i]]))<2){
    print(paste("Variable ", i, " does not have at least two levels"))
  }
}


# Assuming your data frame is called df
#df <- lapply(dd, factor)

df <- as.data.frame(dd)#df


hc <- hc(df)

# Learn the parameters using maximum likelihood estimation.
fitted_model <- bn.fit(hc, data = df, method = 'mle-g')#'mle-cg')#"mle-g")#"mle")


# Convert the learned bnlearn graph to an igraph object for visualization.
graph <- graph_from_adjacency_matrix(amat(hc), mode = "directed")

plot(graph, vertex.size=10, vertex.label.cex=0.5, edge.arrow.size=0.2, layout=layout.fruchterman.reingold )
#layout_as_tree

##########-------------------------






