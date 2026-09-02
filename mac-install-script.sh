V=0.159.0
curl --proto '=https' --tlsv1.2 -fOL \
  "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v${V}/otelcol-contrib_${V}_darwin_arm64.tar.gz"
tar -xzf "otelcol-contrib_${V}_darwin_arm64.tar.gz" otelcol-contrib
sudo mv otelcol-contrib /usr/local/bin/
xattr -d com.apple.quarantine /usr/local/bin/otelcol-contrib 2>/dev/null || true
