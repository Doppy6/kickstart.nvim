vim.filetype.add {
  filename = {
    ['playbook.yaml'] = 'yaml.ansible',
    ['playbook.yml'] = 'yaml.ansible',
  },
  pattern = {
    ['.*/playbook/.*.yaml'] = 'yaml.ansible',
    ['.*/playbook/.*.yml'] = 'yaml.ansible',
  },
}
