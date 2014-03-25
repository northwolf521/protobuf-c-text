#!/bin/bash

./t/c-dump t/addressbook.data > t/addressbook.c.text
protoc-c --decode=tutorial.AddressBook t/addressbook.proto \
  < t/addressbook.data > t/addressbook.c++.text

cmp t/addressbook.c.text t/addressbook.c++.text
