---
title: imapfilter
---

# imapfilter

I use `imapfilter` to sort my email.

`imapfilter` is configured using lua, which both gives you infinite
possibilities, but also no premade solutions.

Here's a couple I came up with.

## Sort GitHub projects into folders

GitHub sends all notifications from `notifications@github.com`,
but encodes the project name in the `TO` header.

So we fetch the `TO` field of every email, parse out the project name.

For some reason, I have at least one project where the project name is quoted,
so we remove the quotes.

For perfomance reason, we then collect all emails by project and move them
to a `organisation/projectname` folder struture.

```lua
function filter_github_email(box, target_account)
  messages = box:contain_from("notifications@github.com")

  actions = {}
  for _, message in ipairs(messages) do
    mailbox, uid = table.unpack(message)
    to = box[uid]:fetch_field("TO")
    project = string.match(to, 'To: ([%S]+)')
    project_scrubbed = project:gsub('"', '')
    target_mailbox = "GitHub/" .. project_scrubbed

    if not actions[target_mailbox] then
      actions[target_mailbox] = Set {}
    end
    table.insert(actions[target_mailbox], message)
  end

  for mailbox, msgs in pairs(actions) do
    msgs:move_messages(target_account[mailbox])
  end
end

filter_github_email(account.INBOX, account)
```
