## Setting Up an Oracle VirtualBox Home Lab for RHCSA Using Vagrant and Ansible

---

### Server Specifications

**Node 1 and Node 2:**

- **CPU:** 1
- **Memory:** 1 GB

---

### Prerequisites

1. **Operating System:** Tested on **Fedora 42**.
2. **Installations:**
   - VirtualBox (with Guest Additions)
   - Vagrant
   - Ansible

---

### Installation Steps

1. **Install VirtualBox and Guest Additions**

   - Ensure that VirtualBox and its guest additions are installed on your Fedora system.

2. **Install Vagrant**

   - Follow the official Vagrant installation guide to set it up.

3. **Install Ansible**

   - Run the following command in your terminal:

     ```bash
     python3 -m pip install ansible --user
     ```

4. **Clone the Repository**

   - Clone the repository required for your lab setup:

     ```bash
     git clone <repository-url>
     ```

5. **Prepare the Environment**

   - Make the `up.sh` script executable:

     ```bash
     chmod u+x up.sh
     ```

6. **Run the Setup Script**

   - Execute the script to start the environment setup

     ```bash
     ./up.sh [node_lists]
     ```


