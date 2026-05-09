FROM python:3.10-slim
    WORKDIR /app
    COPY requirements.txt .
    RUN pip install --no-cache-dir -r requirements.txt
    COPY . .
    EXPOSE 8000
    CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
    ```
4.  Scroll down and click **"Commit changes"**.

---

### Step 3: Verify the Repository State
Your `satya-core` repository should now look like this in the file list:
*   `.gitignore`
*   `Dockerfile`
*   `README.md`
*   `main.py`
*   `requirements.txt`

---

### Step 4: The Next Repo (Pramana-API)
Now that the "Brain" is committed, we need the "Nervous System"—the API that actually talks to Indian Government databases.

1.  Click on the **SatyaLens-India** organization name at the top left to go back to the Org home.
2.  Click **"New"** to create a second repository.
3.  Name it: `pramana-api`
4.  Set to **Public**, add a **README**, and choose **Node** for the `.gitignore`.
5.  Click **"Create repository"**.

**Tell me when `pramana-api` is created. We will then inject the logic that connects SatyaLens to PIB and SEBI data rails.**
