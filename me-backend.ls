require! <[fs]>

app = {}

app.rmdir-sync = (path) !->
  if fs.exists-sync path
    fs.readdir-sync path .for-each (file, index) !->
      cur-path = path + \/ + file
      if fs.lstat-sync cur-path .is-directory!
        app.rmdir-sync cur-path
      else
        fs.unlink-sync cur-path
    fs.rmdir-sync path

module.exports = app
