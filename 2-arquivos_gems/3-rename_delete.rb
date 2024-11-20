# 1- Rename file
#

# File.rename('data/file.txt', 'data/courses.txt')

# 2- Delete file
#

# File.delete('data/file.txt')
if File.exist?('data/file.txt')
  File.delete('data/file.txt')
end