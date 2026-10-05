## GlowPen Release Process

Follow these steps to build, package, and release a new version of GlowPen to GitHub.

---

### 1. Create a New Version Tag

1. **Update the Changelog**:
   Summarize recent features and fixes concisely in `CHANGELOG.md`.

2. **Bump Version**:
   Use `npm version` to bump the version in `package.json`, which automatically commits and creates a local Git tag:
   ```bash
   npm version [major|minor|patch]
   # Example: npm version patch
   ```

3. **Push to GitHub**:
   Push the commit and the tags to your remote repository:
   ```bash
   git push origin main --follow-tags
   ```

---

### 2. Verify Release Drafts
* Check the **Actions** tab on your GitHub repository to ensure the auto-release or build workflows run successfully.
* Verify the Tag is created successfully in your repository's Releases section.

---

### 3. Build & Publish Locally

If you need to manually package and publish drafts:

1. **Install Dependencies**:
   ```bash
   npm install
   ```

2. **Compile and Package**:
   ```bash
   npm run make
   ```

3. **Publish to GitHub Releases**:
   Provide your GitHub Personal Access Token (PAT) with `repo` permissions to publish the compiled assets:
   ```bash
   # On Windows (PowerShell)
   $env:GH_TOKEN="your_github_token"; npm run publish

   # On macOS/Linux
   GH_TOKEN=your_github_token npm run publish
   ```
   *Create tokens at: [github.com/settings/tokens](https://github.com/settings/tokens)*

---

### 4. Rollback and Troubleshooting

* **Check Tags**:
   ```bash
   git tag
   ```

* **Delete Local Tag**:
   ```bash
   git tag -d v0.0.X
   ```

* **Delete Remote Tag**:
   ```bash
   git push origin --delete v0.0.X
   ```
