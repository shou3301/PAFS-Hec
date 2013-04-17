## Provenance-aware Distributed Filesystem

__Author:__ Chen Shou (cshou@hawk.iit.edu)

### Introduction

This project is meant to enble data provenance collection in a distributed filesystem. In short, we added a provenance collection module within _[FusionFS](http://datasys.cs.iit.edu/projects/FusionFS/index.html)_.

### Usage

The source code of this branch is for running the system on IIT Hec cluster.

In order to use this provenance collection module in other environment, the first thing is to [make _FusionFS_ work correctly](https://github.com/dongfangzhao/fusionfs-hec).

The provenance module exists in _FusionFS/fusionFS/src/provenance_. Run _make_ command to compile the module. And then add the library to the _Makefile_ of _FusionFS_.

In the current version, we only collect provenance on three opertaions: read, write and create. Details please refer to the file _fusionfs.c_.
