library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)


feedback <- readLines("feedback.txt", encoding = "UTF-8", warn = FALSE)
feedback <- paste(feedback, collapse=" ")

feedback_corpus <- Corpus(VectorSource(feedback))

#Pre-Process
# Convert to lowercase
feedback_clean <- tm_map(feedback_corpus, content_transformer(tolower))
feedback_clean <- tm_map(feedback_clean, content_transformer(function(x) gsub("[^a-z]"," ",x)))
# Remove numbers
feedback_clean <- tm_map(feedback_clean, removeNumbers)

# Remove punctuation
feedback_clean <- tm_map(feedback_clean, removePunctuation)

# Remove English stopwords 
feedback_clean <- tm_map(feedback_clean, removeWords, stopwords("english"))

# Strip whitespace
feedback_clean <- tm_map(feedback_clean, stripWhitespace)

# Stem the words
feedback_clean <- tm_map(feedback_clean, stemDocument)


#Part 2
#create TDM
tdm <- TermDocumentMatrix(feedback_clean)
m <- as.matrix(tdm)
#Convert to Freq. table
word_freqs <- sort(rowSums(m), decreasing = TRUE)
df <- data.frame(word = names(word_freqs), freq = word_freqs)


#Display top 10 words
print("Top 10 Most Frequent Words:")
print(head(df, 10))



#Part 3
png("wordcloud_exam.png", width = 800, height=600)
set.seed(1234)
wordcloud(
  words = df$word,
  freq = df$freq,
  min.freq = 2,
  max.words = 1000,
  random.order = FALSE,
  rot.per = 0.4,
  scale = c(4, 0.5),
  colors = brewer.pal(30,"Dark2")
)
dev.off()
cat("Saved wordcloud_exam.png\n")


#Part 4
least5 <- head(df[order(df$freq), ], 5)

png("wordcloud_rare.png", width = 800, height = 600)

wordcloud(
  words =least5$word,
  freq = least5$freq,
  min.freq = 1,
  max.words = 5,
  random.order = FALSE,
  rot.per = 0.35,
  scale = c(4, 0.5),
  colors = brewer.pal(8,"Dark2")
)
dev.off()
cat("Saved wordcloud_rare.png\n")

