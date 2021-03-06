% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect.R
\name{storeSummary}
\alias{storeSummary}
\title{Write summary of the data frame to the summary table (model_factory.model_summary)}
\usage{
storeSummary(dataset)
}
\arguments{
\item{dataset}{Dataframe which is the result of getSummary to be added unto the summary table}
}
\value{
The result of taQuery to update the model_factory.model_summary table
}
\description{
Write summary of the data frame to the summary table (model_factory.model_summary)
}
\examples{
model_id <- c('titanic_training')
getSessionId(model_id)
train_tadf <- ta.data.frame("select * from model_factory.titanic_train",sourceType="query")
train <- ta.pull(train_tadf)
summary <- getSummary(train)
storeSummary(summary)
}

