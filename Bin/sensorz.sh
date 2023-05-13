#!/bin/bash

echo "Saphire 1"
sensors | grep 'amdgpu-pci-0100' -A5 | grep 'edge\|power1'
echo ""
echo "Saphire 2"
sensors | grep 'amdgpu-pci-0200' -A5 | grep 'edge\|power1'
echo ""
echo "RX 5700 XT"
sensors | grep 'amdgpu-pci-0600' -A11 | grep 'edge\|junction\|mem\|power1'
echo ""
echo "K10 GPU"
sensors | grep 'k10temp-pci-00c3' -A11 | grep 'edge\|junction\|mem\|power1\|temp'
