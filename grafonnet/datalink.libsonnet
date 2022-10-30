{
  /**
   * @name datalink.new
   */
  new(
    targetBlank=true,
    title=null,
    url=null,
  ):: {
    [if targetBlank != null then 'targetBlank']: targetBlank,
    [if title != null then 'title']: title,
    [if url != null then 'url']: url,

  },
}
