import json
import pprint
with open('Bookmarks', encoding="utf-8") as f:
    rs = json.load(f)

# dict_keys(['bookmark_bar', 'other', 'synced'])

bookmarks = rs["roots"]['bookmark_bar']['children']

# pprint.pprint(bookmarks)

def gen_md(bookmarks, n=0):
    for mark in bookmarks:
        if "children" in mark:
            print("{}* {}".format('  '*n, mark['name']))
            gen_md(mark['children'], n+1)
        else:
            content = "{}* [{}]({})".format('  '*n, mark['name'], mark["url"])
            print(content)
            # break


gen_md(bookmarks)
