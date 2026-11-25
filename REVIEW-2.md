# Review 2 Build Record — Angelo Bustamante

[Hosted portfolio and Academic Assistant](https://angelobustamanteselfhost.com/portfolio/) · [Project repository](https://github.com/ab2737/angelo-selfhost-cicd) · [Portfolio and app source code](https://github.com/ab2737/angelo-selfhost-cicd/blob/main/portfolio/index.html)

## 1. Individual portfolio + career research

### Changed

I built a portfolio foundation with an introduction, my target career direction, navigation, and two project entries. My career research focused on the Sales Planning Analyst role at Gellert Global Group. The role involves estimating import costs and analyzing margins. That finding shaped which project I put first and what I want it to demonstrate.

The first project is a **planned finished-goods finance model**. My goal is to show how a change in freight cost affects the profit margin on one unit. The second project is my **working Academic Assistant prototype**, which visitors can try on the portfolio.

[Original career research and planning record](https://github.com/ab2737/individual-portfolio-rag-app) · [Portfolio project section](https://angelobustamanteselfhost.com/portfolio/#projects)

### Checked

I opened the portfolio on my production domain and confirmed that the page loaded. The projects section identifies the finance model as planned and gives visitors access to the Academic Assistant. This makes it clear which project they can try today.

### Next

I’ll build the first version of the finance workbook and compare two freight-cost scenarios. Then I’ll add a screenshot and a short explanation of how the change affects unit margin.

## 2. Individual RAG app + technical research

### Changed

I added an Academic Assistant that lets visitors import three bundled notes summarizing public NJIT Registrar information. Clicking **Import Registrar notes** indexes the notes for the current browser session. A visitor can then ask a question, read the matching note, and follow its citation to NJIT.

Each note covers one topic and has an ID, text, and source URL. The app represents each note using its unique words and uses cosine similarity to rank matches. It also checks how many words from the question matched. When there is enough overlap, the app returns the note’s text with its source. When there is too little overlap, it tells the visitor that the notes do not provide enough information.

My original plan considered ChromaDB, learned embeddings, and language-model generation. I chose browser-based retrieval for this build because it runs on my existing static Nginx site and lets visitors inspect exactly which note supplied an answer. The tradeoff is that a question can use different wording and miss a relevant note. The import uses three bundled summaries, and refreshing the page clears the session index.

[Try the Academic Assistant](https://angelobustamanteselfhost.com/portfolio/#assistant) · [Source and import record](https://angelobustamanteselfhost.com/portfolio/#sources) · [Sample indexed chunk](https://angelobustamanteselfhost.com/portfolio/#representation) · [Query and answer trace](https://angelobustamanteselfhost.com/portfolio/#trace)

### Checked

I ran the six built-in retrieval and citation checks on QA. **All six passed.**

| Test question | Expected result | QA result |
| --- | --- | --- |
| Where can I order an official transcript? | REG-1, the transcript ordering note | Pass |
| Where can I get my academic record? | REG-1, using different wording | Pass |
| Who can I email about a transcript? | REG-2, the transcript contact note | Pass |
| Where can I find semester dates? | REG-3, the academic calendar note | Pass |
| What GPA earns a scholarship? | The app says it has insufficient information | Pass |
| What is the transcript fee? | The app says it has insufficient information | Pass |

The transcript-fee test matters because the notes mention transcripts but never give a price. For the four supported questions, the checks compare the returned note ID, answer text, and source URL with the expected values. For the two unsupported questions, they check that the app returns no citation. These tests use a prebuilt index and cover only the six questions listed above.

[View the retrieval and citation checks](https://angelobustamanteselfhost.com/portfolio/#checks)

### My contribution and help received

I used my career research to choose the focus of the planned finance case study. I verified that the production portfolio loaded and ran the six checks on QA. I used ChatGPT to help prepare the build files, guide me through the GitHub steps, and organize this review record.

### Next

I’ll test five new questions using wording outside the built-in examples. For each one, I’ll record the expected source, the actual answer and citation, and whether the app should have declined to answer. If I find a mismatch, I’ll document what I changed and rerun the same question.
