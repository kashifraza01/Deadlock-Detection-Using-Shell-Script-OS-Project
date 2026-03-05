# Deadlock Detection Using Shell Script 🐚

![Shell Script](https://img.shields.io/badge/Language-Bash-orange) ![License](https://img.shields.io/badge/License-MIT-green)

A simple **deadlock detection** tool implemented in **Bash**. The script detects cycles in **wait-for graphs** of processes to determine if a deadlock exists in an operating system simulation.

---

## 🔹 Features

* Detects **deadlocks** by checking cycles in wait-for graphs
* Supports multiple processes and relations
* Prints **cycle path** when a deadlock is found
* Simple and lightweight **Bash implementation**
* Educational tool for **Operating Systems concepts**

---

## 🖥️ How It Works

1. Users enter the number of **wait-for relations**.
2. Input each relation in the format:

   ```
   P1 P2
   ```

   where `P1` is waiting for `P2`.
3. Script builds a **graph** and detects cycles using **DFS**.
4. If a cycle is found → deadlock detected. Otherwise → no deadlock.

---

## ⚡ Usage

1. Clone the repository:

```bash
git clone https://github.com/kashifraza01/Deadlock-Detection-Using-Shell-Script-OS-Project.git
cd Deadlock-Detection-Using-Shell-Script-OS-Project
```

2. Make the script executable:

```bash
chmod +x detect_deadlock.sh
```

3. Run the script:

```bash
./detect_deadlock.sh
```

4. Enter the number of relations and the processes as prompted.

---

## 🖼️ Example Outputs

**Output 1: Deadlock Detected**
![Output 1](./Output%201.PNG)

**Output 2: No Deadlock Detected**
![Output 2](./Output%202.PNG)

---

## 🛠️ Files

* `detect_deadlock.sh` → Main shell script
* `Output 1.PNG` → Sample output with deadlock
* `Output 2.PNG` → Sample output without deadlock
* `README.md` → Project description

---

## 📚 Concepts Covered

* Deadlock in Operating Systems
* Wait-for Graphs
* Cycle Detection in Graphs (DFS)
* Bash Scripting
