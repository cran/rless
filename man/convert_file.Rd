% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_file.R
\name{convert_file}
\alias{convert_file}
\title{Converts content of file to CSS}
\usage{
convert_file(base_path, file_name, output_folder = tempdir())
}
\arguments{
\item{base_path}{Base path to file to be converted}

\item{file_name}{Path relative to \code{base_path} leading to file to be converted}

\item{output_folder}{Output path where converted file should be placed.
File is placed to \code{tempdir} by default}
}
\value{
Full path to created file with converted CSS file
}
\description{
Passes content of \emph{file_name} into V8 console and converts it using LESS
engine to CSS. The converted CSS is saved into \emph{output_folder} under
original name. Only the extension is switched to \emph{css}.
}
\examples{
path_to_less_files <- system.file("extdata", package="rless")

convert_file(path_to_less_files, "example.less")
convert_file(path_to_less_files, "example.less", tempdir())

}
