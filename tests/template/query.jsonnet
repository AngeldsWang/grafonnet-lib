local grafana = import 'grafonnet/grafana.libsonnet';
local template = grafana.template;

{
  basic: template.new('host', 'elastic', 'test-query'),
  advanced: template.new(
    'newhost',
    'newelastic',
    'newtest-query',
    label='node',
    allValues='$ALL',
    tagValuesQuery='tvquery',
    regex='([a-z+])',
    current='bar',
    hide='value',
    includeAll=true,
    sort=2,
    multi=true,
  ),
  refresh: [
    template.new('host', 'elastic', 'test-never-0', refresh='never'),
    template.new('host', 'elastic', 'test-load-1', refresh='load'),
    template.new('host', 'elastic', 'test-time-2', refresh='time'),
    template.new('host', 'elastic', 'test-5-5', refresh=5),
  ],
  current: template.new('host', 'elastic', 'test-never-0', current='all'),
  // query version
  basic_query: template.query('host', 'elastic', 'test-query'),
  advanced_query: template.query(
    'newhost',
    'newelastic',
    'newtest-query',
    label='node',
    allValues='$ALL',
    tagValuesQuery='tvquery',
    regex='([a-z+])',
    current='bar',
    hide='value',
    includeAll=true,
    sort=2,
    multi=true,
  ),
  refresh_query: [
    template.query('host', 'elastic', 'test-never-0', refresh='never'),
    template.query('host', 'elastic', 'test-load-1', refresh='load'),
    template.query('host', 'elastic', 'test-time-2', refresh='time'),
    template.query('host', 'elastic', 'test-5-5', refresh=5),
  ],
  current_query: template.query('host', 'elastic', 'test-never-0', current='all'),
}
