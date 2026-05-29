require 'time'

Jekyll::Hooks.register [:pages, :documents], :post_init do |item|
  next unless item.path

  # Fetch the last commit date for the specific file
  git_date = `git log -1 --format="%cI" -- "#{item.path}"`.strip

  if !git_date.empty?
    # Convert the Git string into a native Ruby Time object
    item.data['last_modified_date'] = Time.parse(git_date)
  elsif File.exist?(item.path)
    # Fallback to file system modification time if uncommitted
    item.data['last_modified_date'] = File.mtime(item.path)
  end
end