# Windows Startup Folder Check Script

## Overview

This repository contains a simple Windows batch script that runs automatically at system startup (during user login) and performs the following tasks:

1. Waits for 20 seconds after the user logs in.
2. Checks if a folder named `imhere` exists on the desktop.
3. If the folder is not found, the system will immediately shut down.
4. If the folder exists, the script exits without any action.

This script is useful for scenarios where a specific folder must be present for the system to continue running.

## How It Works

- **Folder Check:** The script looks for a folder named `imhere` on the current user’s desktop.
- **Shutdown Command:** If the folder is not found, the system shuts down immediately without any warning.

### Script Workflow

1. The script waits for 20 seconds (`timeout /t 20`).
2. It checks for the folder at `C:\Users\<your-username>\Desktop\imhere`.
3. If the folder is not found, it executes a shutdown command (`shutdown /s /t 0`).
4. If the folder exists, the script displays a message and allows the system to continue running.

## Getting Started

### Prerequisites

- A Windows machine.
- Basic understanding of batch scripting (optional).

### Installation

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/your-username/your-repo-name.git
    ```

2. Open the `check_imhere.bat` file in a text editor and verify the code.

3. Place the `check_imhere.bat` script into the Windows Startup folder so it runs automatically when the user logs in:

    - Press `Win + R` and type `shell:startup`, then hit Enter.
    - Copy the `check_imhere.bat` file into this folder.

### Usage

1. Make sure you have a folder named `imhere` on your desktop. If this folder is not present, the script will trigger a system shutdown.
2. After logging in, the system will wait 20 seconds and check for the folder.

### Example Output

- If the folder exists:
    ```
    Waiting for 20 seconds before checking the folder...
    The folder "imhere" exists. System will continue running.
    ```

- If the folder does not exist:
    ```
    Waiting for 20 seconds before checking the folder...
    The folder "imhere" does not exist on the Desktop.
    (The system shuts down immediately.)
    ```

## Customization

You can easily modify the script to change the folder name, location, or wait time. For example:

- To change the folder name, modify the `set "folderPath=%USERPROFILE%\Desktop\imhere"` line.
- To change the wait time, adjust the value in `timeout /t 20 /nobreak`.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Feel free to submit pull requests if you have ideas for improvements or additional features!

## Contact

If you encounter any issues or have any questions, please open an issue in this repository or reach out via [your-email@example.com](mailto:your-email@example.com).
