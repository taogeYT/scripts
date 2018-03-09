import json
import os
sublime_session_path = r"C:\Users\Administrator\AppData\Roaming\Sublime Text 3\Local\Session.sublime_session"
with open(sublime_session_path, encoding='utf-8') as f:
    raw = json.load(f)

files = []
for i in raw['workspaces']['recent_workspaces']:
    if os.path.exists(i[2:]):
        files.append(i)
    else:
        print('remove object:', i)
raw['workspaces']['recent_workspaces'] = files
with open(sublime_session_path, 'w', encoding='utf-8') as f:
    json.dump(raw, f, indent='\t', ensure_ascii=False)
