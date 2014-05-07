#!/bin/bash

open http://localhost:9090
bundle exec foreman start -f Procfile.local
