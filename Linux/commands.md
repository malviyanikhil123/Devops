# 🧭 Linux Basic Commands — Complete Guide

A quick reference for essential Linux commands — perfect for DevOps, WSL, or daily terminal work.

---

## 📁 1. `ls` — List Files and Directories

```bash
ls
ls -l        # detailed list (permissions, size, owner)
ls -a        # show hidden files (starting with .)
ls -lh       # human-readable sizes
```

**Example:**
```bash
ls -lah /home/nikhil
```

---

## 📂 2. `cd` — Change Directory

```bash
cd /path/to/folder
cd ~         # go to home directory
cd ..        # go up one directory
cd -         # go to previous directory
```

---

## 📍 3. `pwd` — Print Working Directory

Displays your current location in the filesystem.

```bash
pwd
```

**Output Example:**
```
/home/nikhil/Devops
```

---

## 🏗️ 4. `mkdir` — Make Directory

```bash
mkdir test
mkdir -p projects/app/config  # create nested directories
```

`-p` → creates parent directories if they don’t exist.

---

## 🧹 5. `rm` / `rmdir` — Remove Files or Directories

### `rm` — remove files

```bash
rm file.txt
rm -f file.txt          # force delete
rm -r folder/           # delete folder recursively
rm -rf folder/          # delete folder without confirmation
```

### `rmdir` — remove empty directories only

```bash
rmdir empty_folder
```

⚠️ **Be careful:** `rm -rf /` deletes everything!

---

## 📖 6. `cat` / `zcat` — View or Combine Files

### `cat`
```bash
cat file.txt
cat file1.txt file2.txt > merged.txt
```

### `zcat`
Read `.gz` compressed files without extracting.

```bash
zcat log.gz
```

---

## 🧾 7. `touch` — Create or Update a File

```bash
touch file.txt
touch file1.txt file2.txt
```

Creates a new file or updates timestamp if it exists.

---

## 📑 8. `head` — Show First Lines of a File

```bash
head file.txt
head -n 20 file.txt     # show first 20 lines
```

---

## 📜 9. `tail` / `tail -f` — Show Last Lines

### `tail`
```bash
tail file.txt
tail -n 15 file.txt     # show last 15 lines
```

### `tail -f`
Follow file changes live (useful for logs).
```bash
tail -f /var/log/syslog
```
Press **Ctrl + C** to stop.

---

## 📖 10. `less` / `more` — Scroll Through a File

### `less`
```bash
less file.txt
```

Navigation:
- ↑ / ↓ — scroll
- `/word` — search
- `q` — quit

### `more`
```bash
more file.txt
```

Simpler version of `less`.

---

## 📦 11. `cp` — Copy Files or Folders

```bash
cp file1.txt file2.txt
cp -r folder1/ folder2/
```

Flags:
- `-r` → recursive
- `-v` → verbose

---

## 🔄 12. `mv` — Move or Rename Files

```bash
mv old.txt new.txt       # rename
mv file.txt /home/nikhil # move file
mv folder1 folder2/      # move folder
```

---

## 🔢 13. `wc` — Word Count

Shows number of **lines**, **words**, and **characters**.

```bash
wc file.txt
wc -l file.txt    # lines only
wc -w file.txt    # words only
wc -c file.txt    # characters only
```

---

## 🔗 14. Links — Hard Link vs Soft Link

### 🧱 Hard Link
Points directly to the same data on disk.
```bash
ln original.txt hardlink.txt
```

If original is deleted → data remains accessible.

### 🧶 Soft Link (Symbolic Link)
Acts like a shortcut to another file.
```bash
ln -s /path/to/original.txt softlink.txt
```

If original is deleted → link breaks.

**Check links:**
```bash
ls -l
```
Output:
```
softlink.txt -> /path/to/original.txt
```

---

## ⚙️ Bonus Tip

Combine commands:
```bash
mkdir logs && cd logs && touch app.log
```

→ Creates a folder, enters it, and creates a file in one go.

---

✅ **Quick Summary Table**

| Command | Description | Common Flags |
|----------|--------------|---------------|
| `ls` | List files | `-l`, `-a`, `-h` |
| `cd` | Change directory | `..`, `~`, `-` |
| `pwd` | Show current directory | — |
| `mkdir` | Create directories | `-p` |
| `rm` | Remove files/folders | `-r`, `-f` |
| `cat` | Show file contents | — |
| `touch` | Create empty file | — |
| `head` / `tail` | Show top/bottom lines | `-n`, `-f` |
| `less` / `more` | Paginate file | — |
| `cp` | Copy files | `-r`, `-v` |
| `mv` | Move/Rename files | — |
| `wc` | Word/line count | `-l`, `-w`, `-c` |
| `ln` | Create links | `-s` for soft link |

---

### 💡 Author
Created by **Nikhil Malviya**  
_A concise and practical Linux command reference for everyday use._
