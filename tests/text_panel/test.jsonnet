local grafana = import 'grafonnet/grafana.libsonnet';
local textPanel = grafana.textPanel;

{
  basic: textPanel.new(span=12),
  advanced: textPanel.new(
    title='foo',
    datasource='$PROMETHEUS',
    description='description',
    span=5,
    mode='html',
    content='coocoo',
    transparent=true,
    repeat='my-variable',
    repeatDirection='v',
    repeatMaxPerRow=12,
  ),
  repeat: textPanel.new(span=12, repeat='my-variable'),
}
