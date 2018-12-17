library(magrittr)
library(dplyr)

seminars <- readLines('Seminars.md') %>%
            grep(pattern = "^\\|", value = TRUE) %>%               # pull all lines starting with '|'
    
            grep(pattern = "**Cancelled**", fixed = TRUE,          # drop all lines containing **Cancelled**
                 invert = TRUE, value = TRUE) %>%
    
            grep(pattern = 'Date', value = TRUE,                   # drop column headers
                 invert = TRUE) %>%               
            grep(pattern = '----', value = TRUE,
                 invert = TRUE, fixed = TRUE) %>% 
    
            strsplit(split = "|", fixed = TRUE) %>%                # split columns
    
            sapply(trimws) %>%                                     # trim whitespace and turn into a matrix
            t() %>%

            as_data_frame()                                        # convert to data_frame

dt <- strsplit(seminars$V2, "/", fixed = TRUE) %>%
      lapply(function(x) ifelse(as.numeric(x) < 10, paste0(0, x), x))

seminars <- mutate(seminars,
                   tag = tolower(V3),
                   fileName = paste0('20', sapply(dt, `[`, 3), '-',    # year
                                     sapply(dt, `[`, 1), '-',          # month
                                     sapply(dt, `[`, 2), '-',          # day
                                     gsub(" ", "-", V3, fixed = TRUE), # title 
                                     '.md'))

for(i in 1:dim(seminars)[1])
{
    cat('---',
        'layout: post',
        paste('title:', seminars$V3[i]),
        paste('author:', seminars$V4[i]),
        'categories: [seminars]',
        paste0('tags: [', seminars$tag[i], ']'),
        'location: ATRF D-3001 Conference Room or <a href="https://cbiit.webex.com/cbiit/e.php?MTID=m8e4cc08aae26be936415c20896d4867a">WebEx</a>',
        'time: 1 - 2 PM',
        '---\n',
        '**PARTICIPATING GROUPS:**  `CCBR`, `NCBR`, `SF-IFX`, `RNA-BIOLOGY`\n',
        seminars$V5[i],
        sep = '\n', file = paste0('_posts/', seminars$fileName[i]))
}
