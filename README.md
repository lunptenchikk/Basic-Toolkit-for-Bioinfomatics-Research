# Basic-Toolkit-for-Bioinfomatics-Research
Repository for BT4BR classes

**Author** : Diemid Rybchenko, **Date** : 26.11.2025
**Description** : Second-year Bioinformatics student at Jagiellonian University
**Interests** : ML/AI engineering, Number Theory, Finance


## About This Repository
This repository was created for BT4BR HW classes on 26.11.2025

# Summary of Git Commands

## 1. Initialization
- `git init` – creating new local repo  
- `git clone URL` – "downloading" repo from github

## 2. Checking Repository State
- `git status` – we can see actual status
- `git log` – history of commits

## 3. Adding & Committing
- `git add filename` – adding file to stage(place, where we keep current version)  
- `git add .` – adding all  
- `git commit -m "Message"` – "pushing" changes

## 4. Branching
- `git branch` – list of branches(gałęzi)  
- `git branch NAME` – new branch 
- `git checkout NAME` – going to concrete branch  
- `git switch NAME` – new variant of changing branches  
- `git merge NAME` – merging branches 

## 5. Remote Commands
- `git remote -v` – checking combined  
- `git push origin main` – pushing edits on github  
- `git pull` – pulling edits from github  

## 6. Undoing Changes
- `git restore FILE` – backpropagation(krok wstecz) (without stage)
- `git reset HEAD FILE` – backpropagation with stage  
- `git revert COMMIT` – creates a new commit that applies the opposite changes to the commit, that we have picked
  
# Key Concepts
**Repository** – place, where our code exists  
**Commit** – project snapshot  
**Branch** – a separate line of development with its own commits
**Merge** – merge of branches(lines)  
**Remote** – online repository(such as github)   
