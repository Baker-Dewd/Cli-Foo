#!/usr/bin/bash
killit=$(ps aux | grep 'chromium' | head -1 | gawk '{print $2}') ; echo $killit ; kill -9 $killit
