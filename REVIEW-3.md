# Review 3 — Checked Release | Angelo Bustamante

[Live portfolio](https://angelobustamanteselfhost.com/portfolio/) ·
[Academic Assistant](https://angelobustamanteselfhost.com/portfolio/#assistant) ·
[Exact release tested](https://github.com/ab2737/angelo-selfhost-cicd/commit/a7d73bf82d3df4fa6ce359c8a0ad0f3b9338f07d) ·
[Setup and restart instructions](https://angelobustamanteselfhost.com/portfolio/#setup)

## 1. Portfolio and career research

My research on Gellert Global Group’s Sales Planning Analyst role influenced my
planned finance project. I chose to focus on how a change in freight cost affects
margin per unit. The portfolio labels the finance workbook as planned.

On QA, I opened the individual Academic Assistant case study and the group
content-system case study. I used the keyboard to reach and open their project
and evidence links and the GitHub contact link. I also opened the portfolio on
my phone, read both case studies, and tested their links.

[Individual case study](https://angelobustamanteselfhost.com/portfolio/#individual-case-study) ·
[Group case study](https://angelobustamanteselfhost.com/portfolio/#group-case-study) ·
[Contact](https://angelobustamanteselfhost.com/portfolio/#contact)

## 2. RAG app and technical research

The assistant saves three imported Registrar notes in browser storage and
rebuilds its search index when the page opens. The saved import is specific
to the browser profile and site address.

| Environment | What I checked | Result |
| --- | --- | --- |
| Local — Windows | Stopped and restarted the local server, then reopened the app in the same browser. | All three notes were restored. Before reimporting, I asked where to order an official transcript and received REG-1. |
| Hosted QA — browser | Ran the six retrieval and citation checks against the imported notes. | Six of six passed. Four supported questions returned their expected notes. The scholarship GPA and transcript fee questions returned the insufficient-information response. |
| CI — GitHub Actions | Checked the workflow for the released version. | Website validation, Docker image build and test, image push, and deployment passed. |
| Hosted production | Reopened the production app and asked the transcript question before importing again. | The page displayed “3 chunks indexed. Restored from this browser.” The answer named the National Student Clearinghouse and linked to REG-1. |

[Production CI run](https://github.com/ab2737/angelo-selfhost-cicd/actions/runs/45774162055) ·
[Source and import record](https://angelobustamanteselfhost.com/portfolio/#sources)

### Manual checks

- **Repeat import:** Before I clicked Import Registrar notes again, the app displayed 3 chunks indexed. After the second import, the count stayed at 3. The repeat import did not add duplicates.
- **Citation verification:** I opened the NJIT links and compared each note with its source. REG-1 matched the instructions for ordering an official transcript through the National Student Clearinghouse. REG-2 matched the transcript contact email, `transcripts@njit.edu`. REG-3 linked to NJIT’s Academic Calendars page, where students can find semester dates.
- **Permissions:** I opened the cited NJIT pages while signed out. The app imported only the three bundled Registrar summaries. I could import them and ask questions without logging in or providing private student information.

### Screenshot evidence

<img width="1887" height="712" alt="production-restart" src="https://github.com/user-attachments/assets/d56b2f0c-0235-4b5b-9f61-acda13f26afc" />
<img width="1877" height="891" alt="qa-browser-restart" src="https://github.com/user-attachments/assets/85d54d09-94e5-48ac-a6b9-6c12d2073a09" />
<img width="1420" height="837" alt="qa-retrieval-checks" src="https://github.com/user-attachments/assets/0ef26a18-1e91-49f5-8ed8-77587cccb161" />


