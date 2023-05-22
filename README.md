![logo](https://raw.githubusercontent.com/ralphmartynward/ironhack_09_final-project/main/images/ralphward_with_martin_parrs_50mm_lens_a_garfield-like_cat._Hes__c8f5c1ee-05c4-4bd8-82ec-ca1c2cc20073.png)

# 🐱 The Purrposterous Project Overview

Welcome to "The Purrposterous" - a project aimed at presenting satire news with a consistent theme: a Garfield-like cat making a humorous appearance in each story. This initiative brings together robust classification models, AI-based text and image generation and strategic branding, all with a hint of humor and absurdity.

## Data Collection and Exploration

The initial step involves using Reddit's API to fetch news articles from the [r/nottheonion](https://www.reddit.com/r/nottheonion/) subreddit, known for its satire news that beautifully blurs the lines between reality and absurdity. The advantage of sourcing from Reddit is the availability of human discussions, something that becomes increasingly rare in the era of AI. Moreover, these discussions often revolve around topics outside of mainstream media, thus providing potential trend insights. On top of this, as humans upvote and downvote posts, we can use this data to assess the popularity of each article instead of handpicking them ourselves. 
The obtained data then undergoes exploratory data analysis and profiling. Despite there being nothing significant to report, this process is crucial in understanding our data better.

## Classification Models

Next, I apply classification models to categorize the news articles. The ultimate goal is to filter the articles, selecting the ones worth sharing based on their categories.

### Unsupervised Machine Learning via BERT Clustering

My first approach involved unsupervised machine learning, where I implemented BERT clustering. However, this technique did not yield the expected results, pushing me to explore other options.

### Supervised ML with Manual Labeling via BERT

Next, I transitioned to supervised ML, which required manual labeling of 400 rows of data, followed by BERT application for sequence classification and label encoding. I tweaked parameters to improve the model's effectiveness. However, this approach was still suboptimal for predicting new article categories, and overfitting was a concern.

### Zero-shot Classification via DistilBERT

Finally, I turned to zero-shot classification, utilizing a DistilBERT model from HuggingFace. After refining the categories to better suit our needs, this method resulted in significant improvement in our classification results.

## Sentiment Analysis NLP

A crucial aspect of my approach is maintaining a positive sentiment in our content. This helps circumnavigate platform restrictions (Midjourney & Instagram) and ensures our audience enjoys a pleasant experience.

### Sentiment Analysis via NLTK

My first venture into sentiment analysis involved the NLTK library, a more traditional NLP technique. Despite leveraging techniques such as stop words, lemmatization, and bag of words, the results were not great.

### Sentiment Analysis via BERT

Consequently, we turned to a more modern approach using BERT and a pre-trained corpus. This approach significantly improved our sentiment analysis, providing us with a category and sentiment analysis for all titles.

## Text Generation via ChatGPT 

After classifying and assessing the sentiment of the data, we connect to ChatGPT via API to generate a unique story and a prompt for each headline. Getting the "instructions" right for generating the perfect prompt was a big challenge. 

## Image Generation via Midjourney

These prompts from ChatGPT then feed into Midjourney, where they guide the creation of ultra-realistic images. Central to our brand, each image features our signature touch: a Garfield-like cat. 
We attempted to automate sending the image prompt to midjourney using a bot and a webhook on a Discord server. However, due to certain restrictions on bot activities, we had to resort to manual intervention or find alternative solutions.

## Posting to Instagram

After obtaining the image from midjourney, we add final touches, including a banner, headline text, and an emoji, to make the post Instagram-ready.
Finally, we post the finished image and a fitting caption to Instagram. Initially, we used Facebook's official Graph API, but after the application was rejected, we resorted to an unofficial Instagram API. Despite the challenges, this method proved successful, enabling us to post images to the main feed and stories to their appropriate categories on Instagram.

![IG](https://raw.githubusercontent.com/ralphmartynward/ironhack_09_final-project/main/images/instagrampurr.png)

In essence, The Purrposterous is a blend of constant content, strategic AI usage, robust classification models, and branding, all presented in a light-hearted manner. 