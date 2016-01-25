[azukiapp/dig](http://images.azk.io/#/dig)
==================

Docker image (based in alpine) for test dns configurations, include: `dig`, `nslookup` and `nsupdate` tools.

###### Versions:

<versions>
- [`latest`](https://github.com/azukiapp/docker-dig/blob/master/Dockerfile)
- [`0.2.0`](https://github.com/azukiapp/docker-dig/blob/0.2.0/Dockerfile)
</versions>

### Usage with `azk`

```sh
$ azk shell --image=azukiapp/dig -- dig @dev.azk.io foo.dev.azk.io
$ azk shell --image=azukiapp/dig -- dig google.com
```

###### Image content:

  - [bash][bash]
  - [drill][drill] (alpine alternative to dig)
  - dig
  - nslookup
  - nsupdate

## License

Azuki Dockerfiles distributed under the [Apache License][license].

[license]: https://github.com/azukiapp/docker-dig/blob/master/LICENSE

[bash]: https://www.gnu.org/software/bash/
[drill]: http://wiki.alpinelinux.org/wiki/Configure_Networking#drill
