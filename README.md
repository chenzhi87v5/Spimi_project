Spimi-parser
============

A parser that crawls specific websites and their links and retrieves needed information.


  My Spimi parser was built with the following design. The Tokenizer is a class that takes a string (which would be the line that was read from the file), and splits it into tokens, and applys any sort of tokenization techniques that we had learned in this course (such as no numbers, no stop words …) . After the Tokenizer finishes tokenizing the string, it returns a vector of strings, which the SpimiParser will store to the dictionary (or increment frequency if it already exits). When the size of the dictionary exceeds the size allowed, the dictionary gets dumped to a file. This is where the SpimiMerger comes in, his job is to parse the blocks and merge them alphabetically into segments of files. The final merger will merge all these segments by simply reading and writing to the final index file. The Block Reader helps the SpimiMerger by analyzing the lines that were read from the blocks.
	The things that I decided to implement in my tokenizer were the following. First, I was ignoring anything outside the <BODY></BODY> tags, because the user will usually query for things within the body, so by removing the things that are outside the body, we decrease the number of ill-informed hits. Also I ignored anything that does not start with an alphabetical letter, since the user will usually be looking for text.  We also removed stop words since they are usually found in every document, thus creating distortions in the resulting postings. 
	I have learned so much about information retrieval by doing this project. First I learned how to create an inverted index based on a selection of documents. I also learned how to use this inverted index to provide results for queries. Also by implementing Spimi, I not only learned about the Spimi algorithm itself and how it helps reduce memory load, but I also learned about memory management in general and how to avoid using too much ram. 



============
