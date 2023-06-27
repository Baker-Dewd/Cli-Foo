#!/bin/bash
pyenv versions | grep '*' | awk '{print $2}'
