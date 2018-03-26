# Be sure to restart your server when you modify this file.

# Define an application-wide content security policy
# For further information see the following documentation
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy

Rails.application.config.content_security_policy do |policy|
  # everything from current hostname allows (HTTPS only)
  policy.default_src :self, :https
  # fonts and images can also be loaded via data-uris
  policy.font_src    :self, :https, :data
  # images can also come from our ActiveStorage provider
  policy.img_src     :self, :https, :data, 'bucket.s3.amazonaws.com'
  # no object tags (Java applets, ActiveX, PDF, Flash, etc.)
  policy.object_src  :none
  # valid sources for JS
  policy.script_src  :self, :https
  # CSS including inline styles
  policy.style_src   :self, :https, :unsafe_inline

  # Specify URI for violation reports
  # policy.report_uri "/csp-violation-report-endpoint"
end

# Report CSP violations to a specified URI
# For further information see the following documentation:
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy-Report-Only
# Rails.application.config.content_security_policy_report_only = true
