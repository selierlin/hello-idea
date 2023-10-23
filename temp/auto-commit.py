from datetime import datetime
import subprocess

if __name__ == '__main__':
    # 打开原始文件和目标文件
    with open('temp.java', 'r') as file:
        lines = file.readlines()

    # 在第5行后添加新行
    strftime = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    lines.insert(5, f'        System.out.println("{strftime}");\n')

    # 将修改后的内容写回到原始文件
    with open('temp.java', 'w') as file:
        file.writelines(lines)

    # 执行 git commit
    commit_message = "Add new print statement"
    subprocess.run(["git", "commit", "-am", commit_message])
