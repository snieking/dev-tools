#!/bin/bash

dotnet user-secrets set "ConnectionStrings:Netcompetence" "Server=localhost,1433;initial catalog={0}_netc;User Id=sa;Password=P@ssw0rd;"