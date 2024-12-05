require 'yaml'

# โหลดข้อมูลจาก _config.yml
config = YAML.load_file('_config.yml')

# สร้างเนื้อหาที่จะเพิ่มใน README.md
readme_content = <<-MD



- **Contact Email**: #{config['contact_email']}


### Social Media Links:
- [LinkedIn](#{config['social_media']['linkedin']})
- [GitHub](#{config['social_media']['github']})
MD

# เขียนเนื้อหาลงใน README.md
File.write('README.md', readme_content)
File.write('risk_transference.md', readme_content)
File.write('projectcs.md', readme_content)

puts "successfully!"
