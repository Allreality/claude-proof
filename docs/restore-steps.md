# Midnight Multi-Agent System Restore Steps

## Prerequisites
- Python 3.x installed
- Flask installed (`pip install flask`)
- Required Python dependencies (`pip install -r requirements.txt`)
- Access to the original codebase, templates, static files, and database

## Step 1: Prepare Project Files
1. Copy the following folders and files from backup to your working directory:
    - `/templates/`
    - `/static/`
    - Main Python app file (e.g., `app.py`)
    - Any agent modules/scripts
    - Database file(s) (e.g., `app.db` or `midnight.db`)
    - Configuration files (`.env`, `config.json`, etc.)

## Step 2: Install Dependencies
```bash
pip install -r requirements.txt
```

## Step 3: Verify Configuration
- Check and update `.env` or config files with correct paths, secrets, and environment variables.

## Step 4: Start the Flask Server
```bash
flask run
# or
python app.py
```

## Step 5: Test Dashboard Functionality
- Open `http://localhost:5000` in your browser.
- Confirm the dashboard loads and agents function as expected.

## Step 6: Troubleshooting
- If you see errors, check:
    - Flask console output for missing files or import errors.
    - Database connectivity issues.
    - Static file paths in HTML templates.

## Step 7: Secure and Backup
- Once confirmed working, perform a fresh backup of all files and database.
- Store backups in a secure location (encrypted external drive, cloud storage, etc.)

## Step 8: (Optional) Dockerize for Portability
- Create a `Dockerfile` and `docker-compose.yml` for easy redeployment.

---

## Notes
- If restoring to a new machine, ensure all Python dependencies are installed.
- If using API keys or secrets, update them as needed in your `.env` or config files.